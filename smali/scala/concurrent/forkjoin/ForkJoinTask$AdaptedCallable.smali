.class final Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;
.super Lscala/concurrent/forkjoin/ForkJoinTask;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/forkjoin/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AdaptedCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/concurrent/forkjoin/ForkJoinTask",
        "<TT;>;",
        "Ljava/util/concurrent/RunnableFuture",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<+TT;>;"
        }
    .end annotation
.end field

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;, "Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable<TT;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;-><init>()V

    .line 1374
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1375
    :cond_0
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;->callable:Ljava/util/concurrent/Callable;

    .line 1376
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 4

    .prologue
    .line 1381
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;, "Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable<TT;>;"
    :try_start_0
    iget-object v3, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v3}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1382
    const/4 v3, 0x1

    return v3

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    .local v0, "err":Ljava/lang/Error;
    throw v0

    .line 1385
    .end local v0    # "err":Ljava/lang/Error;
    :catch_1
    move-exception v2

    .line 1386
    .local v2, "rex":Ljava/lang/RuntimeException;
    throw v2

    .line 1387
    .end local v2    # "rex":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 1388
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1377
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;, "Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable<TT;>;"
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 1391
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;, "Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable<TT;>;"
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedCallable;->invoke()Ljava/lang/Object;

    return-void
.end method
