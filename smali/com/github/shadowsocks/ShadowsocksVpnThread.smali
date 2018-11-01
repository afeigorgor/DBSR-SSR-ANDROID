.class public Lcom/github/shadowsocks/ShadowsocksVpnThread;
.super Ljava/lang/Thread;
.source "ShadowsocksVpnThread.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private volatile bitmap$0:Z

.field private volatile isRunning:Z

.field private volatile serverSocket:Landroid/net/LocalServerSocket;

.field private final vpnService:Lcom/github/shadowsocks/ShadowsocksVpnService;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksVpnService;)V
    .locals 1
    .param p1, "vpnService"    # Lcom/github/shadowsocks/ShadowsocksVpnService;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->vpnService:Lcom/github/shadowsocks/ShadowsocksVpnService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 56
    const-string v0, "ShadowsocksVpnService"

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->TAG:Ljava/lang/String;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->isRunning:Z

    return-void
.end method

.method private PATH$lzycompute()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->bitmap$0:Z

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->vpnService:Lcom/github/shadowsocks/ShadowsocksVpnService;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "/protect_path"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->PATH:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->PATH:Ljava/lang/String;

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
    .line 57
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->PATH:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->PATH$lzycompute()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public closeServerSocket()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->serverSocket()Landroid/net/LocalServerSocket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->serverSocket()Landroid/net/LocalServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->serverSocket_$eq(Landroid/net/LocalServerSocket;)V

    .line 63
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ShadowsocksVpnThread$$run$body$1(Landroid/net/LocalSocket;)V
    .locals 9
    .param p1, "socket$1"    # Landroid/net/LocalSocket;

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 102
    .local v3, "input":Ljava/io/InputStream;
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 104
    .local v4, "output":Ljava/io/OutputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 106
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v2

    .line 108
    .local v2, "fds":[Ljava/io/FileDescriptor;
    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object v0, v2

    check-cast v0, [Ljava/lang/Object;

    move-object v6, v0

    invoke-virtual {v7, v6}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v6

    invoke-interface {v6}, Lscala/collection/mutable/ArrayOps;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    sget-object v6, Lcom/github/shadowsocks/ShadowsocksVpnThread$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksVpnThread$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/ShadowsocksVpnThread$;->getInt()Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    .line 110
    .local v1, "fd":I
    iget-object v6, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->vpnService:Lcom/github/shadowsocks/ShadowsocksVpnService;

    invoke-virtual {v6, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService;->protect(I)Z

    move-result v5

    .line 113
    .local v5, "ret":Z
    invoke-static {v1}, Lcom/github/shadowsocks/System;->jniclose(I)V

    .line 115
    if-eqz v5, :cond_1

    .line 116
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write(I)V

    .line 122
    .end local v1    # "fd":I
    .end local v5    # "ret":Z
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 123
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v2    # "fds":[Ljava/io/FileDescriptor;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :goto_2
    return-void

    .line 118
    .restart local v1    # "fd":I
    .restart local v2    # "fds":[Ljava/io/FileDescriptor;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    .restart local v5    # "ret":Z
    :cond_1
    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {v4, v6}, Ljava/io/OutputStream;->write(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 126
    .end local v1    # "fd":I
    .end local v2    # "fds":[Ljava/io/FileDescriptor;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    .end local v5    # "ret":Z
    :catch_0
    move-exception v6

    .line 127
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->TAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Error when protect socket"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    sget-object v7, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v7}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_2
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->isRunning:Z

    return v0
.end method

.method public isRunning_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->isRunning:Z

    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 80
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->PATH()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 83
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    .line 84
    .local v0, "localSocket":Landroid/net/LocalSocket;
    new-instance v3, Landroid/net/LocalSocketAddress;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->PATH()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v4, v5}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v3}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 85
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->serverSocket_$eq(Landroid/net/LocalServerSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 95
    .local v1, "pool":Ljava/util/concurrent/ExecutorService;
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    :try_start_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->serverSocket()Landroid/net/LocalServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    .line 99
    .local v2, "socket":Landroid/net/LocalSocket;
    new-instance v3, Lcom/github/shadowsocks/ShadowsocksVpnThread$$anonfun$1;

    invoke-direct {v3, p0, v2}, Lcom/github/shadowsocks/ShadowsocksVpnThread$$anonfun$1;-><init>(Lcom/github/shadowsocks/ShadowsocksVpnThread;Landroid/net/LocalSocket;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 140
    .end local v2    # "socket":Landroid/net/LocalSocket;
    :catch_0
    move-exception v3

    .line 141
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->TAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error when accept socket"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 143
    .end local v0    # "localSocket":Landroid/net/LocalSocket;
    .end local v1    # "pool":Ljava/util/concurrent/ExecutorService;
    :cond_0
    :goto_1
    return-void

    .line 87
    :catch_1
    move-exception v3

    .line 88
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->TAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "unable to bind"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public serverSocket()Landroid/net/LocalServerSocket;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->serverSocket:Landroid/net/LocalServerSocket;

    return-object v0
.end method

.method public serverSocket_$eq(Landroid/net/LocalServerSocket;)V
    .locals 0
    .param p1, "x$1"    # Landroid/net/LocalServerSocket;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread;->serverSocket:Landroid/net/LocalServerSocket;

    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->isRunning_$eq(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->closeServerSocket()V

    return-void
.end method
