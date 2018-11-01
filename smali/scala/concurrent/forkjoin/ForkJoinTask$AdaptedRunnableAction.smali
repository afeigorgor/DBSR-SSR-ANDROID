.class final Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;
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
    name = "AdaptedRunnableAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/concurrent/forkjoin/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/util/concurrent/RunnableFuture",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1355
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;-><init>()V

    .line 1356
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1357
    :cond_0
    iput-object p1, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;->runnable:Ljava/lang/Runnable;

    .line 1358
    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 1359
    const/4 v0, 0x0

    return-object v0
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 1362
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinTask$AdaptedRunnableAction;->invoke()Ljava/lang/Object;

    return-void
.end method
