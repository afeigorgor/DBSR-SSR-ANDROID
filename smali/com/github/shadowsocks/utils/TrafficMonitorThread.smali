.class public Lcom/github/shadowsocks/utils/TrafficMonitorThread;
.super Ljava/lang/Thread;
.source "TrafficMonitorThread.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private volatile bitmap$0:Z

.field private final context:Landroid/content/Context;

.field private volatile isRunning:Z

.field private volatile serverSocket:Landroid/net/LocalServerSocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    const-string v0, "TrafficMonitorThread"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->isRunning:Z

    return-void
.end method

.method private PATH$lzycompute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->bitmap$0:Z

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "/stat_path"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->PATH:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->PATH:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public PATH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->PATH:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->PATH$lzycompute()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public closeServerSocket()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->serverSocket()Landroid/net/LocalServerSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->serverSocket()Landroid/net/LocalServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->serverSocket_$eq(Landroid/net/LocalServerSocket;)V

    .line 60
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final com$github$shadowsocks$utils$TrafficMonitorThread$$run$body$1(Landroid/net/LocalSocket;)V
    .locals 10
    .param p1, "socket$1"    # Landroid/net/LocalSocket;

    .prologue
    const/16 v5, 0x10

    .line 97
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 98
    .local v1, "input":Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 100
    .local v2, "output":Ljava/io/OutputStream;
    const/16 v4, 0x10

    new-array v0, v4, [B

    .line 101
    .local v0, "buffer":[B
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected traffic stat length"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "buffer":[B
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "output":Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    .line 112
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->TAG()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error when recv traffic stat"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    sget-object v5, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 118
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :goto_1
    return-void

    .line 102
    .restart local v0    # "buffer":[B
    .restart local v1    # "input":Ljava/io/InputStream;
    .restart local v2    # "output":Ljava/io/OutputStream;
    :cond_0
    :try_start_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 103
    .local v3, "stat":Ljava/nio/ByteBuffer;
    sget-object v4, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->update(JJ)V

    .line 105
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    .line 107
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 108
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v0    # "buffer":[B
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v2    # "output":Ljava/io/OutputStream;
    .end local v3    # "stat":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->isRunning:Z

    return v0
.end method

.method public isRunning_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->isRunning:Z

    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 77
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->PATH()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 80
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 81
    .local v0, "localSocket":Landroid/net/LocalSocket;
    new-instance v3, Landroid/net/LocalSocketAddress;

    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->PATH()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v3}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 82
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->serverSocket_$eq(Landroid/net/LocalServerSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 89
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 91
    .local v1, "pool":Ljava/util/concurrent/ExecutorService;
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    :try_start_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->serverSocket()Landroid/net/LocalServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    .line 95
    .local v2, "socket":Landroid/net/LocalSocket;
    new-instance v3, Lcom/github/shadowsocks/utils/TrafficMonitorThread$$anonfun$1;

    invoke-direct {v3, p0, v2}, Lcom/github/shadowsocks/utils/TrafficMonitorThread$$anonfun$1;-><init>(Lcom/github/shadowsocks/utils/TrafficMonitorThread;Landroid/net/LocalSocket;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 125
    .end local v2    # "socket":Landroid/net/LocalSocket;
    :catch_0
    move-exception v3

    .line 126
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->TAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error when accept socket"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 128
    .end local v0    # "localSocket":Landroid/net/LocalSocket;
    .end local v1    # "pool":Ljava/util/concurrent/ExecutorService;
    :cond_0
    :goto_1
    return-void

    .line 84
    :catch_1
    move-exception v3

    .line 85
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->TAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unable to bind"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public serverSocket()Landroid/net/LocalServerSocket;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->serverSocket:Landroid/net/LocalServerSocket;

    return-object v0
.end method

.method public serverSocket_$eq(Landroid/net/LocalServerSocket;)V
    .locals 0
    .param p1, "x$1"    # Landroid/net/LocalServerSocket;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->serverSocket:Landroid/net/LocalServerSocket;

    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->isRunning_$eq(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->closeServerSocket()V

    return-void
.end method
