.class public Lcom/github/shadowsocks/GuardedProcess;
.super Ljava/lang/Object;
.source "GuardedProcess.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final cmd:Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile guardThread:Ljava/lang/Thread;

.field private volatile isDestroyed:Z

.field private volatile isRestart:Z

.field private volatile process:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Lscala/collection/Seq;)V
    .locals 1
    .param p1, "cmd"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/github/shadowsocks/GuardedProcess;->cmd:Lscala/collection/Seq;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-class v0, Lcom/github/shadowsocks/GuardedProcess;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/GuardedProcess;->TAG:Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/shadowsocks/GuardedProcess;->isRestart:Z

    return-void
.end method

.method private TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/github/shadowsocks/GuardedProcess;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private guardThread()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/github/shadowsocks/GuardedProcess;->guardThread:Ljava/lang/Thread;

    return-object v0
.end method

.method private guardThread_$eq(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/Thread;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/github/shadowsocks/GuardedProcess;->guardThread:Ljava/lang/Thread;

    return-void
.end method

.method private isDestroyed()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/github/shadowsocks/GuardedProcess;->isDestroyed:Z

    return v0
.end method

.method private isDestroyed_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/github/shadowsocks/GuardedProcess;->isDestroyed:Z

    return-void
.end method

.method private isRestart()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/github/shadowsocks/GuardedProcess;->isRestart:Z

    return v0
.end method

.method private isRestart_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/github/shadowsocks/GuardedProcess;->isRestart:Z

    return-void
.end method

.method private process()Ljava/lang/Process;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/github/shadowsocks/GuardedProcess;->process:Ljava/lang/Process;

    return-object v0
.end method

.method private process_$eq(Ljava/lang/Process;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/Process;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/github/shadowsocks/GuardedProcess;->process:Ljava/lang/Process;

    return-void
.end method


# virtual methods
.method public final com$github$shadowsocks$GuardedProcess$$run$body$1(Lscala/Function0;Ljava/util/concurrent/Semaphore;Lscala/runtime/VolatileObjectRef;)V
    .locals 8
    .param p1, "onRestartCallback$1"    # Lscala/Function0;
    .param p2, "semaphore$1"    # Ljava/util/concurrent/Semaphore;
    .param p3, "ioException$1"    # Lscala/runtime/VolatileObjectRef;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "callback":Lscala/Function0;
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v5}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v6, "start process: "

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/github/shadowsocks/GuardedProcess;->cmd:Lscala/collection/Seq;

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    .local v2, "startTime":J
    new-instance v4, Ljava/lang/ProcessBuilder;

    sget-object v5, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    iget-object v6, p0, Lcom/github/shadowsocks/GuardedProcess;->cmd:Lscala/collection/Seq;

    invoke-virtual {v5, v6}, Lscala/collection/JavaConversions$;->seqAsJavaList(Lscala/collection/Seq;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/github/shadowsocks/GuardedProcess;->process_$eq(Ljava/lang/Process;)V

    .line 92
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->process()Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 93
    .local v1, "is":Ljava/io/InputStream;
    new-instance v4, Lcom/github/shadowsocks/StreamLogger;

    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->TAG()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/github/shadowsocks/StreamLogger;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/github/shadowsocks/StreamLogger;->start()V

    .line 95
    if-nez v0, :cond_1

    move-object v0, p1

    .line 97
    :goto_1
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 98
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->process()Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 100
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->isRestart()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/github/shadowsocks/GuardedProcess;->isRestart_$eq(Z)V

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 100
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0

    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 113
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "startTime":J
    :catch_0
    move-exception v4

    .line 114
    :try_start_3
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v5}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v6, "thread interrupt, destroy process: "

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/github/shadowsocks/GuardedProcess;->cmd:Lscala/collection/Seq;

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->process()Ljava/lang/Process;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    :cond_0
    :goto_3
    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    .line 95
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "startTime":J
    :cond_1
    :try_start_4
    invoke-interface {v0}, Lscala/Function0;->apply$mcV$sp()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 116
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "startTime":J
    :catch_1
    move-exception v4

    :try_start_5
    iput-object v4, p3, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    .line 117
    :catchall_1
    move-exception v4

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v4

    .line 104
    .restart local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "startTime":J
    :cond_2
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 105
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v5}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v6, "process exit too fast, stop guard: "

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/github/shadowsocks/GuardedProcess;->cmd:Lscala/collection/Seq;

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/github/shadowsocks/GuardedProcess;->isDestroyed_$eq(Z)V

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 104
    :cond_3
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/GuardedProcess;->isDestroyed_$eq(Z)V

    .line 132
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->guardThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 133
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->process()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->guardThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;
    .locals 6
    .param p1, "onRestartCallback"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lcom/github/shadowsocks/GuardedProcess;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 80
    .local v1, "semaphore":Ljava/util/concurrent/Semaphore;
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 81
    const/4 v2, 0x0

    invoke-static {v2}, Lscala/runtime/VolatileObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/VolatileObjectRef;

    move-result-object v0

    .line 83
    .local v0, "ioException":Lscala/runtime/VolatileObjectRef;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/github/shadowsocks/GuardedProcess$$anonfun$1;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/github/shadowsocks/GuardedProcess$$anonfun$1;-><init>(Lcom/github/shadowsocks/GuardedProcess;Lscala/Function0;Ljava/util/concurrent/Semaphore;Lscala/runtime/VolatileObjectRef;)V

    .line 118
    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v5, "GuardThread-"

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/github/shadowsocks/GuardedProcess;->cmd:Lscala/collection/Seq;

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/github/shadowsocks/GuardedProcess;->guardThread_$eq(Ljava/lang/Thread;)V

    .line 120
    invoke-direct {p0}, Lcom/github/shadowsocks/GuardedProcess;->guardThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 121
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 123
    iget-object v2, v0, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Ljava/io/IOException;

    if-nez v2, :cond_0

    .line 127
    return-object p0

    .line 124
    :cond_0
    iget-object v2, v0, Lscala/runtime/VolatileObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Ljava/io/IOException;

    throw v2
.end method

.method public start$default$1()Lscala/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function0",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method
