.class public abstract Lscala/concurrent/forkjoin/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;,
        Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;,
        Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;,
        Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final STATUS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final exceptionTable:[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1465
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v2, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1466
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v2, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1467
    const/16 v2, 0x20

    new-array v2, v2, [Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    sput-object v2, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTable:[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 1469
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    .line 1470
    const-class v1, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1471
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    const-string v3, "status"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1476
    return-void

    .line 1473
    :catch_0
    move-exception v0

    .line 1474
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1369
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static final cancelIgnoringExceptions(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz p0, :cond_0

    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_0

    .line 464
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doInvoke()I
    .locals 5

    .prologue
    .line 356
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    move-result v0

    .local v0, "s":I
    if-gez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    return v0

    .restart local v0    # "s":I
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v3, v1, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .local v2, "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    iget-object v3, v2, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    iget-object v4, v2, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {v3, v4, p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->awaitJoin(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I

    move-result v0

    goto :goto_0

    .end local v2    # "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    :cond_1
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    goto :goto_0
.end method

.method private doJoin()I
    .locals 5

    .prologue
    .line 341
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    .local v0, "s":I
    if-gez v0, :cond_0

    move v4, v0

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v4, v1, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v4, :cond_2

    move-object v3, v1

    check-cast v3, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .local v3, "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    iget-object v2, v3, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .local v2, "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    invoke-virtual {v2, p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->tryUnpush(Lscala/concurrent/forkjoin/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    move-result v0

    if-gez v0, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v4, v2, p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->awaitJoin(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I

    move-result v4

    goto :goto_0

    .end local v2    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v3    # "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    :cond_2
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->externalAwaitDone()I

    move-result v4

    goto :goto_0
.end method

.method private static expungeStaleExceptions()V
    .locals 9

    .prologue
    .line 562
    .local v6, "x":Ljava/lang/ref/Reference;
    :cond_0
    :goto_0
    sget-object v7, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 563
    instance-of v7, v6, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 564
    check-cast v7, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    invoke-virtual {v7}, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 565
    .local v2, "key":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    sget-object v5, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTable:[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 566
    .local v5, "t":[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    and-int v1, v7, v8

    .line 567
    .local v1, "i":I
    aget-object v0, v5, v1

    .line 568
    .local v0, "e":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    const/4 v4, 0x0

    .line 569
    .local v4, "pred":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :goto_1
    if-eqz v0, :cond_0

    .line 570
    iget-object v3, v0, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 571
    .local v3, "next":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    if-ne v0, v6, :cond_2

    .line 572
    if-nez v4, :cond_1

    .line 573
    aput-object v3, v5, v1

    goto :goto_0

    .line 575
    :cond_1
    iput-object v3, v4, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    goto :goto_0

    .line 578
    :cond_2
    move-object v4, v0

    .line 579
    move-object v0, v3

    .line 580
    goto :goto_1

    .line 583
    .end local v0    # "e":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    .end local v1    # "i":I
    .end local v2    # "key":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v3    # "next":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    .end local v4    # "pred":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    .end local v5    # "t":[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :cond_3
    return-void
.end method

.method private externalAwaitDone()I
    .locals 8

    .prologue
    .line 288
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    invoke-static {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalHelpJoin(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 289
    const/4 v7, 0x0

    .line 290
    .local v7, "interrupted":Z
    :cond_0
    :goto_0
    iget v4, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_2

    .line 291
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    monitor-enter p0

    .line 293
    :try_start_0
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_1

    .line 295
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 296
    :catch_0
    move-exception v6

    .line 297
    .local v6, "ie":Ljava/lang/InterruptedException;
    const/4 v7, 0x1

    .line 298
    goto :goto_1

    .line 301
    .end local v6    # "ie":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 305
    :cond_2
    if-eqz v7, :cond_3

    .line 306
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 307
    :cond_3
    return v4
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 317
    :cond_0
    invoke-static {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalHelpJoin(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 318
    :cond_1
    :goto_0
    iget v4, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_3

    .line 319
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_2

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 325
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 324
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 328
    :cond_3
    return v4
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 8

    .prologue
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    const/4 v5, 0x0

    .line 516
    iget v6, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    const/high16 v7, -0x10000000

    and-int/2addr v6, v7

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_1

    move-object v1, v5

    .line 555
    :cond_0
    :goto_0
    return-object v1

    .line 518
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 520
    .local v2, "h":I
    sget-object v3, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 521
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 523
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->expungeStaleExceptions()V

    .line 524
    sget-object v4, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTable:[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 525
    .local v4, "t":[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v2

    aget-object v0, v4, v6

    .line 526
    .local v0, "e":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_2

    .line 527
    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 529
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 532
    if-eqz v0, :cond_3

    iget-object v1, v0, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    move-object v1, v5

    .line 533
    goto :goto_0

    .line 529
    .end local v0    # "e":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    .end local v4    # "t":[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 1486
    sget-object v0, Lscala/concurrent/util/Unsafe;->instance:Lsun/misc/Unsafe;

    return-object v0
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    .prologue
    .line 590
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 591
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 593
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 598
    :cond_0
    return-void

    .line 595
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private reportException(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 628
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    const/high16 v0, -0x40000000    # -2.0f

    if-ne p1, v0, :cond_0

    .line 629
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 630
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 631
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 632
    :cond_1
    return-void
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 604
    if-eqz p0, :cond_2

    .line 605
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 606
    check-cast p0, Ljava/lang/Error;

    .end local p0    # "ex":Ljava/lang/Throwable;
    throw p0

    .line 607
    .restart local p0    # "ex":Ljava/lang/Throwable;
    :cond_0
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_1

    .line 608
    check-cast p0, Ljava/lang/RuntimeException;

    .end local p0    # "ex":Ljava/lang/Throwable;
    throw p0

    .line 609
    .restart local p0    # "ex":Ljava/lang/Throwable;
    :cond_1
    invoke-static {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    .line 611
    :cond_2
    return-void
.end method

.method private setCompletion(I)I
    .locals 6
    .param p1, "completion"    # I

    .prologue
    .line 239
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    .local v4, "s":I
    if-gez v4, :cond_1

    .line 244
    .end local v4    # "s":I
    :goto_0
    return v4

    .line 241
    .restart local v4    # "s":I
    :cond_1
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J

    or-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    ushr-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_2

    .line 243
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :cond_2
    move v4, p1

    .line 244
    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 443
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    .line 444
    .local v0, "s":I
    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 445
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    .line 446
    :cond_0
    return v0
.end method

.method static uncheckedThrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 620
    if-eqz p0, :cond_0

    .line 621
    throw p0

    .line 622
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    const/high16 v2, -0x40000000    # -2.0f

    .line 841
    invoke-direct {p0, v2}, Lscala/concurrent/forkjoin/ForkJoinTask;->setCompletion(I)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final doExec()I
    .locals 4

    .prologue
    .line 258
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    .local v2, "s":I
    if-ltz v2, :cond_0

    .line 260
    :try_start_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 264
    .local v0, "completed":Z
    if-eqz v0, :cond_0

    .line 265
    const/high16 v3, -0x10000000

    invoke-direct {p0, v3}, Lscala/concurrent/forkjoin/ForkJoinTask;->setCompletion(I)I

    move-result v2

    .end local v0    # "completed":Z
    :cond_0
    move v3, v2

    .line 267
    :goto_0
    return v3

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lscala/concurrent/forkjoin/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method protected abstract exec()Z
.end method

.method public final fork()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 654
    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->push(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 657
    :goto_0
    return-object p0

    .line 656
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-virtual {v1, p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 953
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    instance-of v2, v2, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doJoin()I

    move-result v1

    .line 956
    .local v1, "s":I
    :goto_0
    const/high16 v2, -0x10000000

    and-int/2addr v1, v2

    const/high16 v2, -0x40000000    # -2.0f

    if-ne v1, v2, :cond_1

    .line 957
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2

    .line 953
    .end local v1    # "s":I
    :cond_0
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->externalInterruptibleAwaitDone()I

    move-result v1

    goto :goto_0

    .line 958
    .restart local v1    # "s":I
    :cond_1
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 959
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 960
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 25
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 979
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 980
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 983
    :cond_0
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v18

    .line 984
    .local v18, "ns":J
    move-object/from16 v0, p0

    iget v8, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    .local v8, "s":I
    if-ltz v8, :cond_c

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_c

    .line 985
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long v12, v4, v18

    .line 986
    .local v12, "deadline":J
    const/16 v20, 0x0

    .line 987
    .local v20, "p":Lscala/concurrent/forkjoin/ForkJoinPool;
    const/16 v22, 0x0

    .line 988
    .local v22, "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v21

    .line 989
    .local v21, "t":Ljava/lang/Thread;
    move-object/from16 v0, v21

    instance-of v4, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v4, :cond_3

    move-object/from16 v23, v21

    .line 990
    check-cast v23, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .line 991
    .local v23, "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    move-object/from16 v0, v23

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    move-object/from16 v20, v0

    .line 992
    move-object/from16 v0, v23

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v22, v0

    .line 993
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpJoinOnce(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 997
    .end local v23    # "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    :goto_0
    const/4 v10, 0x0

    .line 998
    .local v10, "canBlock":Z
    const/4 v15, 0x0

    .line 1000
    .local v15, "interrupted":Z
    :cond_1
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget v8, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v8, :cond_9

    .line 1001
    if-eqz v22, :cond_4

    move-object/from16 v0, v22

    iget v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v4, :cond_4

    .line 1002
    invoke-static/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancelIgnoringExceptions(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1029
    :catchall_0
    move-exception v4

    if-eqz v20, :cond_2

    if-eqz v10, :cond_2

    .line 1030
    invoke-virtual/range {v20 .. v20}, Lscala/concurrent/forkjoin/ForkJoinPool;->incrementActiveCount()V

    :cond_2
    throw v4

    .line 996
    .end local v10    # "canBlock":Z
    .end local v15    # "interrupted":Z
    :cond_3
    invoke-static/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalHelpJoin(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_0

    .line 1003
    .restart local v10    # "canBlock":Z
    .restart local v15    # "interrupted":Z
    :cond_4
    if-nez v10, :cond_6

    .line 1004
    if-eqz v20, :cond_5

    :try_start_1
    invoke-virtual/range {v20 .. v20}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryCompensate()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1005
    :cond_5
    const/4 v10, 0x1

    goto :goto_1

    .line 1008
    :cond_6
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v16

    .local v16, "ms":J
    const-wide/16 v4, 0x0

    cmp-long v4, v16, v4

    if-lez v4, :cond_8

    sget-object v4, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J

    const/high16 v5, 0x10000

    or-int v9, v8, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1010
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1011
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ltz v4, :cond_b

    .line 1013
    :try_start_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1021
    :cond_7
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1023
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget v8, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v8, :cond_9

    if-nez v15, :cond_9

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v4

    sub-long v18, v12, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-gtz v4, :cond_1

    .line 1029
    .end local v16    # "ms":J
    :cond_9
    if-eqz v20, :cond_a

    if-eqz v10, :cond_a

    .line 1030
    invoke-virtual/range {v20 .. v20}, Lscala/concurrent/forkjoin/ForkJoinPool;->incrementActiveCount()V

    .line 1032
    :cond_a
    if-eqz v15, :cond_c

    .line 1033
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 1014
    .restart local v16    # "ms":J
    :catch_0
    move-exception v14

    .line 1015
    .local v14, "ie":Ljava/lang/InterruptedException;
    if-nez v20, :cond_7

    .line 1016
    const/4 v15, 0x1

    goto :goto_2

    .line 1020
    .end local v14    # "ie":Ljava/lang/InterruptedException;
    :cond_b
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 1021
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1035
    .end local v10    # "canBlock":Z
    .end local v12    # "deadline":J
    .end local v15    # "interrupted":Z
    .end local v16    # "ms":J
    .end local v20    # "p":Lscala/concurrent/forkjoin/ForkJoinPool;
    .end local v21    # "t":Ljava/lang/Thread;
    .end local v22    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_c
    const/high16 v4, -0x10000000

    and-int/2addr v8, v4

    const/high16 v4, -0x10000000

    if-eq v8, v4, :cond_f

    .line 1037
    const/high16 v4, -0x40000000    # -2.0f

    if-ne v8, v4, :cond_d

    .line 1038
    new-instance v4, Ljava/util/concurrent/CancellationException;

    invoke-direct {v4}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v4

    .line 1039
    :cond_d
    const/high16 v4, -0x80000000

    if-eq v8, v4, :cond_e

    .line 1040
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 1041
    :cond_e
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v11

    .local v11, "ex":Ljava/lang/Throwable;
    if-eqz v11, :cond_f

    .line 1042
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v4, v11}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1044
    .end local v11    # "ex":Ljava/lang/Throwable;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 453
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 688
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doInvoke()I

    move-result v1

    and-int v0, v1, v2

    .local v0, "s":I
    if-eq v0, v2, :cond_0

    .line 689
    invoke-direct {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->reportException(I)V

    .line 690
    :cond_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final isCancelled()Z
    .locals 2

    .prologue
    .line 849
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 845
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final quietlyJoin()V
    .locals 0

    .prologue
    .line 1054
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doJoin()I

    .line 1055
    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 413
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    iget v4, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_1

    .line 414
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 415
    .local v1, "h":I
    sget-object v3, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 416
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 418
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->expungeStaleExceptions()V

    .line 419
    sget-object v5, Lscala/concurrent/forkjoin/ForkJoinTask;->exceptionTable:[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    .line 420
    .local v5, "t":[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v2, v1, v6

    .line 421
    .local v2, "i":I
    aget-object v0, v5, v2

    .line 422
    .local v0, "e":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :goto_0
    if-nez v0, :cond_2

    .line 423
    new-instance v6, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;

    aget-object v7, v5, v2

    invoke-direct {v6, p0, p1, v7}, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;-><init>(Lscala/concurrent/forkjoin/ForkJoinTask;Ljava/lang/Throwable;Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;)V

    aput-object v6, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 432
    const/high16 v6, -0x80000000

    invoke-direct {p0, v6}, Lscala/concurrent/forkjoin/ForkJoinTask;->setCompletion(I)I

    move-result v4

    .line 434
    .end local v0    # "e":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "t":[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :cond_1
    return v4

    .line 426
    .restart local v0    # "e":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    .restart local v1    # "h":I
    .restart local v2    # "i":I
    .restart local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "t":[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_0

    .line 421
    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;->next:Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    .end local v0    # "e":Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v5    # "t":[Lscala/concurrent/forkjoin/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method final trySetSignal()Z
    .locals 6

    .prologue
    .line 278
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TV;>;"
    iget v4, p0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    .line 279
    .local v4, "s":I
    if-ltz v4, :cond_0

    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
