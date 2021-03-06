.class public Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
.super Ljava/lang/Thread;
.source "ForkJoinWorkerThread.java"


# instance fields
.field final pool:Lscala/concurrent/forkjoin/ForkJoinPool;

.field final workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;


# direct methods
.method protected constructor <init>(Lscala/concurrent/forkjoin/ForkJoinPool;)V
    .locals 1
    .param p1, "pool"    # Lscala/concurrent/forkjoin/ForkJoinPool;

    .prologue
    .line 48
    const-string v0, "aForkJoinWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 50
    invoke-virtual {p1, p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->registerWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;)Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-result-object v0

    iput-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .line 51
    return-void
.end method


# virtual methods
.method public getPool()Lscala/concurrent/forkjoin/ForkJoinPool;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    return-object v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method protected onTermination(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 96
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, "exception":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->onStart()V

    .line 107
    iget-object v2, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    iget-object v3, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Lscala/concurrent/forkjoin/ForkJoinPool;->runWorker(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 112
    :try_start_1
    invoke-virtual {p0, v1}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    iget-object v2, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v2, p0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 120
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 115
    move-object v1, v0

    .line 117
    :cond_0
    iget-object v2, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v2, p0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v3, p0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v2

    .line 108
    :catch_1
    move-exception v0

    .line 109
    .restart local v0    # "ex":Ljava/lang/Throwable;
    move-object v1, v0

    .line 112
    :try_start_2
    invoke-virtual {p0, v1}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    iget-object v2, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v2, p0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    :catch_2
    move-exception v0

    .line 114
    if-nez v1, :cond_1

    .line 115
    move-object v1, v0

    .line 117
    :cond_1
    iget-object v2, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v2, p0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v2

    iget-object v3, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v3, p0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v2

    .line 111
    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_2
    move-exception v2

    .line 112
    :try_start_3
    invoke-virtual {p0, v1}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->onTermination(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 117
    iget-object v3, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v3, p0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    :goto_1
    throw v2

    .line 113
    :catch_3
    move-exception v0

    .line 114
    .restart local v0    # "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_2

    .line 115
    move-object v1, v0

    .line 117
    :cond_2
    iget-object v3, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v3, p0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/Throwable;
    :catchall_3
    move-exception v2

    iget-object v3, p0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v3, p0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    throw v2
.end method
