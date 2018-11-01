.class final Lscala/concurrent/forkjoin/ForkJoinPool$EmptyTask;
.super Lscala/concurrent/forkjoin/ForkJoinTask;
.source "ForkJoinPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/forkjoin/ForkJoinPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmptyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/concurrent/forkjoin/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 916
    invoke-direct {p0}, Lscala/concurrent/forkjoin/ForkJoinTask;-><init>()V

    const/high16 v0, -0x10000000

    iput v0, p0, Lscala/concurrent/forkjoin/ForkJoinPool$EmptyTask;->status:I

    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 914
    invoke-virtual {p0}, Lscala/concurrent/forkjoin/ForkJoinPool$EmptyTask;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x0

    return-object v0
.end method
