.class public Lscala/concurrent/impl/ExecutionContextImpl;
.super Ljava/lang/Object;
.source "ExecutionContextImpl.scala"

# interfaces
.implements Lscala/concurrent/ExecutionContextExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask;,
        Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field public final scala$concurrent$impl$ExecutionContextImpl$$reporter:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field public final scala$concurrent$impl$ExecutionContextImpl$$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lscala/Function1;)V
    .locals 1
    .param p1, "es"    # Ljava/util/concurrent/Executor;
    .param p2, "reporter"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lscala/Function1",
            "<",
            "Ljava/lang/Throwable;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    iput-object p2, p0, Lscala/concurrent/impl/ExecutionContextImpl;->scala$concurrent$impl$ExecutionContextImpl$$reporter:Lscala/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/concurrent/ExecutionContext$class;->$init$(Lscala/concurrent/ExecutionContext;)V

    .line 23
    new-instance v0, Lscala/concurrent/impl/ExecutionContextImpl$$anon$3;

    invoke-direct {v0, p0}, Lscala/concurrent/impl/ExecutionContextImpl$$anon$3;-><init>(Lscala/concurrent/impl/ExecutionContextImpl;)V

    iput-object v0, p0, Lscala/concurrent/impl/ExecutionContextImpl;->scala$concurrent$impl$ExecutionContextImpl$$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 28
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lscala/concurrent/impl/ExecutionContextImpl;->createExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 27
    .end local p1    # "es":Ljava/util/concurrent/Executor;
    :cond_0
    iput-object p1, p0, Lscala/concurrent/impl/ExecutionContextImpl;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final getInt$1(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "default"    # Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 63
    .end local p2    # "default":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    sget-object v0, Lscala/runtime/RichDouble$;->MODULE$:Lscala/runtime/RichDouble$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    int-to-double v2, v1

    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lscala/collection/immutable/StringOps;->toDouble()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lscala/runtime/RichDouble$;->ceil$extension(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 60
    :goto_1
    return v0

    .line 64
    :cond_0
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v0, p2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v0

    goto :goto_1

    .line 61
    .restart local p2    # "default":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final range$1(III)I
    .locals 2
    .param p1, "floor"    # I
    .param p2, "desired"    # I
    .param p3, "ceiling"    # I

    .prologue
    .line 67
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v1, p1, p2}, Lscala/math/package$;->max(II)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lscala/math/package$;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public createExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 69
    .line 70
    const-string v0, "scala.concurrent.context.minThreads"

    const-string v3, "1"

    invoke-direct {p0, v0, v3}, Lscala/concurrent/impl/ExecutionContextImpl;->getInt$1(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 71
    const-string v3, "scala.concurrent.context.numThreads"

    const-string v4, "x1"

    invoke-direct {p0, v3, v4}, Lscala/concurrent/impl/ExecutionContextImpl;->getInt$1(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 72
    const-string v4, "scala.concurrent.context.maxThreads"

    const-string v5, "x1"

    invoke-direct {p0, v4, v5}, Lscala/concurrent/impl/ExecutionContextImpl;->getInt$1(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 69
    invoke-direct {p0, v0, v3, v4}, Lscala/concurrent/impl/ExecutionContextImpl;->range$1(III)I

    move-result v2

    .line 74
    .local v2, "desiredParallelism":I
    new-instance v8, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;

    invoke-direct {v8, p0, v9}, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;-><init>(Lscala/concurrent/impl/ExecutionContextImpl;Z)V

    .line 77
    .local v8, "threadFactory":Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;
    :try_start_0
    new-instance v1, Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 80
    iget-object v0, p0, Lscala/concurrent/impl/ExecutionContextImpl;->scala$concurrent$impl$ExecutionContextImpl$$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 81
    const/4 v3, 0x1

    .line 77
    invoke-direct {v1, v2, v8, v0, v3}, Lscala/concurrent/forkjoin/ForkJoinPool;-><init>(ILscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    return-object v1

    .line 76
    :catchall_0
    move-exception v0

    .line 83
    sget-object v3, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    invoke-virtual {v3, v0}, Lscala/util/control/NonFatal$;->unapply(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v3

    invoke-virtual {v3}, Lscala/Option;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    throw v0

    .line 84
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Failed to create ForkJoinPool for the default ExecutionContext, falling back to ThreadPoolExecutor"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 86
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 89
    const-wide/16 v4, 0x5

    .line 90
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 91
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    .line 86
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 94
    .local v1, "exec":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v1, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 99
    invoke-virtual {p0}, Lscala/concurrent/impl/ExecutionContextImpl;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 100
    instance-of v1, v0, Lscala/concurrent/forkjoin/ForkJoinPool;

    if-eqz v1, :cond_2

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 102
    instance-of v1, p1, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 105
    .end local p1    # "runnable":Ljava/lang/Runnable;
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 106
    instance-of v2, v1, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v2, :cond_1

    check-cast v1, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    invoke-virtual {v1}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->getPool()Lscala/concurrent/forkjoin/ForkJoinPool;

    move-result-object v1

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->fork()Lscala/concurrent/forkjoin/ForkJoinTask;

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 105
    :goto_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 99
    :goto_2
    return-void

    .line 103
    .restart local p1    # "runnable":Ljava/lang/Runnable;
    :cond_0
    new-instance v1, Lscala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask;

    invoke-direct {v1, p1}, Lscala/concurrent/impl/ExecutionContextImpl$AdaptedForkJoinTask;-><init>(Ljava/lang/Runnable;)V

    move-object p1, v1

    goto :goto_0

    .line 107
    .end local p1    # "runnable":Ljava/lang/Runnable;
    :cond_1
    invoke-virtual {v0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->execute(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 109
    .restart local p1    # "runnable":Ljava/lang/Runnable;
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2
.end method

.method public executor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lscala/concurrent/impl/ExecutionContextImpl;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public prepare()Lscala/concurrent/ExecutionContext;
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lscala/concurrent/ExecutionContext$class;->prepare(Lscala/concurrent/ExecutionContext;)Lscala/concurrent/ExecutionContext;

    move-result-object v0

    return-object v0
.end method

.method public reportFailure(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    iget-object v0, p0, Lscala/concurrent/impl/ExecutionContextImpl;->scala$concurrent$impl$ExecutionContextImpl$$reporter:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
