.class public Lscala/concurrent/forkjoin/ForkJoinPool;
.super Ljava/util/concurrent/AbstractExecutorService;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;,
        Lscala/concurrent/forkjoin/ForkJoinPool$EmptyTask;,
        Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;,
        Lscala/concurrent/forkjoin/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;,
        Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;
    }
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field private static final CTL:J

.field private static final INDEXSEED:J

.field private static final PARKBLOCKER:J

.field private static final PLOCK:J

.field private static final QLOCK:J

.field private static final STEALCOUNT:J

.field private static final U:Lsun/misc/Unsafe;

.field static final common:Lscala/concurrent/forkjoin/ForkJoinPool;

.field static final commonParallelism:I

.field public static final defaultForkJoinWorkerThreadFactory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field private static final modifyThreadPermission:Ljava/lang/RuntimePermission;

.field private static poolNumberSequence:I

.field static final submitters:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final config:I

.field volatile ctl:J

.field final factory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

.field volatile indexSeed:I

.field volatile plock:I

.field volatile stealCount:J

.field final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

.field workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

.field final workerNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .prologue
    .line 3681
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    .line 3682
    const-class v12, Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 3683
    .local v12, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "ctl"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v20

    sput-wide v20, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    .line 3685
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "stealCount"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v20

    sput-wide v20, Lscala/concurrent/forkjoin/ForkJoinPool;->STEALCOUNT:J

    .line 3687
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "plock"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v20

    sput-wide v20, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    .line 3689
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "indexSeed"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v20

    sput-wide v20, Lscala/concurrent/forkjoin/ForkJoinPool;->INDEXSEED:J

    .line 3691
    const-class v17, Ljava/lang/Thread;

    .line 3692
    .local v17, "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "parkBlocker"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v20

    sput-wide v20, Lscala/concurrent/forkjoin/ForkJoinPool;->PARKBLOCKER:J

    .line 3694
    const-class v18, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .line 3695
    .local v18, "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const-string v19, "qlock"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v20

    sput-wide v20, Lscala/concurrent/forkjoin/ForkJoinPool;->QLOCK:J

    .line 3697
    const-class v8, [Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 3698
    .local v8, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v8}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v2

    sput v2, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    .line 3699
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v8}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v16

    .line 3700
    .local v16, "scale":I
    add-int/lit8 v2, v16, -0x1

    and-int v2, v2, v16

    if-eqz v2, :cond_0

    .line 3701
    new-instance v2, Ljava/lang/Error;

    const-string v19, "data type scale not a power of two"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3703
    .end local v8    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "scale":I
    .end local v17    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v9

    .line 3704
    .local v9, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v9}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3702
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "scale":I
    .restart local v17    # "tk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "wk":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1f

    sput v2, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3707
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    .line 3708
    new-instance v6, Lscala/concurrent/forkjoin/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;

    invoke-direct {v6}, Lscala/concurrent/forkjoin/ForkJoinPool$DefaultForkJoinWorkerThreadFactory;-><init>()V

    sput-object v6, Lscala/concurrent/forkjoin/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 3710
    .local v6, "fac":Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;
    new-instance v2, Ljava/lang/RuntimePermission;

    const-string v19, "modifyThread"

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    sput-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    .line 3718
    const/4 v3, 0x0

    .line 3719
    .local v3, "par":I
    const/4 v7, 0x0

    .line 3721
    .local v7, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :try_start_2
    const-string v2, "java.util.concurrent.ForkJoinPool.common.parallelism"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3723
    .local v13, "pp":Ljava/lang/String;
    const-string v2, "java.util.concurrent.ForkJoinPool.common.exceptionHandler"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3725
    .local v11, "hp":Ljava/lang/String;
    const-string v2, "java.util.concurrent.ForkJoinPool.common.threadFactory"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3727
    .local v10, "fp":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 3728
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    move-object v6, v0

    .line 3730
    :cond_1
    if-eqz v11, :cond_2

    .line 3731
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object v7, v0

    .line 3733
    :cond_2
    if-eqz v13, :cond_3

    .line 3734
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    .line 3738
    .end local v10    # "fp":Ljava/lang/String;
    .end local v11    # "hp":Ljava/lang/String;
    .end local v13    # "pp":Ljava/lang/String;
    :cond_3
    :goto_0
    if-gtz v3, :cond_4

    .line 3739
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 3740
    :cond_4
    const/16 v2, 0x7fff

    if-le v3, v2, :cond_5

    .line 3741
    const/16 v3, 0x7fff

    .line 3742
    :cond_5
    sput v3, Lscala/concurrent/forkjoin/ForkJoinPool;->commonParallelism:I

    .line 3743
    neg-int v2, v3

    int-to-long v14, v2

    .line 3744
    .local v14, "np":J
    const/16 v2, 0x30

    shl-long v20, v14, v2

    const-wide/high16 v22, -0x1000000000000L

    and-long v20, v20, v22

    const/16 v2, 0x20

    shl-long v22, v14, v2

    const-wide v24, 0xffff00000000L

    and-long v22, v22, v24

    or-long v4, v20, v22

    .line 3746
    .local v4, "ct":J
    new-instance v2, Lscala/concurrent/forkjoin/ForkJoinPool;

    invoke-direct/range {v2 .. v7}, Lscala/concurrent/forkjoin/ForkJoinPool;-><init>(IJLscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 3747
    return-void

    .line 3735
    .end local v4    # "ct":J
    .end local v14    # "np":J
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 2820
    const/16 v0, 0x7fff

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->defaultForkJoinWorkerThreadFactory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lscala/concurrent/forkjoin/ForkJoinPool;-><init>(ILscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V

    .line 2822
    return-void
.end method

.method constructor <init>(IJLscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 2
    .param p1, "parallelism"    # I
    .param p2, "ctl"    # J
    .param p4, "factory"    # Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p5, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 2893
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2894
    iput p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    .line 2895
    iput-wide p2, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .line 2896
    iput-object p4, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->factory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2897
    iput-object p5, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2898
    const-string v0, "ForkJoinPool.commonPool-worker-"

    iput-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2899
    return-void
.end method

.method public constructor <init>(ILscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;Ljava/lang/Thread$UncaughtExceptionHandler;Z)V
    .locals 10
    .param p1, "parallelism"    # I
    .param p2, "factory"    # Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .param p3, "handler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p4, "asyncMode"    # Z

    .prologue
    .line 2869
    invoke-direct {p0}, Ljava/util/concurrent/AbstractExecutorService;-><init>()V

    .line 2870
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->checkPermission()V

    .line 2871
    if-nez p2, :cond_0

    .line 2872
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2873
    :cond_0
    if-lez p1, :cond_1

    const/16 v4, 0x7fff

    if-le p1, v4, :cond_2

    .line 2874
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 2875
    :cond_2
    iput-object p2, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->factory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .line 2876
    iput-object p3, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 2877
    if-eqz p4, :cond_3

    const/high16 v4, 0x10000

    :goto_0
    or-int/2addr v4, p1

    iput v4, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    .line 2878
    neg-int v4, p1

    int-to-long v0, v4

    .line 2879
    .local v0, "np":J
    const/16 v4, 0x30

    shl-long v4, v0, v4

    const-wide/high16 v6, -0x1000000000000L

    and-long/2addr v4, v6

    const/16 v6, 0x20

    shl-long v6, v0, v6

    const-wide v8, 0xffff00000000L

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .line 2880
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->nextPoolId()I

    move-result v2

    .line 2881
    .local v2, "pn":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ForkJoinPool-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2882
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2883
    const-string v4, "-worker-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2884
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    .line 2885
    return-void

    .line 2877
    .end local v0    # "np":J
    .end local v2    # "pn":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 474
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method

.method private acquirePlock()I
    .locals 20

    .prologue
    .line 1607
    const/16 v16, 0x100

    .local v16, "spins":I
    const/4 v15, 0x0

    .line 1609
    .local v15, "r":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v6, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    .local v6, "ps":I
    and-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_1

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v7, v6, 0x2

    .local v7, "nps":I
    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1611
    return v7

    .line 1612
    .end local v7    # "nps":I
    :cond_1
    if-nez v15, :cond_4

    .line 1613
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    .line 1614
    .local v17, "t":Ljava/lang/Thread;
    move-object/from16 v0, v17

    instance-of v2, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    if-eqz v2, :cond_2

    check-cast v17, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .end local v17    # "t":Ljava/lang/Thread;
    move-object/from16 v0, v17

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v18, v0

    .local v18, "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_2

    .line 1616
    move-object/from16 v0, v18

    iget v15, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    goto :goto_0

    .line 1617
    .end local v18    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_2
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    .local v19, "z":Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;
    if-eqz v19, :cond_3

    .line 1618
    move-object/from16 v0, v19

    iget v15, v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    goto :goto_0

    .line 1620
    :cond_3
    const/4 v15, 0x1

    goto :goto_0

    .line 1622
    .end local v19    # "z":Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;
    :cond_4
    if-ltz v16, :cond_5

    .line 1623
    shl-int/lit8 v2, v15, 0x1

    xor-int/2addr v15, v2

    ushr-int/lit8 v2, v15, 0x3

    xor-int/2addr v15, v2

    shl-int/lit8 v2, v15, 0xa

    xor-int/2addr v15, v2

    .line 1624
    if-ltz v15, :cond_0

    .line 1625
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 1627
    :cond_5
    sget-object v8, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    or-int/lit8 v13, v6, 0x1

    move-object/from16 v9, p0

    move v12, v6

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1628
    monitor-enter p0

    .line 1629
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 1631
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1641
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1632
    :catch_0
    move-exception v14

    .line 1634
    .local v14, "ie":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1635
    :catch_1
    move-exception v2

    goto :goto_1

    .line 1640
    .end local v14    # "ie":Ljava/lang/InterruptedException;
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static checkPermission()V
    .locals 2

    .prologue
    .line 854
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 855
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 856
    sget-object v1, Lscala/concurrent/forkjoin/ForkJoinPool;->modifyThreadPermission:Ljava/lang/RuntimePermission;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 857
    :cond_0
    return-void
.end method

.method private externalHelpComplete(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 18
    .param p1, "q"    # Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2726
    .local p2, "root":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    iget-object v8, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v8, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v8, :cond_5

    array-length v2, v8

    add-int/lit8 v9, v2, -0x1

    .local v9, "m":I
    if-ltz v9, :cond_5

    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_5

    .line 2729
    :cond_0
    const/16 v16, 0x0

    .line 2730
    .local v16, "task":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    move-object/from16 v0, p1

    iget v14, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .local v14, "s":I
    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v14, v2

    if-lez v2, :cond_3

    .line 2731
    add-int/lit8 v2, v14, -0x1

    and-int/2addr v2, v9

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int/2addr v2, v3

    int-to-long v10, v2

    .line 2732
    .local v10, "j":J
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v8, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    .local v12, "o":Ljava/lang/Object;
    if-eqz v12, :cond_3

    instance-of v2, v12, Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz v2, :cond_3

    move-object v15, v12

    .line 2734
    check-cast v15, Lscala/concurrent/forkjoin/CountedCompleter;

    .local v15, "t":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    move-object v13, v15

    .line 2736
    .local v13, "r":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    :cond_1
    move-object/from16 v0, p2

    if-ne v13, v0, :cond_6

    .line 2737
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->QLOCK:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2738
    move-object/from16 v0, p1

    iget-object v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-ne v2, v8, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    if-ne v2, v14, :cond_2

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    move-object v3, v8

    move-wide v4, v10

    move-object v6, v15

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2740
    add-int/lit8 v2, v14, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 2741
    move-object/from16 v16, v15

    .line 2743
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 2750
    .end local v10    # "j":J
    .end local v12    # "o":Ljava/lang/Object;
    .end local v13    # "r":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    .end local v15    # "t":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    :cond_3
    :goto_0
    if-eqz v16, :cond_4

    .line 2751
    invoke-virtual/range {v16 .. v16}, Lscala/concurrent/forkjoin/CountedCompleter;->doExec()I

    .line 2752
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v0, v2

    move/from16 v17, v0

    .local v17, "u":I
    if-gez v17, :cond_5

    shr-int/lit8 v2, v17, 0x10

    if-ltz v2, :cond_7

    .line 2763
    .end local v8    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v9    # "m":I
    .end local v14    # "s":I
    .end local v16    # "task":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    .end local v17    # "u":I
    :cond_5
    :goto_1
    return-void

    .line 2747
    .restart local v8    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v9    # "m":I
    .restart local v10    # "j":J
    .restart local v12    # "o":Ljava/lang/Object;
    .restart local v13    # "r":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    .restart local v14    # "s":I
    .restart local v15    # "t":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    .restart local v16    # "task":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    :cond_6
    iget-object v13, v13, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    if-nez v13, :cond_1

    goto :goto_0

    .line 2755
    .end local v10    # "j":J
    .end local v12    # "o":Ljava/lang/Object;
    .end local v13    # "r":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    .end local v15    # "t":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    .restart local v17    # "u":I
    :cond_7
    if-nez v16, :cond_0

    .line 2756
    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V

    .line 2757
    move-object/from16 v0, p2

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_5

    .line 2758
    const/4 v2, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpComplete(Lscala/concurrent/forkjoin/ForkJoinTask;I)I

    goto :goto_1
.end method

.method static externalHelpJoin(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2773
    .local p0, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz p0, :cond_1

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    .local v18, "z":Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;
    if-eqz v18, :cond_1

    sget-object v15, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    .local v15, "p":Lscala/concurrent/forkjoin/ForkJoinPool;
    if-eqz v15, :cond_1

    iget-object v0, v15, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    .local v17, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_1

    move-object/from16 v0, v17

    array-length v2, v0

    add-int/lit8 v14, v2, -0x1

    .local v14, "m":I
    if-ltz v14, :cond_1

    move-object/from16 v0, v18

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v2, v14

    and-int/lit8 v2, v2, 0x7e

    aget-object v3, v17, v2

    .local v3, "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    iget-object v10, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v10, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v10, :cond_1

    .line 2780
    array-length v2, v10

    add-int/lit8 v11, v2, -0x1

    .line 2781
    .local v11, "am":I
    iget v0, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    move/from16 v16, v0

    .local v16, "s":I
    iget v2, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_0

    .line 2782
    add-int/lit8 v2, v16, -0x1

    and-int/2addr v2, v11

    sget v4, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v4

    sget v4, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int/2addr v2, v4

    int-to-long v12, v2

    .line 2783
    .local v12, "j":J
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v10, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p0

    if-ne v2, v0, :cond_0

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->QLOCK:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2785
    iget-object v2, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-ne v2, v10, :cond_2

    iget v2, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    move/from16 v0, v16

    if-ne v2, v0, :cond_2

    sget-object v4, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    move-object v5, v10

    move-wide v6, v12

    move-object/from16 v8, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2787
    add-int/lit8 v2, v16, -0x1

    iput v2, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 2788
    const/4 v2, 0x0

    iput v2, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 2789
    invoke-virtual/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    .line 2795
    .end local v12    # "j":J
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_1

    .line 2796
    move-object/from16 v0, p0

    instance-of v2, v0, Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz v2, :cond_3

    .line 2797
    move-object/from16 v0, p0

    invoke-direct {v15, v3, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalHelpComplete(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 2802
    .end local v3    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v10    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v11    # "am":I
    .end local v14    # "m":I
    .end local v15    # "p":Lscala/concurrent/forkjoin/ForkJoinPool;
    .end local v16    # "s":I
    .end local v17    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v18    # "z":Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;
    :cond_1
    :goto_1
    return-void

    .line 2792
    .restart local v3    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v10    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v11    # "am":I
    .restart local v12    # "j":J
    .restart local v14    # "m":I
    .restart local v15    # "p":Lscala/concurrent/forkjoin/ForkJoinPool;
    .restart local v16    # "s":I
    .restart local v17    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v18    # "z":Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;
    :cond_2
    const/4 v2, 0x0

    iput v2, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_0

    .line 2799
    .end local v12    # "j":J
    :cond_3
    iget v2, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V

    goto :goto_1
.end method

.method private findNonEmptyStealQueue(I)Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .locals 7
    .param p1, "r"    # I

    .prologue
    .line 2442
    :cond_0
    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    .line 2443
    .local v2, "ps":I
    iget-object v4, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .local v4, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v4, :cond_2

    array-length v5, v4

    add-int/lit8 v1, v5, -0x1

    .local v1, "m":I
    if-ltz v1, :cond_2

    .line 2444
    add-int/lit8 v5, v1, 0x1

    shl-int/lit8 v0, v5, 0x2

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2445
    add-int v5, p1, v0

    shl-int/lit8 v5, v5, 0x1

    or-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v1

    aget-object v3, v4, v5

    .local v3, "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_1

    iget v5, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v6, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v5, v6

    if-gez v5, :cond_1

    .line 2451
    .end local v0    # "j":I
    .end local v1    # "m":I
    .end local v3    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :goto_1
    return-object v3

    .line 2444
    .restart local v0    # "j":I
    .restart local v1    # "m":I
    .restart local v3    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2450
    .end local v0    # "j":I
    .end local v1    # "m":I
    .end local v3    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_2
    iget v5, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    if-ne v5, v2, :cond_0

    .line 2451
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private fullExternalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1855
    .local p1, "task":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    const/4 v6, 0x0

    .line 1856
    .local v6, "r":I
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    .line 1858
    .local v36, "z":Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;
    :cond_0
    :goto_0
    if-nez v36, :cond_1

    .line 1859
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->INDEXSEED:J

    move-object/from16 v0, p0

    iget v6, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->indexSeed:I

    const v3, 0x61c88647

    add-int v7, v6, v3

    .end local v6    # "r":I
    .local v7, "r":I
    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v7, :cond_16

    .line 1861
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    new-instance v36, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    .end local v36    # "z":Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;
    move-object/from16 v0, v36

    invoke-direct {v0, v7}, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;-><init>(I)V

    .restart local v36    # "z":Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;
    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    move v6, v7

    .end local v7    # "r":I
    .restart local v6    # "r":I
    goto :goto_0

    .line 1863
    :cond_1
    if-nez v6, :cond_2

    .line 1864
    move-object/from16 v0, v36

    iget v6, v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    .line 1865
    shl-int/lit8 v2, v6, 0xd

    xor-int/2addr v6, v2

    .line 1866
    ushr-int/lit8 v2, v6, 0x11

    xor-int/2addr v6, v2

    .line 1867
    shl-int/lit8 v2, v6, 0x5

    xor-int/2addr v2, v6

    move-object/from16 v0, v36

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    goto :goto_0

    .line 1869
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    .local v12, "ps":I
    if-gez v12, :cond_3

    .line 1870
    new-instance v2, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v2

    .line 1871
    :cond_3
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v35, v0

    .local v35, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_4

    move-object/from16 v0, v35

    array-length v2, v0

    add-int/lit8 v29, v2, -0x1

    .local v29, "m":I
    if-gez v29, :cond_b

    .line 1873
    .end local v29    # "m":I
    .end local v35    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v3, 0xffff

    and-int v32, v2, v3

    .line 1874
    .local v32, "p":I
    const/4 v2, 0x1

    move/from16 v0, v32

    if-le v0, v2, :cond_9

    add-int/lit8 v30, v32, -0x1

    .line 1875
    .local v30, "n":I
    :goto_1
    ushr-int/lit8 v2, v30, 0x1

    or-int v30, v30, v2

    ushr-int/lit8 v2, v30, 0x2

    or-int v30, v30, v2

    ushr-int/lit8 v2, v30, 0x4

    or-int v30, v30, v2

    .line 1876
    ushr-int/lit8 v2, v30, 0x8

    or-int v30, v30, v2

    ushr-int/lit8 v2, v30, 0x10

    or-int v30, v30, v2

    add-int/lit8 v2, v30, 0x1

    shl-int/lit8 v30, v2, 0x1

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v35, v0

    .restart local v35    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v35, :cond_5

    move-object/from16 v0, v35

    array-length v2, v0

    if-nez v2, :cond_a

    :cond_5
    move/from16 v0, v30

    new-array v0, v0, [Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v31, v0

    .line 1879
    .local v31, "nws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    and-int/lit8 v2, v12, 0x2

    if-nez v2, :cond_6

    sget-object v8, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v13, v12, 0x2

    .end local v12    # "ps":I
    .local v13, "ps":I
    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_15

    move v12, v13

    .line 1881
    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->acquirePlock()I

    move-result v12

    .line 1882
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    move-object/from16 v0, v35

    array-length v2, v0

    if-nez v2, :cond_8

    :cond_7
    if-eqz v31, :cond_8

    .line 1883
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .line 1884
    :cond_8
    const/high16 v2, -0x80000000

    and-int/2addr v2, v12

    add-int/lit8 v3, v12, 0x2

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    or-int v19, v2, v3

    .line 1885
    .local v19, "nps":I
    sget-object v14, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1886
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    goto/16 :goto_0

    .line 1874
    .end local v19    # "nps":I
    .end local v30    # "n":I
    .end local v31    # "nws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v35    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_9
    const/16 v30, 0x1

    goto :goto_1

    .line 1877
    .restart local v30    # "n":I
    .restart local v35    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_a
    const/16 v31, 0x0

    goto :goto_2

    .line 1888
    .end local v30    # "n":I
    .end local v32    # "p":I
    .restart local v29    # "m":I
    :cond_b
    and-int v2, v6, v29

    and-int/lit8 v28, v2, 0x7e

    .local v28, "k":I
    aget-object v21, v35, v28

    .local v21, "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_10

    .line 1889
    move-object/from16 v0, v21

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    if-nez v2, :cond_f

    sget-object v20, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v22, Lscala/concurrent/forkjoin/ForkJoinPool;->QLOCK:J

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-virtual/range {v20 .. v25}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1890
    move-object/from16 v0, v21

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    move-object/from16 v26, v0

    .line 1891
    .local v26, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    move-object/from16 v0, v21

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    move/from16 v33, v0

    .line 1892
    .local v33, "s":I
    const/16 v34, 0x0

    .line 1894
    .local v34, "submitted":Z
    if-eqz v26, :cond_c

    :try_start_0
    move-object/from16 v0, v26

    array-length v2, v0

    add-int/lit8 v3, v33, 0x1

    move-object/from16 v0, v21

    iget v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_d

    :cond_c
    invoke-virtual/range {v21 .. v21}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->growArray()[Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v26

    if-eqz v26, :cond_e

    .line 1896
    :cond_d
    move-object/from16 v0, v26

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int v2, v2, v33

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int v27, v2, v3

    .line 1897
    .local v27, "j":I
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move/from16 v0, v27

    int-to-long v4, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1898
    add-int/lit8 v2, v33, 0x1

    move-object/from16 v0, v21

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1899
    const/16 v34, 0x1

    .line 1902
    .end local v27    # "j":I
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, v21

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 1904
    if-eqz v34, :cond_f

    .line 1905
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 1906
    return-void

    .line 1902
    :catchall_0
    move-exception v2

    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    throw v2

    .line 1909
    .end local v26    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v33    # "s":I
    .end local v34    # "submitted":Z
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1911
    :cond_10
    move-object/from16 v0, p0

    iget v12, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    and-int/lit8 v2, v12, 0x2

    if-nez v2, :cond_13

    .line 1912
    new-instance v21, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .end local v21    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3, v6}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;-><init>(Lscala/concurrent/forkjoin/ForkJoinPool;Lscala/concurrent/forkjoin/ForkJoinWorkerThread;II)V

    .line 1913
    .restart local v21    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    iget v12, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    and-int/lit8 v2, v12, 0x2

    if-nez v2, :cond_11

    sget-object v8, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v13, v12, 0x2

    .end local v12    # "ps":I
    .restart local v13    # "ps":I
    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_14

    move v12, v13

    .line 1915
    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    :cond_11
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->acquirePlock()I

    move-result v12

    .line 1916
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v35, v0

    if-eqz v35, :cond_12

    move-object/from16 v0, v35

    array-length v2, v0

    move/from16 v0, v28

    if-ge v0, v2, :cond_12

    aget-object v2, v35, v28

    if-nez v2, :cond_12

    .line 1917
    aput-object v21, v35, v28

    .line 1918
    :cond_12
    const/high16 v2, -0x80000000

    and-int/2addr v2, v12

    add-int/lit8 v3, v12, 0x2

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    or-int v19, v2, v3

    .line 1919
    .restart local v19    # "nps":I
    sget-object v14, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1920
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    goto/16 :goto_0

    .line 1923
    .end local v19    # "nps":I
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_0

    .end local v12    # "ps":I
    .restart local v13    # "ps":I
    :cond_14
    move v12, v13

    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    goto :goto_4

    .end local v12    # "ps":I
    .end local v21    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v28    # "k":I
    .end local v29    # "m":I
    .restart local v13    # "ps":I
    .restart local v30    # "n":I
    .restart local v31    # "nws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v32    # "p":I
    :cond_15
    move v12, v13

    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    goto/16 :goto_3

    .end local v6    # "r":I
    .end local v12    # "ps":I
    .end local v30    # "n":I
    .end local v31    # "nws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v32    # "p":I
    .end local v35    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v7    # "r":I
    :cond_16
    move v6, v7

    .end local v7    # "r":I
    .restart local v6    # "r":I
    goto/16 :goto_0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 1

    .prologue
    .line 3757
    sget-object v0, Lscala/concurrent/util/Unsafe;->instance:Lsun/misc/Unsafe;

    return-object v0
.end method

.method private helpComplete(Lscala/concurrent/forkjoin/ForkJoinTask;I)I
    .locals 10
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 2288
    .local p1, "task":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz p1, :cond_2

    iget-object v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .local v6, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v6, :cond_2

    array-length v7, v6

    add-int/lit8 v1, v7, -0x1

    .local v1, "m":I
    if-ltz v1, :cond_2

    .line 2290
    const/4 v0, 0x1

    .local v0, "j":I
    move v2, v0

    .line 2291
    .local v2, "origin":I
    :cond_0
    iget v4, p1, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    .local v4, "s":I
    if-gez v4, :cond_1

    .line 2303
    .end local v0    # "j":I
    .end local v1    # "m":I
    .end local v2    # "origin":I
    .end local v4    # "s":I
    .end local v6    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :goto_0
    return v4

    .line 2293
    .restart local v0    # "j":I
    .restart local v1    # "m":I
    .restart local v2    # "origin":I
    .restart local v4    # "s":I
    .restart local v6    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_1
    and-int v7, v0, v1

    aget-object v3, v6, v7

    .local v3, "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pollAndExecCC(Lscala/concurrent/forkjoin/ForkJoinTask;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2294
    move v2, v0

    .line 2295
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    iget-wide v8, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v7, 0x20

    ushr-long/2addr v8, v7

    long-to-int v5, v8

    .local v5, "u":I
    if-gez v5, :cond_2

    shr-int/lit8 v7, v5, 0x10

    if-ltz v7, :cond_0

    .line 2303
    .end local v0    # "j":I
    .end local v1    # "m":I
    .end local v2    # "origin":I
    .end local v3    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v4    # "s":I
    .end local v5    # "u":I
    .end local v6    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2299
    .restart local v0    # "j":I
    .restart local v1    # "m":I
    .restart local v2    # "origin":I
    .restart local v3    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v4    # "s":I
    .restart local v6    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_3
    add-int/lit8 v7, v0, 0x2

    and-int v0, v7, v1

    if-ne v0, v2, :cond_0

    goto :goto_1
.end method

.method private helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V
    .locals 24
    .param p2, "origin"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 2161
    .local p1, "task":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v0, v2

    move/from16 v20, v0

    .local v20, "u":I
    if-gez v20, :cond_1

    shr-int/lit8 v2, v20, 0x10

    if-gez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v22, v0

    .local v22, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v22, :cond_1

    move-object/from16 v0, v22

    array-length v2, v0

    add-int/lit8 v15, v2, -0x1

    .local v15, "m":I
    if-ltz v15, :cond_1

    .line 2164
    move/from16 v13, p2

    .local v13, "k":I
    move v12, v15

    .local v12, "j":I
    move v14, v13

    .end local v13    # "k":I
    .local v14, "k":I
    :goto_0
    if-ltz v12, :cond_1

    .line 2165
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "k":I
    .restart local v13    # "k":I
    and-int v2, v14, v15

    aget-object v18, v22, v2

    .line 2166
    .local v18, "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    move/from16 v16, v15

    .line 2167
    .local v16, "n":I
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-gez v2, :cond_2

    .line 2190
    .end local v12    # "j":I
    .end local v13    # "k":I
    .end local v15    # "m":I
    .end local v16    # "n":I
    .end local v18    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v20    # "u":I
    .end local v22    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_1
    return-void

    .line 2169
    .restart local v12    # "j":I
    .restart local v13    # "k":I
    .restart local v15    # "m":I
    .restart local v16    # "n":I
    .restart local v18    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v20    # "u":I
    .restart local v22    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_2
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    neg-int v2, v2

    move-object/from16 v0, v18

    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    add-int v19, v2, v3

    .local v19, "s":I
    move/from16 v0, v19

    move/from16 v1, v16

    if-gt v0, v1, :cond_4

    move/from16 v16, v19

    if-gtz v19, :cond_4

    .line 2164
    .end local v19    # "s":I
    :cond_3
    :goto_1
    add-int/lit8 v12, v12, -0x1

    move v14, v13

    .end local v13    # "k":I
    .restart local v14    # "k":I
    goto :goto_0

    .line 2172
    .end local v14    # "k":I
    .restart local v13    # "k":I
    .restart local v19    # "s":I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const/16 v2, 0x20

    ushr-long v2, v6, v2

    long-to-int v0, v2

    move/from16 v20, v0

    if-gez v20, :cond_1

    long-to-int v10, v6

    .local v10, "e":I
    if-lez v10, :cond_1

    const v2, 0xffff

    and-int v11, v10, v2

    .local v11, "i":I
    if-lt v15, v11, :cond_1

    aget-object v21, v22, v11

    .local v21, "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v21, :cond_1

    .line 2176
    move-object/from16 v0, v21

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/high16 v4, 0x10000

    add-int v4, v4, v20

    int-to-long v4, v4

    const/16 v23, 0x20

    shl-long v4, v4, v23

    or-long v8, v2, v4

    .line 2178
    .local v8, "nc":J
    move-object/from16 v0, v21

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v3, v10

    if-ne v2, v3, :cond_1

    .line 2180
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2181
    const/high16 v2, 0x10000

    add-int/2addr v2, v10

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move-object/from16 v0, v21

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2182
    move-object/from16 v0, v21

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v17, v0

    .local v17, "p":Ljava/lang/Thread;
    if-eqz v17, :cond_5

    .line 2183
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 2184
    :cond_5
    add-int/lit8 v16, v16, -0x1

    if-gtz v16, :cond_0

    goto :goto_1
.end method

.method private idleAwaitWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;JJ)V
    .locals 16
    .param p1, "w"    # Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .param p2, "currentCtl"    # J
    .param p4, "prevCtl"    # J

    .prologue
    .line 2123
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    move-wide/from16 v0, p4

    long-to-int v2, v0

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-wide v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_2

    .line 2126
    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-short v2, v2

    neg-int v10, v2

    .line 2127
    .local v10, "dc":I
    if-gez v10, :cond_3

    const-wide/32 v14, 0xbebc200

    .line 2128
    .local v14, "parkTime":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    add-long/2addr v2, v14

    const-wide/32 v4, 0x1e8480

    sub-long v12, v2, v4

    .line 2129
    .local v12, "deadline":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    .line 2130
    .local v11, "wt":Ljava/lang/Thread;
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_2

    .line 2131
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2132
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->PARKBLOCKER:J

    move-object/from16 v0, p0

    invoke-virtual {v2, v11, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2133
    move-object/from16 v0, p1

    iput-object v11, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 2134
    move-object/from16 v0, p0

    iget-wide v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    .line 2135
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v14, v15}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 2136
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 2137
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->PARKBLOCKER:J

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v4, v5, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2138
    move-object/from16 v0, p0

    iget-wide v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v2, v2, p2

    if-eqz v2, :cond_4

    .line 2149
    .end local v10    # "dc":I
    .end local v11    # "wt":Ljava/lang/Thread;
    .end local v12    # "deadline":J
    .end local v14    # "parkTime":J
    :cond_2
    :goto_1
    return-void

    .line 2127
    .restart local v10    # "dc":I
    :cond_3
    add-int/lit8 v2, v10, 0x1

    int-to-long v2, v2

    const-wide/32 v4, 0x77359400

    mul-long v14, v2, v4

    goto :goto_0

    .line 2140
    .restart local v11    # "wt":Ljava/lang/Thread;
    .restart local v12    # "deadline":J
    .restart local v14    # "parkTime":J
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v2, v12, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2142
    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    const v3, 0x7fffffff

    or-int/2addr v2, v3

    move-object/from16 v0, p1

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2143
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    .line 2144
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_1
.end method

.method private static final declared-synchronized nextPoolId()I
    .locals 2

    .prologue
    .line 1444
    const-class v1, Lscala/concurrent/forkjoin/ForkJoinPool;

    monitor-enter v1

    :try_start_0
    sget v0, Lscala/concurrent/forkjoin/ForkJoinPool;->poolNumberSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lscala/concurrent/forkjoin/ForkJoinPool;->poolNumberSequence:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private releasePlock(I)V
    .locals 1
    .param p1, "ps"    # I

    .prologue
    .line 1651
    iput p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    .line 1652
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    .line 1653
    return-void

    .line 1652
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final scan(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 41
    .param p1, "w"    # Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;",
            ")",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 2021
    move-object/from16 v0, p0

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    move/from16 v33, v0

    .line 2022
    .local v33, "ps":I
    if-eqz p1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v39, v0

    .local v39, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v39, :cond_4

    move-object/from16 v0, v39

    array-length v2, v0

    add-int/lit8 v29, v2, -0x1

    .local v29, "m":I
    if-ltz v29, :cond_4

    .line 2023
    move-object/from16 v0, p1

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    move/from16 v24, v0

    .line 2024
    .local v24, "ec":I
    move-object/from16 v0, p1

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    move/from16 v35, v0

    .local v35, "r":I
    shl-int/lit8 v2, v35, 0xd

    xor-int v35, v35, v2

    ushr-int/lit8 v2, v35, 0x11

    xor-int v35, v35, v2

    shl-int/lit8 v2, v35, 0x5

    xor-int v35, v35, v2

    move/from16 v0, v35

    move-object/from16 v1, p1

    iput v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    .line 2025
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    .line 2026
    add-int v2, v29, v29

    add-int/lit8 v2, v2, 0x1

    or-int/lit16 v2, v2, 0x1ff

    const v4, 0x1ffff

    and-int v28, v2, v4

    .line 2029
    .local v28, "j":I
    :cond_0
    add-int v2, v35, v28

    and-int v2, v2, v29

    aget-object v34, v39, v2

    .local v34, "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v34, :cond_5

    move-object/from16 v0, v34

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    move/from16 v22, v0

    .local v22, "b":I
    move-object/from16 v0, v34

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v22, v2

    if-gez v2, :cond_5

    move-object/from16 v0, v34

    iget-object v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v3, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v3, :cond_5

    .line 2031
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    and-int v2, v2, v22

    sget v4, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v4

    sget v4, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int v26, v2, v4

    .line 2032
    .local v26, "i":I
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move/from16 v0, v26

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2034
    .local v6, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    move-object/from16 v0, v34

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    move/from16 v0, v22

    if-ne v2, v0, :cond_2

    if-ltz v24, :cond_2

    if-eqz v6, :cond_2

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move/from16 v0, v26

    int-to-long v4, v0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2036
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, v34

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, v34

    iget v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v2, v4

    if-gez v2, :cond_1

    .line 2037
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 2107
    .end local v3    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v6    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v22    # "b":I
    .end local v24    # "ec":I
    .end local v26    # "i":I
    .end local v28    # "j":I
    .end local v29    # "m":I
    .end local v34    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v35    # "r":I
    .end local v39    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_1
    :goto_0
    return-object v6

    .line 2040
    .restart local v3    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v6    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v22    # "b":I
    .restart local v24    # "ec":I
    .restart local v26    # "i":I
    .restart local v28    # "j":I
    .restart local v29    # "m":I
    .restart local v34    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v35    # "r":I
    .restart local v39    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_2
    if-ltz v24, :cond_3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v2, 0x30

    shr-long/2addr v4, v2

    long-to-int v2, v4

    if-gtz v2, :cond_5

    .line 2041
    add-int v2, v35, v28

    and-int v2, v2, v29

    move-object/from16 v0, p1

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    .line 2048
    .end local v3    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v6    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v22    # "b":I
    .end local v26    # "i":I
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    move/from16 v31, v0

    .local v31, "ns":I
    if-eqz v31, :cond_6

    .line 2049
    sget-object v8, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Lscala/concurrent/forkjoin/ForkJoinPool;->STEALCOUNT:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->stealCount:J

    .local v12, "sc":J
    move/from16 v0, v31

    int-to-long v4, v0

    add-long v14, v12, v4

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v15}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2051
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    .line 2107
    .end local v12    # "sc":J
    .end local v24    # "ec":I
    .end local v28    # "j":I
    .end local v29    # "m":I
    .end local v31    # "ns":I
    .end local v34    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v35    # "r":I
    .end local v39    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_4
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 2045
    .restart local v24    # "ec":I
    .restart local v28    # "j":I
    .restart local v29    # "m":I
    .restart local v34    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v35    # "r":I
    .restart local v39    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_5
    add-int/lit8 v28, v28, -0x1

    if-gez v28, :cond_0

    goto :goto_1

    .line 2053
    .restart local v31    # "ns":I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    move/from16 v0, v33

    if-ne v2, v0, :cond_4

    .line 2055
    move-object/from16 v0, p0

    iget-wide v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    move-wide/from16 v18, v0

    .local v18, "c":J
    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v23, v0

    .local v23, "e":I
    if-gez v23, :cond_7

    .line 2056
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    goto :goto_2

    .line 2058
    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    move/from16 v25, v0

    .local v25, "h":I
    if-gez v25, :cond_9

    .line 2059
    if-ltz v24, :cond_f

    .line 2060
    move/from16 v0, v24

    int-to-long v4, v0

    const-wide/high16 v8, 0x1000000000000L

    sub-long v8, v18, v8

    const-wide v10, -0x100000000L

    and-long/2addr v8, v10

    or-long v20, v4, v8

    .line 2062
    .local v20, "nc":J
    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    .line 2063
    const/high16 v2, -0x80000000

    or-int v2, v2, v24

    move-object/from16 v0, p1

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2064
    move-object/from16 v0, p0

    iget-wide v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v2, v4, v18

    if-nez v2, :cond_8

    sget-object v14, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v21}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2065
    :cond_8
    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2080
    .end local v20    # "nc":J
    :cond_9
    :goto_3
    if-gez v25, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    move/from16 v25, v0

    if-ltz v25, :cond_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v39, v0

    if-eqz v39, :cond_4

    move-object/from16 v0, v39

    array-length v2, v0

    move/from16 v0, v25

    if-ge v0, v2, :cond_4

    aget-object v34, v39, v25

    if-eqz v34, :cond_4

    .line 2084
    move-object/from16 v0, p0

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v2, v4

    add-int/lit8 v30, v2, -0x1

    .line 2085
    .local v30, "n":I
    :cond_b
    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_11

    const/16 v27, 0x0

    .line 2086
    .local v27, "idleCount":I
    :goto_4
    move-object/from16 v0, v34

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int v2, v27, v2

    move-object/from16 v0, v34

    iget v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    add-int v36, v2, v4

    .local v36, "s":I
    move/from16 v0, v36

    move/from16 v1, v30

    if-gt v0, v1, :cond_c

    move/from16 v30, v36

    if-lez v36, :cond_4

    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    move-wide/from16 v18, v0

    const/16 v2, 0x20

    ushr-long v4, v18, v2

    long-to-int v0, v4

    move/from16 v37, v0

    .local v37, "u":I
    if-gez v37, :cond_4

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v23, v0

    if-lez v23, :cond_4

    const v2, 0xffff

    and-int v26, v23, v2

    .restart local v26    # "i":I
    move/from16 v0, v29

    move/from16 v1, v26

    if-lt v0, v1, :cond_4

    aget-object v38, v39, v26

    .local v38, "v":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v38, :cond_4

    .line 2092
    move-object/from16 v0, v38

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    int-to-long v4, v2

    const/high16 v2, 0x10000

    add-int v2, v2, v37

    int-to-long v8, v2

    const/16 v2, 0x20

    shl-long/2addr v8, v2

    or-long v20, v4, v8

    .line 2094
    .restart local v20    # "nc":J
    move-object/from16 v0, v38

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v4, -0x80000000

    or-int v4, v4, v23

    if-ne v2, v4, :cond_4

    sget-object v14, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v21}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2097
    move/from16 v0, v25

    move-object/from16 v1, v38

    iput v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    .line 2098
    const/high16 v2, 0x10000

    add-int v2, v2, v23

    const v4, 0x7fffffff

    and-int/2addr v2, v4

    move-object/from16 v0, v38

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2099
    move-object/from16 v0, v38

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v32, v0

    .local v32, "p":Ljava/lang/Thread;
    if-eqz v32, :cond_d

    .line 2100
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 2101
    :cond_d
    add-int/lit8 v30, v30, -0x1

    if-gtz v30, :cond_b

    goto/16 :goto_2

    .line 2066
    .end local v26    # "i":I
    .end local v27    # "idleCount":I
    .end local v30    # "n":I
    .end local v32    # "p":Ljava/lang/Thread;
    .end local v36    # "s":I
    .end local v37    # "u":I
    .end local v38    # "v":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_e
    const/16 v2, 0x30

    shr-long v4, v18, v2

    long-to-int v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v5, 0xffff

    and-int/2addr v4, v5

    rsub-int/lit8 v4, v4, 0x1

    if-ne v2, v4, :cond_9

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v16, v20

    .line 2067
    invoke-direct/range {v14 .. v19}, Lscala/concurrent/forkjoin/ForkJoinPool;->idleAwaitWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;JJ)V

    goto/16 :goto_3

    .line 2069
    .end local v20    # "nc":J
    :cond_f
    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_9

    move-object/from16 v0, p0

    iget-wide v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    cmp-long v2, v4, v18

    if-nez v2, :cond_9

    .line 2070
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v40

    .line 2071
    .local v40, "wt":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2072
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->PARKBLOCKER:J

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-virtual {v2, v0, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2073
    move-object/from16 v0, v40

    move-object/from16 v1, p1

    iput-object v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 2074
    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-gez v2, :cond_10

    .line 2075
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v2, v4, v8, v9}, Lsun/misc/Unsafe;->park(ZJ)V

    .line 2076
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-object v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .line 2077
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->PARKBLOCKER:J

    const/4 v7, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v2, v0, v4, v5, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_3

    .line 2085
    .end local v40    # "wt":Ljava/lang/Thread;
    .restart local v30    # "n":I
    :cond_11
    const/16 v27, -0x1

    goto/16 :goto_4
.end method

.method private tryAddWorker()V
    .locals 14

    .prologue
    const/16 v13, 0x20

    .line 1662
    :cond_0
    iget-wide v4, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .local v4, "c":J
    ushr-long v0, v4, v13

    long-to-int v11, v0

    .local v11, "u":I
    if-gez v11, :cond_1

    const v0, 0x8000

    and-int/2addr v0, v11

    if-eqz v0, :cond_1

    long-to-int v0, v4

    if-nez v0, :cond_1

    .line 1663
    add-int/lit8 v0, v11, 0x1

    const v1, 0xffff

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v1, v11

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-long v0, v0

    shl-long v6, v0, v13

    .line 1665
    .local v6, "nc":J
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    const/4 v9, 0x0

    .line 1668
    .local v9, "ex":Ljava/lang/Throwable;
    const/4 v12, 0x0

    .line 1670
    .local v12, "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    :try_start_0
    iget-object v10, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->factory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .local v10, "fac":Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;
    if-eqz v10, :cond_2

    invoke-interface {v10, p0}, Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Lscala/concurrent/forkjoin/ForkJoinPool;)Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 1672
    invoke-virtual {v12}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1682
    .end local v6    # "nc":J
    .end local v9    # "ex":Ljava/lang/Throwable;
    .end local v10    # "fac":Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;
    .end local v12    # "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    :cond_1
    :goto_0
    return-void

    .line 1675
    .restart local v6    # "nc":J
    .restart local v9    # "ex":Ljava/lang/Throwable;
    .restart local v12    # "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    :catch_0
    move-exception v8

    .line 1676
    .local v8, "e":Ljava/lang/Throwable;
    move-object v9, v8

    .line 1678
    .end local v8    # "e":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0, v12, v9}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private tryHelpStealer(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I
    .locals 21
    .param p1, "joiner"    # Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 2211
    .local p2, "task":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    const/16 v16, 0x0

    .local v16, "stat":I
    const/16 v17, 0x0

    .line 2212
    .local v17, "steps":I
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2214
    :cond_0
    move-object/from16 v18, p2

    .line 2215
    .local v18, "subtask":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    move-object/from16 v11, p1

    .line 2217
    .local v11, "j":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :goto_0
    move-object/from16 v0, p2

    iget v15, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    .local v15, "s":I
    if-gez v15, :cond_2

    .line 2218
    move/from16 v16, v15

    .line 2275
    .end local v11    # "j":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v15    # "s":I
    .end local v18    # "subtask":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :cond_1
    :goto_1
    return v16

    .line 2221
    .restart local v11    # "j":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v15    # "s":I
    .restart local v18    # "subtask":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v20, v0

    .local v20, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v20, :cond_1

    move-object/from16 v0, v20

    array-length v2, v0

    add-int/lit8 v12, v2, -0x1

    .local v12, "m":I
    if-lez v12, :cond_1

    .line 2223
    iget v2, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    or-int/lit8 v2, v2, 0x1

    and-int v9, v2, v12

    .local v9, "h":I
    aget-object v19, v20, v9

    .local v19, "v":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v19, :cond_3

    move-object/from16 v0, v19

    iget-object v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    move-object/from16 v0, v18

    if-eq v2, v0, :cond_6

    .line 2225
    :cond_3
    move v14, v9

    .line 2226
    .local v14, "origin":I
    :cond_4
    add-int/lit8 v2, v9, 0x2

    and-int v9, v2, v12

    and-int/lit8 v2, v9, 0xf

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    move-object/from16 v0, v18

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    iget-object v2, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_0

    .line 2229
    :cond_5
    aget-object v19, v20, v9

    if-eqz v19, :cond_7

    move-object/from16 v0, v19

    iget-object v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_7

    .line 2231
    iput v9, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    .line 2240
    .end local v14    # "origin":I
    :cond_6
    :goto_2
    move-object/from16 v0, v18

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    .line 2242
    move-object/from16 v0, v19

    iget v8, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .local v8, "b":I
    move-object/from16 v0, v19

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v8, v2

    if-gez v2, :cond_9

    move-object/from16 v0, v19

    iget-object v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v3, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;
    if-eqz v3, :cond_9

    .line 2243
    array-length v2, v3

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v8

    sget v4, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v4

    sget v4, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int v10, v2, v4

    .line 2244
    .local v10, "i":I
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v4, v10

    invoke-virtual {v2, v3, v4, v5}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2246
    .local v6, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    move-object/from16 v0, v18

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    iget-object v2, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_0

    move-object/from16 v0, v19

    iget-object v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_0

    .line 2249
    const/16 v16, 0x1

    .line 2250
    if-eqz v6, :cond_8

    move-object/from16 v0, v19

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v2, v8, :cond_8

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v4, v10

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2252
    add-int/lit8 v2, v8, 0x1

    move-object/from16 v0, v19

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .line 2253
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->runSubtask(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_2

    .line 2234
    .end local v3    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;
    .end local v6    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v8    # "b":I
    .end local v10    # "i":I
    .restart local v14    # "origin":I
    :cond_7
    if-ne v9, v14, :cond_4

    goto/16 :goto_1

    .line 2255
    .end local v14    # "origin":I
    .restart local v3    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;
    .restart local v6    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v8    # "b":I
    .restart local v10    # "i":I
    :cond_8
    move-object/from16 v0, v19

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v2, v8, :cond_6

    add-int/lit8 v17, v17, 0x1

    const/16 v2, 0x40

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    goto/16 :goto_1

    .line 2259
    .end local v3    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;
    .end local v6    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v10    # "i":I
    :cond_9
    move-object/from16 v0, v19

    iget-object v13, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2260
    .local v13, "next":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    move-object/from16 v0, v18

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_0

    iget-object v2, v11, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_0

    move-object/from16 v0, v19

    iget-object v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_0

    .line 2263
    if-eqz v13, :cond_1

    add-int/lit8 v17, v17, 0x1

    const/16 v2, 0x40

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    .line 2266
    move-object/from16 v18, v13

    .line 2267
    move-object/from16 v11, v19

    .line 2268
    goto/16 :goto_0
.end method

.method private tryTerminate(ZZ)Z
    .locals 36
    .param p1, "now"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 2593
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v2, :cond_0

    .line 2594
    const/4 v2, 0x0

    .line 2626
    :goto_0
    return v2

    .line 2595
    :cond_0
    move-object/from16 v0, p0

    iget v6, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    .local v6, "ps":I
    if-ltz v6, :cond_3

    .line 2596
    if-nez p2, :cond_1

    .line 2597
    const/4 v2, 0x0

    goto :goto_0

    .line 2598
    :cond_1
    and-int/lit8 v2, v6, 0x2

    if-nez v2, :cond_2

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v7, v6, 0x2

    .end local v6    # "ps":I
    .local v7, "ps":I
    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_e

    move v6, v7

    .line 2600
    .end local v7    # "ps":I
    .restart local v6    # "ps":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->acquirePlock()I

    move-result v6

    .line 2601
    :goto_1
    add-int/lit8 v2, v6, 0x2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    const/high16 v3, -0x80000000

    or-int v13, v2, v3

    .line 2602
    .local v13, "nps":I
    sget-object v8, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object/from16 v9, p0

    move v12, v6

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2603
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    .line 2606
    .end local v13    # "nps":I
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    move-wide/from16 v18, v0

    .local v18, "c":J
    const-wide v2, 0x80000000L

    and-long v2, v2, v18

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 2607
    const/16 v2, 0x20

    ushr-long v2, v18, v2

    long-to-int v2, v2

    int-to-short v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    neg-int v3, v3

    if-ne v2, v3, :cond_4

    .line 2608
    monitor-enter p0

    .line 2609
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 2610
    monitor-exit p0

    .line 2612
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 2610
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2614
    :cond_5
    if-nez p1, :cond_9

    .line 2616
    const/16 v2, 0x30

    shr-long v2, v18, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    neg-int v3, v3

    if-eq v2, v3, :cond_6

    .line 2617
    const/4 v2, 0x0

    goto :goto_0

    .line 2618
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v34, v0

    .local v34, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v34, :cond_9

    .line 2619
    const/16 v29, 0x0

    .local v29, "i":I
    :goto_2
    move-object/from16 v0, v34

    array-length v2, v0

    move/from16 v0, v29

    if-ge v0, v2, :cond_9

    .line 2620
    aget-object v33, v34, v29

    .local v33, "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v33, :cond_8

    .line 2621
    invoke-virtual/range {v33 .. v33}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2622
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 2623
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2625
    :cond_7
    and-int/lit8 v2, v29, 0x1

    if-eqz v2, :cond_8

    move-object/from16 v0, v33

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v2, :cond_8

    .line 2626
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2619
    :cond_8
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 2631
    .end local v29    # "i":I
    .end local v33    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v34    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_9
    sget-object v14, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    const-wide v2, 0x80000000L

    or-long v20, v18, v2

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v21}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2632
    const/16 v32, 0x0

    .local v32, "pass":I
    :goto_3
    const/4 v2, 0x3

    move/from16 v0, v32

    if-ge v0, v2, :cond_3

    .line 2634
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v34, v0

    .restart local v34    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v34, :cond_d

    .line 2635
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v30, v0

    .line 2636
    .local v30, "n":I
    const/16 v29, 0x0

    .restart local v29    # "i":I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_c

    .line 2637
    aget-object v33, v34, v29

    .restart local v33    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v33, :cond_b

    .line 2638
    const/4 v2, -0x1

    move-object/from16 v0, v33

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 2639
    if-lez v32, :cond_b

    .line 2640
    invoke-virtual/range {v33 .. v33}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 2641
    const/4 v2, 0x1

    move/from16 v0, v32

    if-le v0, v2, :cond_b

    move-object/from16 v0, v33

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->owner:Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    move-object/from16 v35, v0

    .local v35, "wt":Ljava/lang/Thread;
    if-eqz v35, :cond_b

    .line 2642
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_a

    .line 2644
    :try_start_1
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2648
    :cond_a
    :goto_5
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 2636
    .end local v35    # "wt":Ljava/lang/Thread;
    :cond_b
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 2657
    .end local v33    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_c
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    move-wide/from16 v24, v0

    .local v24, "cc":J
    move-wide/from16 v0, v24

    long-to-int v2, v0

    const v3, 0x7fffffff

    and-int v28, v2, v3

    .local v28, "e":I
    if-eqz v28, :cond_d

    const v2, 0xffff

    and-int v29, v28, v2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_d

    if-ltz v29, :cond_d

    aget-object v33, v34, v29

    .restart local v33    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v33, :cond_d

    .line 2658
    move-object/from16 v0, v33

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/high16 v4, 0x1000000000000L

    add-long v4, v4, v24

    const-wide/high16 v8, -0x1000000000000L

    and-long/2addr v4, v8

    or-long/2addr v2, v4

    const-wide v4, 0xffff80000000L

    and-long v4, v4, v24

    or-long v26, v2, v4

    .line 2661
    .local v26, "nc":J
    move-object/from16 v0, v33

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int v3, v3, v28

    if-ne v2, v3, :cond_c

    sget-object v20, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v22, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v21, p0

    invoke-virtual/range {v20 .. v27}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2663
    const/high16 v2, 0x10000

    add-int v2, v2, v28

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move-object/from16 v0, v33

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2664
    const/4 v2, -0x1

    move-object/from16 v0, v33

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 2665
    move-object/from16 v0, v33

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v31, v0

    .local v31, "p":Ljava/lang/Thread;
    if-eqz v31, :cond_c

    .line 2666
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_6

    .line 2632
    .end local v24    # "cc":J
    .end local v26    # "nc":J
    .end local v28    # "e":I
    .end local v29    # "i":I
    .end local v30    # "n":I
    .end local v31    # "p":Ljava/lang/Thread;
    .end local v33    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_d
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_3

    .line 2645
    .restart local v29    # "i":I
    .restart local v30    # "n":I
    .restart local v33    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v35    # "wt":Ljava/lang/Thread;
    :catch_0
    move-exception v2

    goto/16 :goto_5

    .end local v6    # "ps":I
    .end local v18    # "c":J
    .end local v29    # "i":I
    .end local v30    # "n":I
    .end local v32    # "pass":I
    .end local v33    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v34    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v35    # "wt":Ljava/lang/Thread;
    .restart local v7    # "ps":I
    :cond_e
    move v6, v7

    .end local v7    # "ps":I
    .restart local v6    # "ps":I
    goto/16 :goto_1
.end method


# virtual methods
.method final awaitJoin(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I
    .locals 10
    .param p1, "joiner"    # Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 2364
    .local p2, "task":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    const/4 v9, 0x0

    .line 2365
    .local v9, "s":I
    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    iget v9, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v9, :cond_7

    .line 2366
    iget-object v8, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2367
    .local v8, "prevJoin":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    iput-object p2, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2368
    :cond_0
    iget v9, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v9, :cond_1

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Lscala/concurrent/forkjoin/ForkJoinTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2370
    :cond_1
    if-ltz v9, :cond_2

    iget v9, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v9, :cond_2

    .line 2371
    iget v0, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-direct {p0, p2, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V

    .line 2372
    iget v9, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v9, :cond_2

    instance-of v0, p2, Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz v0, :cond_2

    .line 2374
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpComplete(Lscala/concurrent/forkjoin/ForkJoinTask;I)I

    move-result v9

    .line 2376
    :cond_2
    :goto_0
    if-ltz v9, :cond_6

    iget v9, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v9, :cond_6

    .line 2377
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryHelpStealer(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I

    move-result v9

    if-nez v9, :cond_2

    :cond_3
    iget v9, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v9, :cond_2

    .line 2380
    iget v0, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-direct {p0, p2, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V

    .line 2381
    iget v9, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v9, :cond_2

    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryCompensate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2382
    invoke-virtual {p2}, Lscala/concurrent/forkjoin/ForkJoinTask;->trySetSignal()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v9, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v9, :cond_4

    .line 2383
    monitor-enter p2

    .line 2384
    :try_start_0
    iget v0, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_5

    .line 2386
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2392
    :goto_1
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2395
    :cond_4
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    iget-wide v4, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .local v4, "c":J
    const-wide/high16 v6, 0x1000000000000L

    add-long/2addr v6, v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 2391
    .end local v4    # "c":J
    :cond_5
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 2392
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2400
    :cond_6
    iput-object v8, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2402
    .end local v8    # "prevJoin":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :cond_7
    return v9

    .line 2387
    .restart local v8    # "prevJoin":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z
    .locals 23
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 3482
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    .line 3484
    .local v8, "nanos":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v16

    .line 3485
    .local v16, "thread":Ljava/lang/Thread;
    move-object/from16 v0, v16

    instance-of v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v18, v16

    check-cast v18, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .local v18, "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    move-object/from16 v0, v18

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 3487
    move-object/from16 v0, v18

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpQuiescePool(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 3488
    const/16 v19, 0x1

    .line 3515
    .end local v18    # "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    :goto_0
    return v19

    .line 3490
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 3492
    .local v14, "startTime":J
    const/4 v11, 0x0

    .line 3493
    .local v11, "r":I
    const/4 v5, 0x1

    .line 3495
    .local v5, "found":Z
    :cond_1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->isQuiescent()Z

    move-result v19

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v17, v0

    .local v17, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v7, v19, -0x1

    .local v7, "m":I
    if-ltz v7, :cond_6

    .line 3496
    if-nez v5, :cond_3

    .line 3497
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    sub-long v20, v20, v14

    cmp-long v19, v20, v8

    if-lez v19, :cond_2

    .line 3498
    const/16 v19, 0x0

    goto :goto_0

    .line 3499
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 3501
    :cond_3
    const/4 v5, 0x0

    .line 3502
    add-int/lit8 v19, v7, 0x1

    shl-int/lit8 v6, v19, 0x2

    .local v6, "j":I
    move v12, v11

    .end local v11    # "r":I
    .local v12, "r":I
    :goto_2
    if-ltz v6, :cond_7

    .line 3504
    add-int/lit8 v11, v12, 0x1

    .end local v12    # "r":I
    .restart local v11    # "r":I
    and-int v19, v12, v7

    aget-object v10, v17, v19

    .local v10, "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v10, :cond_5

    iget v4, v10, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .local v4, "b":I
    iget v0, v10, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    move/from16 v19, v0

    sub-int v19, v4, v19

    if-gez v19, :cond_5

    .line 3505
    const/4 v5, 0x1

    .line 3506
    invoke-virtual {v10, v4}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pollAt(I)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v13

    .local v13, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v13, :cond_1

    .line 3507
    iget v0, v10, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    move/from16 v19, v0

    iget v0, v10, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    if-gez v19, :cond_4

    .line 3508
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 3509
    :cond_4
    invoke-virtual {v13}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    goto :goto_1

    .line 3502
    .end local v4    # "b":I
    .end local v13    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :cond_5
    add-int/lit8 v6, v6, -0x1

    move v12, v11

    .end local v11    # "r":I
    .restart local v12    # "r":I
    goto :goto_2

    .line 3515
    .end local v6    # "j":I
    .end local v7    # "m":I
    .end local v10    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v12    # "r":I
    .end local v17    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v11    # "r":I
    :cond_6
    const/16 v19, 0x1

    goto :goto_0

    .end local v11    # "r":I
    .restart local v6    # "j":I
    .restart local v7    # "m":I
    .restart local v12    # "r":I
    .restart local v17    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_7
    move v11, v12

    .end local v12    # "r":I
    .restart local v11    # "r":I
    goto :goto_1
.end method

.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 17
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 3446
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3447
    new-instance v11, Ljava/lang/InterruptedException;

    invoke-direct {v11}, Ljava/lang/InterruptedException;-><init>()V

    throw v11

    .line 3448
    :cond_0
    sget-object v11, Lscala/concurrent/forkjoin/ForkJoinPool;->common:Lscala/concurrent/forkjoin/ForkJoinPool;

    move-object/from16 v0, p0

    if-ne v0, v11, :cond_1

    .line 3449
    invoke-virtual/range {p0 .. p3}, Lscala/concurrent/forkjoin/ForkJoinPool;->awaitQuiescence(JLjava/util/concurrent/TimeUnit;)Z

    .line 3450
    const/4 v10, 0x0

    .line 3467
    :goto_0
    return v10

    .line 3452
    :cond_1
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 3453
    .local v6, "nanos":J
    invoke-virtual/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->isTerminated()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3454
    const/4 v10, 0x1

    goto :goto_0

    .line 3455
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 3456
    .local v8, "startTime":J
    const/4 v10, 0x0

    .line 3457
    .local v10, "terminated":Z
    monitor-enter p0

    .line 3458
    move-wide v12, v6

    .local v12, "waitTime":J
    const-wide/16 v4, 0x0

    .line 3459
    .local v4, "millis":J
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->isTerminated()Z

    move-result v11

    if-nez v11, :cond_3

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_3

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-wide/16 v14, 0x0

    cmp-long v11, v4, v14

    if-gtz v11, :cond_4

    :cond_3
    const/4 v10, 0x1

    :goto_2
    if-eqz v10, :cond_5

    .line 3466
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 3459
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 3463
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 3464
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    sub-long/2addr v14, v8

    sub-long v12, v6, v14

    goto :goto_1
.end method

.method final deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V
    .locals 38
    .param p1, "wt"    # Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1745
    const/16 v36, 0x0

    .line 1746
    .local v36, "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->workQueue:Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v36, v0

    if-eqz v36, :cond_3

    .line 1748
    const/4 v2, -0x1

    move-object/from16 v0, v36

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 1749
    move-object/from16 v0, v36

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    int-to-long v0, v2

    move-wide/from16 v32, v0

    .line 1750
    .local v32, "ns":J
    :cond_0
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->STEALCOUNT:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->stealCount:J

    .local v6, "sc":J
    add-long v8, v6, v32

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1752
    move-object/from16 v0, p0

    iget v12, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    .local v12, "ps":I
    and-int/lit8 v2, v12, 0x2

    if-nez v2, :cond_1

    sget-object v8, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v10, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v13, v12, 0x2

    .end local v12    # "ps":I
    .local v13, "ps":I
    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_a

    move v12, v13

    .line 1754
    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->acquirePlock()I

    move-result v12

    .line 1755
    :goto_0
    const/high16 v2, -0x80000000

    and-int/2addr v2, v12

    add-int/lit8 v3, v12, 0x2

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    or-int v19, v2, v3

    .line 1757
    .local v19, "nps":I
    :try_start_0
    move-object/from16 v0, v36

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    move/from16 v30, v0

    .line 1758
    .local v30, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    .line 1759
    .local v37, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_2

    if-ltz v30, :cond_2

    move-object/from16 v0, v37

    array-length v2, v0

    move/from16 v0, v30

    if-ge v0, v2, :cond_2

    aget-object v2, v37, v30

    move-object/from16 v0, v36

    if-ne v2, v0, :cond_2

    .line 1760
    const/4 v2, 0x0

    aput-object v2, v37, v30
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    :cond_2
    sget-object v14, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1763
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    .line 1768
    .end local v6    # "sc":J
    .end local v12    # "ps":I
    .end local v19    # "nps":I
    .end local v30    # "idx":I
    .end local v32    # "ns":J
    .end local v37    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_3
    sget-object v20, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v22, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    move-wide/from16 v24, v0

    .local v24, "c":J
    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, v24, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0x100000000L

    sub-long v4, v24, v4

    const-wide v8, 0xffff00000000L

    and-long/2addr v4, v8

    or-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long v4, v4, v24

    or-long v26, v2, v4

    move-object/from16 v21, p0

    invoke-virtual/range {v20 .. v27}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1773
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryTerminate(ZZ)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v36, :cond_5

    move-object/from16 v0, v36

    iget-object v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v2, :cond_5

    .line 1774
    invoke-virtual/range {v36 .. v36}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->cancelAll()V

    .line 1776
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    move-wide/from16 v24, v0

    const/16 v2, 0x20

    ushr-long v2, v24, v2

    long-to-int v0, v2

    move/from16 v34, v0

    .local v34, "u":I
    if-gez v34, :cond_5

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v28, v0

    .local v28, "e":I
    if-ltz v28, :cond_5

    .line 1777
    if-lez v28, :cond_8

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v37, v0

    .restart local v37    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v37, :cond_5

    const v2, 0xffff

    and-int v29, v28, v2

    .local v29, "i":I
    move-object/from16 v0, v37

    array-length v2, v0

    move/from16 v0, v29

    if-ge v0, v2, :cond_5

    aget-object v35, v37, v29

    .local v35, "v":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-nez v35, :cond_7

    .line 1800
    .end local v28    # "e":I
    .end local v29    # "i":I
    .end local v34    # "u":I
    .end local v35    # "v":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v37    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_5
    :goto_1
    if-nez p2, :cond_9

    .line 1801
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinTask;->helpExpungeStaleExceptions()V

    .line 1804
    :goto_2
    return-void

    .line 1762
    .end local v24    # "c":J
    .restart local v6    # "sc":J
    .restart local v12    # "ps":I
    .restart local v19    # "nps":I
    .restart local v32    # "ns":J
    :catchall_0
    move-exception v2

    sget-object v14, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v16, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object/from16 v15, p0

    move/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1763
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    :cond_6
    throw v2

    .line 1782
    .end local v6    # "sc":J
    .end local v12    # "ps":I
    .end local v19    # "nps":I
    .end local v32    # "ns":J
    .restart local v24    # "c":J
    .restart local v28    # "e":I
    .restart local v29    # "i":I
    .restart local v34    # "u":I
    .restart local v35    # "v":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v37    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_7
    move-object/from16 v0, v35

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/high16 v4, 0x10000

    add-int v4, v4, v34

    int-to-long v4, v4

    const/16 v8, 0x20

    shl-long/2addr v4, v8

    or-long v26, v2, v4

    .line 1784
    .local v26, "nc":J
    move-object/from16 v0, v35

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int v3, v3, v28

    if-ne v2, v3, :cond_5

    .line 1786
    sget-object v20, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v22, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v21, p0

    invoke-virtual/range {v20 .. v27}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1787
    const/high16 v2, 0x10000

    add-int v2, v2, v28

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move-object/from16 v0, v35

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1788
    move-object/from16 v0, v35

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    move-object/from16 v31, v0

    .local v31, "p":Ljava/lang/Thread;
    if-eqz v31, :cond_5

    .line 1789
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    goto :goto_1

    .line 1794
    .end local v26    # "nc":J
    .end local v29    # "i":I
    .end local v31    # "p":Ljava/lang/Thread;
    .end local v35    # "v":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v37    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_8
    move/from16 v0, v34

    int-to-short v2, v0

    if-gez v2, :cond_5

    .line 1795
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryAddWorker()V

    goto :goto_1

    .line 1803
    .end local v28    # "e":I
    .end local v34    # "u":I
    :cond_9
    invoke-static/range {p2 .. p2}, Lscala/concurrent/forkjoin/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v24    # "c":J
    .restart local v6    # "sc":J
    .restart local v13    # "ps":I
    .restart local v32    # "ns":J
    :cond_a
    move v12, v13

    .end local v13    # "ps":I
    .restart local v12    # "ps":I
    goto/16 :goto_0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 2966
    if-nez p1, :cond_0

    .line 2967
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2969
    :cond_0
    instance-of v1, p1, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 2970
    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2973
    .local v0, "job":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :goto_0
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 2974
    return-void

    .line 2972
    .end local v0    # "job":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    .restart local v0    # "job":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public execute(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2953
    .local p1, "task":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-nez p1, :cond_0

    .line 2954
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2955
    :cond_0
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 2956
    return-void
.end method

.method final externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1818
    .local p1, "task":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->submitters:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;

    .local v16, "z":Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;
    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .local v15, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_2

    array-length v2, v15

    add-int/lit8 v12, v2, -0x1

    .local v12, "m":I
    if-ltz v12, :cond_2

    move-object/from16 v0, v16

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$Submitter;->seed:I

    and-int/2addr v2, v12

    and-int/lit8 v2, v2, 0x7e

    aget-object v3, v15, v2

    .local v3, "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v3, :cond_2

    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->QLOCK:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1822
    iget v10, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .local v10, "b":I
    iget v14, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 1823
    .local v14, "s":I
    iget-object v8, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v8, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v8, :cond_1

    array-length v9, v8

    .local v9, "an":I
    add-int/lit8 v2, v14, 0x1

    sub-int v13, v2, v10

    .local v13, "n":I
    if-le v9, v13, :cond_1

    .line 1824
    add-int/lit8 v2, v9, -0x1

    and-int/2addr v2, v14

    sget v4, Lscala/concurrent/forkjoin/ForkJoinPool;->ASHIFT:I

    shl-int/2addr v2, v4

    sget v4, Lscala/concurrent/forkjoin/ForkJoinPool;->ABASE:I

    add-int v11, v2, v4

    .line 1825
    .local v11, "j":I
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    int-to-long v4, v11

    move-object/from16 v0, p1

    invoke-virtual {v2, v8, v4, v5, v0}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1826
    add-int/lit8 v2, v14, 0x1

    iput v2, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 1827
    const/4 v2, 0x0

    iput v2, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 1828
    const/4 v2, 0x2

    if-gt v13, v2, :cond_0

    .line 1829
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 1835
    .end local v3    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v8    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v9    # "an":I
    .end local v10    # "b":I
    .end local v11    # "j":I
    .end local v12    # "m":I
    .end local v13    # "n":I
    .end local v14    # "s":I
    .end local v15    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_0
    :goto_0
    return-void

    .line 1832
    .restart local v3    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v8    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v10    # "b":I
    .restart local v12    # "m":I
    .restart local v14    # "s":I
    .restart local v15    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_1
    const/4 v2, 0x0

    iput v2, v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    .line 1834
    .end local v3    # "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v8    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v10    # "b":I
    .end local v12    # "m":I
    .end local v14    # "s":I
    .end local v15    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_2
    invoke-direct/range {p0 .. p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->fullExternalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_0
.end method

.method final helpJoinOnce(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 3
    .param p1, "joiner"    # Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2415
    .local p2, "task":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget v1, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    .local v1, "s":I
    if-ltz v1, :cond_5

    .line 2416
    iget-object v0, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2417
    .local v0, "prevJoin":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    iput-object p2, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2418
    :cond_0
    iget v1, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, p2}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->tryRemoveAndExec(Lscala/concurrent/forkjoin/ForkJoinTask;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2420
    :cond_1
    if-ltz v1, :cond_2

    iget v1, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v1, :cond_2

    .line 2421
    iget v2, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-direct {p0, p2, v2}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpSignal(Lscala/concurrent/forkjoin/ForkJoinTask;I)V

    .line 2422
    iget v1, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v1, :cond_2

    instance-of v2, p2, Lscala/concurrent/forkjoin/CountedCompleter;

    if-eqz v2, :cond_2

    .line 2424
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lscala/concurrent/forkjoin/ForkJoinPool;->helpComplete(Lscala/concurrent/forkjoin/ForkJoinTask;I)I

    move-result v1

    .line 2426
    :cond_2
    if-ltz v1, :cond_4

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2428
    :cond_3
    iget v2, p2, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v2, :cond_4

    invoke-direct {p0, p1, p2}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryHelpStealer(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;Lscala/concurrent/forkjoin/ForkJoinTask;)I

    move-result v2

    if-gtz v2, :cond_3

    .line 2430
    :cond_4
    iput-object v0, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 2432
    .end local v0    # "prevJoin":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v1    # "s":I
    :cond_5
    return-void
.end method

.method final helpQuiescePool(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V
    .locals 22
    .param p1, "w"    # Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .prologue
    .line 2462
    const/16 v18, 0x1

    .line 2464
    .local v18, "active":Z
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextLocalTask()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v21

    .local v21, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v21, :cond_2

    .line 2465
    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, p1

    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 2466
    invoke-virtual/range {p0 .. p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 2467
    :cond_1
    invoke-virtual/range {v21 .. v21}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 2469
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextSeed()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lscala/concurrent/forkjoin/ForkJoinPool;->findNonEmptyStealQueue(I)Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-result-object v20

    .local v20, "q":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v20, :cond_6

    .line 2470
    if-nez v18, :cond_4

    .line 2471
    const/16 v18, 0x1

    .line 2472
    :cond_3
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const-wide/high16 v10, 0x1000000000000L

    add-long v8, v6, v10

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2475
    .end local v6    # "c":J
    :cond_4
    move-object/from16 v0, v20

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    move/from16 v19, v0

    .local v19, "b":I
    move-object/from16 v0, v20

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v2, v19, v2

    if-gez v2, :cond_0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pollAt(I)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v21

    if-eqz v21, :cond_0

    .line 2476
    move-object/from16 v0, v20

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    move-object/from16 v0, v20

    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_5

    .line 2477
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 2478
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->runSubtask(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_0

    .line 2481
    .end local v19    # "b":I
    :cond_6
    if-eqz v18, :cond_8

    .line 2482
    move-object/from16 v0, p0

    iget-wide v6, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .restart local v6    # "c":J
    const-wide/high16 v2, 0x1000000000000L

    sub-long v8, v6, v2

    .line 2483
    .local v8, "nc":J
    const/16 v2, 0x30

    shr-long v2, v8, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    if-nez v2, :cond_7

    .line 2490
    .end local v8    # "nc":J
    :goto_1
    return-void

    .line 2485
    .restart local v8    # "nc":J
    :cond_7
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2486
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2488
    .end local v6    # "c":J
    .end local v8    # "nc":J
    :cond_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .restart local v6    # "c":J
    const/16 v2, 0x30

    shr-long v2, v6, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    if-nez v2, :cond_0

    sget-object v10, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    const-wide/high16 v2, 0x1000000000000L

    add-long v16, v6, v2

    move-object/from16 v11, p0

    move-wide v14, v6

    invoke-virtual/range {v10 .. v17}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method final incrementActiveCount()V
    .locals 8

    .prologue
    .line 1934
    :cond_0
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    iget-wide v4, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .local v4, "c":J
    const-wide/high16 v6, 0x1000000000000L

    add-long/2addr v6, v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1935
    return-void
.end method

.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v9, 0x0

    .line 3039
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 3041
    .local v2, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    .line 3043
    .local v0, "done":Z
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Callable;

    .line 3044
    .local v6, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v1, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;

    invoke-direct {v1, v6}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 3045
    .local v1, "f":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TT;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3046
    invoke-virtual {p0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3053
    .end local v1    # "f":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TT;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :catchall_0
    move-exception v7

    move-object v8, v7

    if-nez v0, :cond_2

    .line 3054
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 3055
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3054
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3048
    .end local v3    # "i":I
    .end local v5    # "size":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .restart local v5    # "size":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 3049
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {v7}, Lscala/concurrent/forkjoin/ForkJoinTask;->quietlyJoin()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3048
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3050
    :cond_1
    const/4 v0, 0x1

    .line 3053
    if-nez v0, :cond_3

    .line 3054
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_3
    if-ge v3, v5, :cond_3

    .line 3055
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Future;

    invoke-interface {v7, v9}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 3054
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "size":I
    :cond_2
    throw v8

    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "size":I
    :cond_3
    return-object v2
.end method

.method public isQuiescent()Z
    .locals 3

    .prologue
    .line 3163
    iget-wide v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v2, 0xffff

    and-int/2addr v1, v2

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 3427
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 6

    .prologue
    .line 3397
    iget-wide v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .line 3398
    .local v0, "c":J
    const-wide v2, 0x80000000L

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    long-to-int v2, v2

    int-to-short v2, v2

    iget v3, p0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v4, 0xffff

    and-int/2addr v3, v4

    neg-int v3, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3660
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3664
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method final registerWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;)Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .locals 30
    .param p1, "wt"    # Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .prologue
    .line 1698
    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->setDaemon(Z)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    move-object/from16 v22, v0

    .local v22, "handler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v22, :cond_0

    .line 1700
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 1703
    :cond_0
    sget-object v4, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lscala/concurrent/forkjoin/ForkJoinPool;->INDEXSEED:J

    move-object/from16 v0, p0

    iget v8, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->indexSeed:I

    .local v8, "s":I
    const v5, 0x61c88647

    add-int v9, v8, v5

    .end local v8    # "s":I
    .local v9, "s":I
    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v9, :cond_0

    .line 1704
    new-instance v28, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v0, p0

    iget v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    ushr-int/lit8 v4, v4, 0x10

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v4, v9}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;-><init>(Lscala/concurrent/forkjoin/ForkJoinPool;Lscala/concurrent/forkjoin/ForkJoinWorkerThread;II)V

    .line 1705
    .local v28, "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    move-object/from16 v0, p0

    iget v14, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    .local v14, "ps":I
    and-int/lit8 v4, v14, 0x2

    if-nez v4, :cond_1

    sget-object v10, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v12, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    add-int/lit8 v15, v14, 0x2

    .end local v14    # "ps":I
    .local v15, "ps":I
    move-object/from16 v11, p0

    invoke-virtual/range {v10 .. v15}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_8

    move v14, v15

    .line 1707
    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->acquirePlock()I

    move-result v14

    .line 1708
    :goto_0
    const/high16 v4, -0x80000000

    and-int/2addr v4, v14

    add-int/lit8 v5, v14, 0x2

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    or-int v21, v4, v5

    .line 1710
    .local v21, "nps":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v29, v0

    .local v29, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v29, :cond_5

    .line 1711
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v24, v0

    .local v24, "n":I
    add-int/lit8 v23, v24, -0x1

    .line 1712
    .local v23, "m":I
    shl-int/lit8 v4, v9, 0x1

    or-int/lit8 v26, v4, 0x1

    .line 1713
    .local v26, "r":I
    and-int v26, v26, v23

    aget-object v4, v29, v26

    if-eqz v4, :cond_4

    .line 1714
    const/16 v25, 0x0

    .line 1715
    .local v25, "probes":I
    const/4 v4, 0x4

    move/from16 v0, v24

    if-gt v0, v4, :cond_3

    const/16 v27, 0x2

    .line 1716
    .local v27, "step":I
    :cond_2
    :goto_1
    add-int v4, v26, v27

    and-int v26, v4, v23

    aget-object v4, v29, v26

    if-eqz v4, :cond_4

    .line 1717
    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 1718
    shl-int/lit8 v24, v24, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    check-cast v29, [Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .restart local v29    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .line 1719
    add-int/lit8 v23, v24, -0x1

    .line 1720
    const/16 v25, 0x0

    goto :goto_1

    .line 1715
    .end local v27    # "step":I
    :cond_3
    ushr-int/lit8 v4, v24, 0x1

    const v5, 0xfffe

    and-int/2addr v4, v5

    add-int/lit8 v27, v4, 0x2

    goto :goto_1

    .line 1724
    .end local v25    # "probes":I
    :cond_4
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    move/from16 v0, v26

    move-object/from16 v1, v28

    iput v0, v1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1725
    aput-object v28, v29, v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1728
    .end local v23    # "m":I
    .end local v24    # "n":I
    .end local v26    # "r":I
    :cond_5
    sget-object v16, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object/from16 v17, p0

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1729
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    .line 1731
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workerNamePrefix:Ljava/lang/String;

    move-object/from16 v0, v28

    iget v5, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->setName(Ljava/lang/String;)V

    .line 1732
    return-object v28

    .line 1728
    .end local v29    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :catchall_0
    move-exception v4

    sget-object v16, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v18, Lscala/concurrent/forkjoin/ForkJoinPool;->PLOCK:J

    move-object/from16 v17, p0

    move/from16 v20, v14

    invoke-virtual/range {v16 .. v21}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1729
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->releasePlock(I)V

    :cond_7
    throw v4

    .end local v14    # "ps":I
    .end local v21    # "nps":I
    .restart local v15    # "ps":I
    :cond_8
    move v14, v15

    .end local v15    # "ps":I
    .restart local v14    # "ps":I
    goto/16 :goto_0
.end method

.method final runWorker(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V
    .locals 1
    .param p1, "w"    # Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .prologue
    .line 1978
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->growArray()[Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1979
    :cond_0
    invoke-direct {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->scan(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    invoke-virtual {p1, v0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->runTask(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    iget v0, p1, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v0, :cond_0

    .line 1980
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 3363
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->checkPermission()V

    .line 3364
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 3365
    return-void
.end method

.method public shutdownNow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 3386
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->checkPermission()V

    .line 3387
    invoke-direct {p0, v0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryTerminate(ZZ)Z

    .line 3388
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method final signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V
    .locals 18
    .param p1, "q"    # Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .prologue
    .line 1943
    move-object/from16 v0, p1

    iget v11, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poolIndex:I

    .line 1945
    .local v11, "hint":I
    :cond_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .local v6, "c":J
    const/16 v2, 0x20

    ushr-long v2, v6, v2

    long-to-int v14, v2

    .local v14, "u":I
    if-gez v14, :cond_1

    .line 1946
    long-to-int v10, v6

    .local v10, "e":I
    if-lez v10, :cond_3

    .line 1947
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v16, v0

    .local v16, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v16, :cond_1

    move-object/from16 v0, v16

    array-length v2, v0

    const v3, 0xffff

    and-int v12, v10, v3

    .local v12, "i":I
    if-le v2, v12, :cond_1

    aget-object v15, v16, v12

    .local v15, "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v15, :cond_1

    iget v2, v15, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v3, v10

    if-ne v2, v3, :cond_1

    .line 1949
    iget v2, v15, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const/high16 v4, 0x10000

    add-int/2addr v4, v14

    int-to-long v4, v4

    const/16 v17, 0x20

    shl-long v4, v4, v17

    or-long v8, v2, v4

    .line 1951
    .local v8, "nc":J
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1952
    iput v11, v15, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->hint:I

    .line 1953
    const/high16 v2, 0x10000

    add-int/2addr v2, v10

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, v15, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 1954
    iget-object v13, v15, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .local v13, "p":Ljava/lang/Thread;
    if-eqz v13, :cond_1

    .line 1955
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v13}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 1970
    .end local v8    # "nc":J
    .end local v10    # "e":I
    .end local v12    # "i":I
    .end local v13    # "p":Ljava/lang/Thread;
    .end local v15    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v16    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_1
    :goto_0
    return-void

    .line 1958
    .restart local v8    # "nc":J
    .restart local v10    # "e":I
    .restart local v12    # "i":I
    .restart local v15    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .restart local v16    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    move-object/from16 v0, p1

    iget v3, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int/2addr v2, v3

    if-gtz v2, :cond_0

    goto :goto_0

    .line 1965
    .end local v8    # "nc":J
    .end local v12    # "i":I
    .end local v15    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    .end local v16    # "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_3
    int-to-short v2, v14

    if-gez v2, :cond_1

    .line 1966
    invoke-direct/range {p0 .. p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->tryAddWorker()V

    goto :goto_0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->submit(Ljava/lang/Runnable;)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 474
    invoke-virtual {p0, p1, p2}, Lscala/concurrent/forkjoin/ForkJoinPool;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "x0"    # Ljava/util/concurrent/Callable;

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lscala/concurrent/forkjoin/ForkJoinPool;->submit(Ljava/util/concurrent/Callable;)Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 3020
    if-nez p1, :cond_0

    .line 3021
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 3023
    :cond_0
    instance-of v1, p1, Lscala/concurrent/forkjoin/ForkJoinTask;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 3024
    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 3027
    .local v0, "job":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :goto_0
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 3028
    return-object v0

    .line 3026
    .end local v0    # "job":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :cond_1
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    .restart local v0    # "job":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3009
    .local p2, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p1, p2}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 3010
    .local v0, "job":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TT;>;"
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 3011
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2998
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p1}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2999
    .local v0, "job":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<TT;>;"
    invoke-virtual {p0, v0}, Lscala/concurrent/forkjoin/ForkJoinPool;->externalPush(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 3000
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 24

    .prologue
    .line 3307
    const-wide/16 v10, 0x0

    .local v10, "qt":J
    const-wide/16 v8, 0x0

    .local v8, "qs":J
    const/4 v12, 0x0

    .line 3308
    .local v12, "rc":I
    move-object/from16 v0, p0

    iget-wide v14, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->stealCount:J

    .line 3309
    .local v14, "st":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .line 3311
    .local v4, "c":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v18, v0

    .local v18, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_2

    .line 3312
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v3, v0, :cond_2

    .line 3313
    aget-object v17, v18, v3

    .local v17, "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v17, :cond_0

    .line 3314
    invoke-virtual/range {v17 .. v17}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v13

    .line 3315
    .local v13, "size":I
    and-int/lit8 v19, v3, 0x1

    if-nez v19, :cond_1

    .line 3316
    int-to-long v0, v13

    move-wide/from16 v20, v0

    add-long v8, v8, v20

    .line 3312
    .end local v13    # "size":I
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3318
    .restart local v13    # "size":I
    :cond_1
    int-to-long v0, v13

    move-wide/from16 v20, v0

    add-long v10, v10, v20

    .line 3319
    move-object/from16 v0, v17

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v14, v20

    .line 3320
    invoke-virtual/range {v17 .. v17}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->isApparentlyUnblocked()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 3321
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 3326
    .end local v3    # "i":I
    .end local v13    # "size":I
    .end local v17    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    move/from16 v19, v0

    const v20, 0xffff

    and-int v7, v19, v20

    .line 3327
    .local v7, "pc":I
    const/16 v19, 0x20

    ushr-long v20, v4, v19

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    add-int v16, v7, v19

    .line 3328
    .local v16, "tc":I
    const/16 v19, 0x30

    shr-long v20, v4, v19

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v2, v7, v19

    .line 3329
    .local v2, "ac":I
    if-gez v2, :cond_3

    .line 3330
    const/4 v2, 0x0

    .line 3332
    :cond_3
    const-wide v20, 0x80000000L

    and-long v20, v20, v4

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_5

    .line 3333
    if-nez v16, :cond_4

    const-string v6, "Terminated"

    .line 3336
    .local v6, "level":Ljava/lang/String;
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", parallelism = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", active = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", running = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", steals = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", tasks = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", submissions = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    return-object v19

    .line 3333
    .end local v6    # "level":Ljava/lang/String;
    :cond_4
    const-string v6, "Terminating"

    goto :goto_2

    .line 3335
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->plock:I

    move/from16 v19, v0

    if-gez v19, :cond_6

    const-string v6, "Shutting down"

    .restart local v6    # "level":Ljava/lang/String;
    :goto_3
    goto/16 :goto_2

    .end local v6    # "level":Ljava/lang/String;
    :cond_6
    const-string v6, "Running"

    goto :goto_3
.end method

.method final tryCompensate()Z
    .locals 21

    .prologue
    .line 2314
    move-object/from16 v0, p0

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->config:I

    const v3, 0xffff

    and-int v15, v2, v3

    .line 2316
    .local v15, "pc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->workQueues:[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    move-object/from16 v19, v0

    .local v19, "ws":[Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->ctl:J

    .local v6, "c":J
    long-to-int v10, v6

    .local v10, "e":I
    if-ltz v10, :cond_4

    .line 2317
    if-eqz v10, :cond_1

    const v2, 0xffff

    and-int v13, v10, v2

    .local v13, "i":I
    move-object/from16 v0, v19

    array-length v2, v0

    if-ge v13, v2, :cond_1

    aget-object v18, v19, v13

    .local v18, "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    const/high16 v3, -0x80000000

    or-int/2addr v3, v10

    if-ne v2, v3, :cond_1

    .line 2319
    move-object/from16 v0, v18

    iget v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nextWait:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    const-wide v4, -0x100000000L

    and-long/2addr v4, v6

    or-long v8, v2, v4

    .line 2321
    .local v8, "nc":J
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2322
    const/high16 v2, 0x10000

    add-int/2addr v2, v10

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move-object/from16 v0, v18

    iput v2, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    .line 2323
    move-object/from16 v0, v18

    iget-object v14, v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->parker:Ljava/lang/Thread;

    .local v14, "p":Ljava/lang/Thread;
    if-eqz v14, :cond_0

    .line 2324
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    invoke-virtual {v2, v14}, Lsun/misc/Unsafe;->unpark(Ljava/lang/Object;)V

    .line 2325
    :cond_0
    const/4 v2, 0x1

    .line 2353
    .end local v6    # "c":J
    .end local v8    # "nc":J
    .end local v10    # "e":I
    .end local v13    # "i":I
    .end local v14    # "p":Ljava/lang/Thread;
    .end local v18    # "w":Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
    :goto_0
    return v2

    .line 2328
    .restart local v6    # "c":J
    .restart local v10    # "e":I
    :cond_1
    const/16 v2, 0x20

    ushr-long v2, v6, v2

    long-to-int v2, v2

    int-to-short v0, v2

    move/from16 v17, v0

    .local v17, "tc":I
    if-ltz v17, :cond_2

    const/16 v2, 0x30

    shr-long v2, v6, v2

    long-to-int v2, v2

    add-int/2addr v2, v15

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 2330
    const-wide/high16 v2, 0x1000000000000L

    sub-long v2, v6, v2

    const-wide/high16 v4, -0x1000000000000L

    and-long/2addr v2, v4

    const-wide v4, 0xffffffffffffL

    and-long/2addr v4, v6

    or-long v8, v2, v4

    .line 2331
    .restart local v8    # "nc":J
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2332
    const/4 v2, 0x1

    goto :goto_0

    .line 2334
    .end local v8    # "nc":J
    :cond_2
    add-int v2, v17, v15

    const/16 v3, 0x7fff

    if-ge v2, v3, :cond_4

    .line 2335
    const-wide v2, 0x100000000L

    add-long/2addr v2, v6

    const-wide v4, 0xffff00000000L

    and-long/2addr v2, v4

    const-wide v4, -0xffff00000001L

    and-long/2addr v4, v6

    or-long v8, v2, v4

    .line 2336
    .restart local v8    # "nc":J
    sget-object v2, Lscala/concurrent/forkjoin/ForkJoinPool;->U:Lsun/misc/Unsafe;

    sget-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool;->CTL:J

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v9}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2338
    const/4 v11, 0x0

    .line 2339
    .local v11, "ex":Ljava/lang/Throwable;
    const/16 v20, 0x0

    .line 2341
    .local v20, "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lscala/concurrent/forkjoin/ForkJoinPool;->factory:Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;

    .local v12, "fac":Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    invoke-interface {v12, v0}, Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;->newThread(Lscala/concurrent/forkjoin/ForkJoinPool;)Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 2343
    invoke-virtual/range {v20 .. v20}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2344
    const/4 v2, 0x1

    goto :goto_0

    .line 2346
    .end local v12    # "fac":Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;
    :catch_0
    move-exception v16

    .line 2347
    .local v16, "rex":Ljava/lang/Throwable;
    move-object/from16 v11, v16

    .line 2349
    .end local v16    # "rex":Ljava/lang/Throwable;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lscala/concurrent/forkjoin/ForkJoinPool;->deregisterWorker(Lscala/concurrent/forkjoin/ForkJoinWorkerThread;Ljava/lang/Throwable;)V

    .line 2353
    .end local v6    # "c":J
    .end local v8    # "nc":J
    .end local v10    # "e":I
    .end local v11    # "ex":Ljava/lang/Throwable;
    .end local v17    # "tc":I
    .end local v20    # "wt":Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method
