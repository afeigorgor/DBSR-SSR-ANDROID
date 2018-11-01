.class final Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;
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
    name = "AdaptedRunnable"
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
.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 1337
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;, "Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable<TT;>;"
    .local p2, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;-><init>()V

    .line 1338
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1339
    :cond_0
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    .line 1340
    iput-object p2, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    .line 1341
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    .prologue
    .line 1344
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;, "Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable<TT;>;"
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public final getRawResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1342
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;, "Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable<TT;>;"
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 1345
    .local p0, "this":Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;, "Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable<TT;>;"
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnable;->invoke()Ljava/lang/Object;

    return-void
.end method
