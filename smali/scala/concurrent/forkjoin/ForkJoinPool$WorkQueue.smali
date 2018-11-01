.class final Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;
.super Ljava/lang/Object;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/forkjoin/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WorkQueue"
.end annotation


# static fields
.field private static final ABASE:I

.field private static final ASHIFT:I

.field private static final QLOCK:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field array:[Lscala/concurrent/forkjoin/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile base:I

.field volatile currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;"
        }
    .end annotation
.end field

.field volatile eventCount:I

.field hint:I

.field final mode:I

.field nextWait:I

.field nsteals:I

.field final owner:Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

.field volatile parker:Ljava/lang/Thread;

.field final pool:Lscala/concurrent/forkjoin/ForkJoinPool;

.field poolIndex:I

.field volatile qlock:I

.field seed:I

.field top:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 1381
    :try_start_0
    invoke-static {}, Lscala/concurrent/forkjoin/ForkJoinPool;->access$000()Lsun/misc/Unsafe;

    move-result-object v4

    sput-object v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    .line 1382
    const-class v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;

    .line 1383
    .local v2, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, [Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1384
    .local v0, "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const-string v5, "qlock"

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->QLOCK:J

    .line 1386
    sget-object v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v4

    sput v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    .line 1387
    sget-object v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v4, v0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v3

    .line 1388
    .local v3, "scale":I
    add-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 1389
    new-instance v4, Ljava/lang/Error;

    const-string v5, "data type scale not a power of two"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1391
    .end local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "scale":I
    :catch_0
    move-exception v1

    .line 1392
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    invoke-direct {v4, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1390
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "ak":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "scale":I
    :cond_0
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1f

    sput v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1394
    return-void
.end method

.method constructor <init>(Lscala/concurrent/forkjoin/ForkJoinPool;Lscala/concurrent/forkjoin/ForkJoinWorkerThread;II)V
    .locals 1
    .param p1, "pool"    # Lscala/concurrent/forkjoin/ForkJoinPool;
    .param p2, "owner"    # Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    .param p3, "mode"    # I
    .param p4, "seed"    # I

    .prologue
    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    .line 1026
    iput-object p2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->owner:Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .line 1027
    iput p3, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->mode:I

    .line 1028
    iput p4, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    .line 1030
    const/16 v0, 0x1000

    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .line 1031
    return-void
.end method

.method private pollAndExecAll()V
    .locals 1

    .prologue
    .line 1252
    :goto_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poll()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    .local v0, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 1253
    invoke-virtual {v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 1254
    :cond_0
    return-void
.end method

.method private popAndExecAll()V
    .locals 9

    .prologue
    .line 1240
    :cond_0
    :goto_0
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v1, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    .local v6, "m":I
    if-ltz v6, :cond_1

    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v7, v0, -0x1

    .local v7, "s":I
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int v0, v7, v0

    if-ltz v0, :cond_1

    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    and-int v5, v6, v7

    sget v8, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v5, v8

    sget v8, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v5, v8

    int-to-long v2, v5

    .local v2, "j":J
    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v4, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v4, :cond_1

    .line 1241
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    iput v7, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 1243
    invoke-virtual {v4}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 1246
    .end local v2    # "j":J
    .end local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v6    # "m":I
    .end local v7    # "s":I
    :cond_1
    return-void
.end method


# virtual methods
.method final cancelAll()V
    .locals 2

    .prologue
    .line 1208
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentJoin:Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-static {v1}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancelIgnoringExceptions(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 1209
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-static {v1}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancelIgnoringExceptions(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    .line 1210
    :goto_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poll()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    .local v0, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 1211
    invoke-static {v0}, Lscala/concurrent/forkjoin/ForkJoinTask;->cancelIgnoringExceptions(Lscala/concurrent/forkjoin/ForkJoinTask;)V

    goto :goto_0

    .line 1212
    :cond_0
    return-void
.end method

.method final growArray()[Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1085
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1086
    .local v1, "oldA":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    array-length v0, v1

    shl-int/lit8 v12, v0, 0x1

    .line 1087
    .local v12, "size":I
    :goto_0
    const/high16 v0, 0x4000000

    if-le v12, v0, :cond_1

    .line 1088
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    const-string v2, "Queue capacity exceeded"

    invoke-direct {v0, v2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    .end local v12    # "size":I
    :cond_0
    const/16 v12, 0x2000

    goto :goto_0

    .line 1090
    .restart local v12    # "size":I
    :cond_1
    new-array v6, v12, [Lscala/concurrent/forkjoin/ForkJoinTask;

    iput-object v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1091
    .local v6, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v1, :cond_4

    array-length v0, v1

    add-int/lit8 v10, v0, -0x1

    .local v10, "oldMask":I
    if-ltz v10, :cond_4

    iget v13, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .local v13, "t":I
    iget v7, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .local v7, "b":I
    sub-int v0, v13, v7

    if-lez v0, :cond_4

    .line 1093
    add-int/lit8 v9, v12, -0x1

    .line 1096
    .local v9, "mask":I
    :cond_2
    and-int v0, v7, v10

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v11, v0, v2

    .line 1097
    .local v11, "oldj":I
    and-int v0, v7, v9

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v8, v0, v2

    .line 1098
    .local v8, "j":I
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v11

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1099
    .local v4, "x":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v4, :cond_3

    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1101
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    invoke-virtual {v0, v6, v2, v3, v4}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1102
    :cond_3
    add-int/lit8 v7, v7, 0x1

    if-ne v7, v13, :cond_2

    .line 1104
    .end local v4    # "x":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v7    # "b":I
    .end local v8    # "j":I
    .end local v9    # "mask":I
    .end local v10    # "oldMask":I
    .end local v11    # "oldj":I
    .end local v13    # "t":I
    :cond_4
    return-object v6
.end method

.method final isApparentlyUnblocked()Z
    .locals 3

    .prologue
    .line 1367
    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->eventCount:I

    if-ltz v2, :cond_0

    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->owner:Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    .local v1, "wt":Ljava/lang/Thread;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    .local v0, "s":Ljava/lang/Thread$State;
    sget-object v2, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    .end local v0    # "s":Ljava/lang/Thread$State;
    .end local v1    # "wt":Ljava/lang/Thread;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final isEmpty()Z
    .locals 10

    .prologue
    .line 1048
    iget v4, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v3, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .local v3, "s":I
    sub-int v2, v4, v3

    .line 1049
    .local v2, "n":I
    if-gez v2, :cond_0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v0, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    array-length v4, v0

    add-int/lit8 v1, v4, -0x1

    .local v1, "m":I
    if-ltz v1, :cond_0

    sget-object v4, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v5, v1

    sget v6, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v5, v6

    int-to-long v6, v5

    sget v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    int-to-long v8, v5

    add-long/2addr v6, v8

    invoke-virtual {v4, v0, v6, v7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .end local v0    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v1    # "m":I
    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method final nextLocalTask()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1174
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->mode:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pop()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->poll()Lscala/concurrent/forkjoin/ForkJoinTask;

    move-result-object v0

    goto :goto_0
.end method

.method final nextSeed()I
    .locals 2

    .prologue
    .line 1222
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    .line 1223
    .local v0, "r":I
    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 1224
    ushr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    .line 1225
    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->seed:I

    return v0
.end method

.method final poll()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1151
    :cond_0
    :goto_0
    iget v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v6, v0

    if-gez v0, :cond_2

    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v1, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v1, :cond_2

    .line 1152
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v6

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v7, v0, v2

    .line 1153
    .local v7, "j":I
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v7

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1154
    .local v4, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v4, :cond_1

    .line 1155
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_0

    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v7

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .line 1167
    .end local v1    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v7    # "j":I
    :goto_1
    return-object v4

    .line 1161
    .restart local v1    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v7    # "j":I
    :cond_1
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_0

    .line 1162
    add-int/lit8 v0, v6, 0x1

    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v2, :cond_3

    .end local v1    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v7    # "j":I
    :cond_2
    move-object v4, v5

    .line 1167
    goto :goto_1

    .line 1164
    .restart local v1    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v7    # "j":I
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0
.end method

.method final pollAndExecCC(Lscala/concurrent/forkjoin/ForkJoinTask;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1310
    .local p1, "root":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :cond_0
    iget v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v6, v0

    if-gez v0, :cond_1

    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v1, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    .line 1311
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v6

    sget v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v5

    sget v5, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v5

    int-to-long v2, v0

    .line 1312
    .local v2, "j":J
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .local v7, "o":Ljava/lang/Object;
    if-eqz v7, :cond_1

    instance-of v0, v7, Lscala/concurrent/forkjoin/CountedCompleter;

    if-nez v0, :cond_2

    .line 1330
    .end local v1    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v2    # "j":J
    .end local v7    # "o":Ljava/lang/Object;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .restart local v1    # "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v2    # "j":J
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_2
    move-object v4, v7

    .line 1315
    check-cast v4, Lscala/concurrent/forkjoin/CountedCompleter;

    .local v4, "t":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    move-object v8, v4

    .line 1316
    .local v8, "r":Lscala/concurrent/forkjoin/CountedCompleter;, "Lscala/concurrent/forkjoin/CountedCompleter<*>;"
    :cond_3
    if-ne v8, p1, :cond_4

    .line 1317
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_0

    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    add-int/lit8 v0, v6, 0x1

    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .line 1320
    invoke-virtual {v4}, Lscala/concurrent/forkjoin/CountedCompleter;->doExec()I

    .line 1321
    const/4 v0, 0x1

    goto :goto_1

    .line 1326
    :cond_4
    iget-object v8, v8, Lscala/concurrent/forkjoin/CountedCompleter;->completer:Lscala/concurrent/forkjoin/CountedCompleter;

    if-nez v8, :cond_3

    goto :goto_0
.end method

.method final pollAt(I)Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 7
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1134
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v1, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    .line 1135
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v6, v0, v2

    .line 1136
    .local v6, "j":I
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v4, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v4, :cond_0

    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, p1, :cond_0

    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v6

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .line 1143
    .end local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v6    # "j":I
    :goto_0
    return-object v4

    :cond_0
    move-object v4, v5

    goto :goto_0
.end method

.method final pop()Lscala/concurrent/forkjoin/ForkJoinTask;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1113
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v1, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    .local v6, "m":I
    if-ltz v6, :cond_1

    .line 1114
    :cond_0
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    add-int/lit8 v7, v0, -0x1

    .local v7, "s":I
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int v0, v7, v0

    if-ltz v0, :cond_1

    .line 1115
    and-int v0, v6, v7

    sget v8, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v8

    sget v8, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v0, v8

    int-to-long v2, v0

    .line 1116
    .local v2, "j":J
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v4, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-nez v4, :cond_2

    .end local v2    # "j":J
    .end local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v6    # "m":I
    .end local v7    # "s":I
    :cond_1
    move-object v4, v5

    .line 1124
    :goto_0
    return-object v4

    .line 1118
    .restart local v2    # "j":J
    .restart local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v6    # "m":I
    .restart local v7    # "s":I
    :cond_2
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iput v7, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    goto :goto_0
.end method

.method final push(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1066
    .local p1, "task":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    iget v5, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 1067
    .local v5, "s":I
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v0, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v0, :cond_0

    .line 1068
    array-length v6, v0

    add-int/lit8 v2, v6, -0x1

    .local v2, "m":I
    and-int v6, v2, v5

    sget v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v6, v7

    sget v7, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v1, v6, v7

    .line 1069
    .local v1, "j":I
    sget-object v6, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v8, v1

    invoke-virtual {v6, v0, v8, v9, p1}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1070
    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    iget v7, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    sub-int v3, v6, v7

    .local v3, "n":I
    const/4 v6, 0x2

    if-gt v3, v6, :cond_1

    .line 1071
    iget-object v4, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pool:Lscala/concurrent/forkjoin/ForkJoinPool;

    .local v4, "p":Lscala/concurrent/forkjoin/ForkJoinPool;
    if-eqz v4, :cond_0

    .line 1072
    invoke-virtual {v4, p0}, Lscala/concurrent/forkjoin/ForkJoinPool;->signalWork(Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;)V

    .line 1077
    .end local v1    # "j":I
    .end local v2    # "m":I
    .end local v3    # "n":I
    .end local v4    # "p":Lscala/concurrent/forkjoin/ForkJoinPool;
    :cond_0
    :goto_0
    return-void

    .line 1074
    .restart local v1    # "j":I
    .restart local v2    # "m":I
    .restart local v3    # "n":I
    :cond_1
    if-lt v3, v2, :cond_0

    .line 1075
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->growArray()[Lscala/concurrent/forkjoin/ForkJoinTask;

    goto :goto_0
.end method

.method final queueSize()I
    .locals 3

    .prologue
    .line 1037
    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int v0, v1, v2

    .line 1038
    .local v0, "n":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    neg-int v1, v0

    goto :goto_0
.end method

.method final runSubtask(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1355
    .local p1, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz p1, :cond_0

    .line 1356
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1357
    .local v0, "ps":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    .line 1358
    iput-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1360
    .end local v0    # "ps":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :cond_0
    return-void
.end method

.method final runTask(Lscala/concurrent/forkjoin/ForkJoinTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1338
    .local p1, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz p1, :cond_0

    .line 1339
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    .line 1340
    const/4 v0, 0x0

    iput-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->currentSteal:Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1341
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->nsteals:I

    .line 1342
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    iget v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 1343
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->mode:I

    if-nez v0, :cond_1

    .line 1344
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->popAndExecAll()V

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->pollAndExecAll()V

    goto :goto_0
.end method

.method final tryRemoveAndExec(Lscala/concurrent/forkjoin/ForkJoinTask;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "task":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    const/4 v5, 0x0

    .line 1264
    const/4 v13, 0x1

    .local v13, "stat":Z
    const/4 v11, 0x0

    .local v11, "removed":Z
    const/4 v7, 0x1

    .line 1266
    .local v7, "empty":Z
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v1, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v1, :cond_1

    array-length v0, v1

    add-int/lit8 v9, v0, -0x1

    .local v9, "m":I
    if-ltz v9, :cond_1

    iget v12, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .local v12, "s":I
    iget v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    .local v6, "b":I
    sub-int v10, v12, v6

    .local v10, "n":I
    if-lez v10, :cond_1

    .line 1269
    :cond_0
    add-int/lit8 v12, v12, -0x1

    and-int v0, v12, v9

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v0, v2

    sget v2, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int v8, v0, v2

    .line 1270
    .local v8, "j":I
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/concurrent/forkjoin/ForkJoinTask;

    .line 1271
    .local v4, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-nez v4, :cond_3

    .line 1299
    .end local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .end local v6    # "b":I
    .end local v8    # "j":I
    .end local v9    # "m":I
    .end local v10    # "n":I
    .end local v12    # "s":I
    :cond_1
    :goto_0
    if-eqz v11, :cond_2

    .line 1300
    invoke-virtual {p1}, Lscala/concurrent/forkjoin/ForkJoinTask;->doExec()I

    .line 1301
    :cond_2
    return v13

    .line 1273
    .restart local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    .restart local v6    # "b":I
    .restart local v8    # "j":I
    .restart local v9    # "m":I
    .restart local v10    # "n":I
    .restart local v12    # "s":I
    :cond_3
    if-ne v4, p1, :cond_5

    .line 1274
    add-int/lit8 v0, v12, 0x1

    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v2, :cond_4

    .line 1275
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .end local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    move-result v0

    if-eqz v0, :cond_1

    .line 1277
    iput v12, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 1278
    const/4 v11, 0x1

    goto :goto_0

    .line 1280
    .restart local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :cond_4
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_1

    .line 1281
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    new-instance v5, Lscala/concurrent/forkjoin/ForkJoinPool$EmptyTask;

    invoke-direct {v5}, Lscala/concurrent/forkjoin/ForkJoinPool$EmptyTask;-><init>()V

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .end local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    move-result v11

    goto :goto_0

    .line 1285
    .restart local v4    # "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    :cond_5
    iget v0, v4, Lscala/concurrent/forkjoin/ForkJoinTask;->status:I

    if-ltz v0, :cond_7

    .line 1286
    const/4 v7, 0x0

    .line 1292
    :cond_6
    add-int/lit8 v10, v10, -0x1

    if-nez v10, :cond_0

    .line 1293
    if-nez v7, :cond_1

    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-ne v0, v6, :cond_1

    .line 1294
    const/4 v13, 0x0

    goto :goto_0

    .line 1287
    :cond_7
    add-int/lit8 v0, v12, 0x1

    iget v2, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    if-ne v0, v2, :cond_6

    .line 1288
    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    int-to-long v2, v8

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1289
    iput v12, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    goto :goto_0
.end method

.method final tryUnpush(Lscala/concurrent/forkjoin/ForkJoinTask;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/forkjoin/ForkJoinTask",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1195
    .local p1, "t":Lscala/concurrent/forkjoin/ForkJoinTask;, "Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    iget-object v1, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->array:[Lscala/concurrent/forkjoin/ForkJoinTask;

    .local v1, "a":[Lscala/concurrent/forkjoin/ForkJoinTask;, "[Lscala/concurrent/forkjoin/ForkJoinTask<*>;"
    if-eqz v1, :cond_0

    iget v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .local v6, "s":I
    iget v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->base:I

    if-eq v6, v0, :cond_0

    sget-object v0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->U:Lsun/misc/Unsafe;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v2, v6

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ASHIFT:I

    shl-int/2addr v2, v3

    sget v3, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->ABASE:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    iput v6, p0, Lscala/concurrent/forkjoin/ForkJoinPool$WorkQueue;->top:I

    .line 1199
    const/4 v0, 0x1

    .line 1201
    .end local v6    # "s":I
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
