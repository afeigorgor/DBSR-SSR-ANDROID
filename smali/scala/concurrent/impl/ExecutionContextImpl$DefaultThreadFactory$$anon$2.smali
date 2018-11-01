.class public final Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2;
.super Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
.source "ExecutionContextImpl.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;->newThread(Lscala/concurrent/forkjoin/ForkJoinPool;)Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;Lscala/concurrent/forkjoin/ForkJoinPool;)V
    .locals 0
    .param p1, "$outer"    # Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;
    .param p2, "fjp$1"    # Lscala/concurrent/forkjoin/ForkJoinPool;

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;-><init>(Lscala/concurrent/forkjoin/ForkJoinPool;)V

    return-void
.end method
