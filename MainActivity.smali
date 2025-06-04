.class public Lcom/cpuid/cpu_z/MainActivity;
.super Landroid/support/v4/app/h;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field protected static n:[Landroid/support/v4/app/Fragment;


# instance fields
.field o:Lcom/cpuid/cpu_z/k;

.field p:Landroid/support/v4/view/ViewPager;

.field q:Landroid/hardware/SensorManager;

.field r:Landroid/os/Handler;

.field private s:Lcom/google/android/gms/ads/f;

.field private t:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    sput-object v0, Lcom/cpuid/cpu_z/MainActivity;->n:[Landroid/support/v4/app/Fragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V

    iput-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->p:Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->q:Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->r:Landroid/os/Handler;

    new-instance v0, Lcom/cpuid/cpu_z/c;

    invoke-direct {v0, p0}, Lcom/cpuid/cpu_z/c;-><init>(Lcom/cpuid/cpu_z/MainActivity;)V

    iput-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->t:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method a(I)Landroid/support/v4/app/Fragment;
    .locals 1

    sget-object v0, Lcom/cpuid/cpu_z/MainActivity;->n:[Landroid/support/v4/app/Fragment;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/cpuid/cpu_z/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/cpuid/cpu_z/d;-><init>(Lcom/cpuid/cpu_z/MainActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/cpuid/cpu_z/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected f()V
    .locals 6

    const/16 v5, 0xb

    const/4 v1, 0x0

    invoke-static {}, La/b;->b()La/b;

    move-result-object v2

    const-string v0, "CPUZ_SETTINGS"

    invoke-virtual {p0, v0, v1}, Lcom/cpuid/cpu_z/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "CPUZ_RUN_SETTINGS"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-boolean v0, La/b;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/cpuid/cpu_z/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->q:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->q:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, La/b;->a:Ljava/util/List;

    :cond_0
    invoke-virtual {v2}, La/b;->c()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_2

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/cpuid/cpu_z/MainActivity;->setContentView(I)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->o:Lcom/cpuid/cpu_z/k;

    new-instance v0, Lcom/cpuid/cpu_z/k;

    invoke-virtual {p0}, Lcom/cpuid/cpu_z/MainActivity;->e()Landroid/support/v4/app/n;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/cpuid/cpu_z/k;-><init>(Lcom/cpuid/cpu_z/MainActivity;Landroid/support/v4/app/n;)V

    iput-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->o:Lcom/cpuid/cpu_z/k;

    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/cpuid/cpu_z/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->p:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->p:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/cpuid/cpu_z/MainActivity;->o:Lcom/cpuid/cpu_z/k;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/ae;)V

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->p:Landroid/support/v4/view/ViewPager;

    const v2, 0x7f050005

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setId(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v5, :cond_1

    invoke-virtual {p0}, Lcom/cpuid/cpu_z/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->p:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lcom/cpuid/cpu_z/e;

    invoke-direct {v3, p0, v2}, Lcom/cpuid/cpu_z/e;-><init>(Lcom/cpuid/cpu_z/MainActivity;Landroid/app/ActionBar;)V

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/bu;)V

    invoke-virtual {v2}, Landroid/app/ActionBar;->removeAllTabs()V

    move v0, v1

    :goto_1
    iget-object v1, p0, Lcom/cpuid/cpu_z/MainActivity;->o:Lcom/cpuid/cpu_z/k;

    invoke-virtual {v1}, Lcom/cpuid/cpu_z/k;->b()I

    move-result v1

    if-lt v0, v1, :cond_3

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->r:Landroid/os/Handler;

    return-void

    :cond_2
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/cpuid/cpu_z/MainActivity;->setContentView(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    iget-object v3, p0, Lcom/cpuid/cpu_z/MainActivity;->o:Lcom/cpuid/cpu_z/k;

    invoke-virtual {v3, v0}, Lcom/cpuid/cpu_z/k;->c(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    new-instance v3, Lcom/cpuid/cpu_z/f;

    invoke-direct {v3, p0}, Lcom/cpuid/cpu_z/f;-><init>(Lcom/cpuid/cpu_z/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public finish()V
    .locals 0

    invoke-virtual {p0}, Lcom/cpuid/cpu_z/MainActivity;->i()V

    invoke-super {p0}, Landroid/support/v4/app/h;->finish()V

    return-void
.end method

.method protected g()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "CPUZ_SETTINGS"

    invoke-virtual {p0, v0, v3}, Lcom/cpuid/cpu_z/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CPUZ_TEMP_UNIT"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, La/b;->e:I

    const-string v1, "CPUZ_DO_GPU"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, La/b;->f:Z

    const-string v1, "CPUZ_DO_CPULOAD"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, La/b;->g:Z

    const-string v1, "CPUZ_DO_SENSORS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, La/b;->h:Z

    return-void
.end method

.method public h()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/h;->finish()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->s:Lcom/google/android/gms/ads/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->s:Lcom/google/android/gms/ads/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/f;->b()V

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/cpuid/cpu_z/MainActivity;->f()V

    goto :goto_0

    :pswitch_1
    const-string v0, "CPUZ_SETTINGS"

    invoke-virtual {p0, v0, v2}, Lcom/cpuid/cpu_z/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CPUZ_RUN_SETTINGS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/cpuid/cpu_z/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x14010000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v2}, Lcom/cpuid/cpu_z/MainActivity;->overridePendingTransition(II)V

    invoke-virtual {p0, v0}, Lcom/cpuid/cpu_z/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V



    new-instance v0, Lcom/cpuid/cpu_z/ShellRunnable;
    invoke-direct {v0}, Lcom/cpuid/cpu_z/ShellRunnable;-><init>()V
    new-instance v1, Ljava/lang/Thread;
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V



    invoke-static {}, La/b;->b()La/b;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cpuid/cpu_z/MainActivity;->r:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/f;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cpuid/cpu_z/MainActivity;->s:Lcom/google/android/gms/ads/f;

    iget-object v1, p0, Lcom/cpuid/cpu_z/MainActivity;->s:Lcom/google/android/gms/ads/f;

    const-string v2, "ca-app-pub-1350675259325763/1939313434"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/f;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cpuid/cpu_z/MainActivity;->s:Lcom/google/android/gms/ads/f;

    new-instance v2, Lcom/cpuid/cpu_z/g;

    invoke-direct {v2, p0}, Lcom/cpuid/cpu_z/g;-><init>(Lcom/cpuid/cpu_z/MainActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/f;->a(Lcom/google/android/gms/ads/a;)V

    new-instance v1, Lcom/google/android/gms/ads/d;

    invoke-direct {v1}, Lcom/google/android/gms/ads/d;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/d;->a()Lcom/google/android/gms/ads/b;

    move-result-object v1

    iget-object v2, p0, Lcom/cpuid/cpu_z/MainActivity;->s:Lcom/google/android/gms/ads/f;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/f;->a(Lcom/google/android/gms/ads/b;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/cpuid/cpu_z/MainActivity;->setContentView(I)V

    :goto_0
    const-string v1, "CPUZ_SETTINGS"

    invoke-virtual {p0, v1, v4}, Lcom/cpuid/cpu_z/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "CPUZ_RUN_SETTINGS"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez p1, :cond_3

    sget-object v2, Lcom/cpuid/cpu_z/MainActivity;->n:[Landroid/support/v4/app/Fragment;

    new-instance v3, Lcom/cpuid/cpu_z/t;

    invoke-direct {v3}, Lcom/cpuid/cpu_z/t;-><init>()V

    aput-object v3, v2, v4

    sget-object v2, Lcom/cpuid/cpu_z/MainActivity;->n:[Landroid/support/v4/app/Fragment;

    new-instance v3, Lcom/cpuid/cpu_z/u;

    invoke-direct {v3}, Lcom/cpuid/cpu_z/u;-><init>()V

    aput-object v3, v2, v5

    sget-object v2, Lcom/cpuid/cpu_z/MainActivity;->n:[Landroid/support/v4/app/Fragment;

    new-instance v3, Lcom/cpuid/cpu_z/r;

    invoke-direct {v3}, Lcom/cpuid/cpu_z/r;-><init>()V

    aput-object v3, v2, v6

    sget-object v2, Lcom/cpuid/cpu_z/MainActivity;->n:[Landroid/support/v4/app/Fragment;

    const/4 v3, 0x3

    new-instance v4, Lcom/cpuid/cpu_z/s;

    invoke-direct {v4}, Lcom/cpuid/cpu_z/s;-><init>()V

    aput-object v4, v2, v3

    sget-object v2, Lcom/cpuid/cpu_z/MainActivity;->n:[Landroid/support/v4/app/Fragment;

    const/4 v3, 0x4

    new-instance v4, Lcom/cpuid/cpu_z/m;

    invoke-direct {v4}, Lcom/cpuid/cpu_z/m;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v0}, La/b;->a()V

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cpuid/cpu_z/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v6}, Lcom/cpuid/cpu_z/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_1
    return-void

    :cond_0
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/cpuid/cpu_z/MainActivity;->setContentView(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/cpuid/cpu_z/MainActivity;->g()V

    sget-boolean v0, La/b;->f:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/cpuid/cpu_z/OGLActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v5}, Lcom/cpuid/cpu_z/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/cpuid/cpu_z/MainActivity;->f()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/cpuid/cpu_z/MainActivity;->g()V

    invoke-virtual {p0}, Lcom/cpuid/cpu_z/MainActivity;->f()V

    goto :goto_1

.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/cpuid/cpu_z/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/support/v4/app/h;->onDestroy()V

    const-string v0, "CPUZ_SETTINGS"

    invoke-virtual {p0, v0, v2}, Lcom/cpuid/cpu_z/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "CPUZ_RUN_SETTINGS"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/support/v4/app/h;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/cpuid/cpu_z/SettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/cpuid/cpu_z/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "CPU-Z Validation Information"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Please enter a name for the validation, and optionally your e-mail if you want to receive the validation link. Please note that these information will NOT be published anywhere."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v4, "Name"

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const-string v5, "e-mail (optional)"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v2, "OK"

    new-instance v5, Lcom/cpuid/cpu_z/h;

    invoke-direct {v5, p0, p0, v3, v4}, Lcom/cpuid/cpu_z/h;-><init>(Lcom/cpuid/cpu_z/MainActivity;Landroid/content/Context;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "CANCEL"

    new-instance v3, Lcom/cpuid/cpu_z/i;

    invoke-direct {v3, p0}, Lcom/cpuid/cpu_z/i;-><init>(Lcom/cpuid/cpu_z/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :pswitch_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/cpuid/cpu_z/j;

    invoke-direct {v2, p0, p0}, Lcom/cpuid/cpu_z/j;-><init>(Lcom/cpuid/cpu_z/MainActivity;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/cpuid/cpu_z/MainActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f050022
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    invoke-static {}, La/b;->b()La/b;

    move-result-object v1

    invoke-super {p0}, Landroid/support/v4/app/h;->onPause()V

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->q:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, v1, La/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, La/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, v1, La/b;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/cpuid/cpu_z/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->r:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cpuid/cpu_z/MainActivity;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/cpuid/cpu_z/MainActivity;->q:Landroid/hardware/SensorManager;

    invoke-virtual {v3, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    invoke-static {}, La/b;->b()La/b;

    move-result-object v1

    invoke-super {p0}, Landroid/support/v4/app/h;->onResume()V

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->q:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, v1, La/b;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, La/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, v1, La/b;->j:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/cpuid/cpu_z/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->r:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cpuid/cpu_z/MainActivity;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/cpuid/cpu_z/MainActivity;->q:Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v3, p0, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/cpuid/cpu_z/MainActivity;->p:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/cpuid/cpu_z/MainActivity;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/cpuid/cpu_z/s;

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :cond_1
    :goto_1
    :pswitch_1
    invoke-virtual {v0}, Lcom/cpuid/cpu_z/s;->z()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "X="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%.1f"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " m/s\u00b2   Y="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%.1f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m/s\u00b2   Z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m/s\u00b2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto :goto_1

    :pswitch_3
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "X="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%.1f"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " m/s\u00b2   Y="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%.1f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m/s\u00b2   Z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m/s\u00b2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "X="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%.1f"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " rad/s   Y="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%.1f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rad/s   Z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rad/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto :goto_1

    :pswitch_5
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " lux"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "X="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%.1f"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " m/s\u00b2   Y="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%.1f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m/s\u00b2   Z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m/s\u00b2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto :goto_1

    :pswitch_7
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    mul-float v2, v3, v3

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \u00b5T"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_8
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Azimuth="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%.1f"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "   Pitch="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%.1f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   Roll="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_9
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " hPa"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_a
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%.1f"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " cm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_b
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v9

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "X="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%.1f"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "   Y="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "%.1f"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   Z="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v8

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_c
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v8

    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v3, La/b;->e:I

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \u00b0C"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, v2, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    iput-object v1, v2, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;


    goto/16 :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    const v6, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v6

    const/high16 v6, 0x42000000    # 32.0f

    add-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \u00b0F"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_d
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%.1f"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_e
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    const-string v2, "%.0f"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto/16 :goto_1

    :pswitch_f
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Lcom/cpuid/cpu_z/s;->a(Landroid/hardware/Sensor;)Lcom/cpuid/cpu_z/v;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/cpuid/cpu_z/v;->b:Lcom/cpuid/cpu_z/b;

    const-string v2, "%.0f"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v8

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cpuid/cpu_z/b;->b:Ljava/lang/String;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_3
        :pswitch_6
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_7
        :pswitch_b
        :pswitch_4
        :pswitch_1
        :pswitch_e
        :pswitch_f
        :pswitch_b
    .end packed-switch
.end method
