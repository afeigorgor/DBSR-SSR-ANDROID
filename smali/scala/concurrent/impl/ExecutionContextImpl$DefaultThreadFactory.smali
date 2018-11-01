.class public Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "ExecutionContextImpl.scala"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;
.implements Lscala/concurrent/forkjoin/ForkJoinPool$ForkJoinWorkerThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/impl/ExecutionContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultThreadFactory"
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/concurrent/impl/ExecutionContextImpl;

.field private final daemonic:Z


# direct methods
.method public constructor <init>(Lscala/concurrent/impl/ExecutionContextImpl;Z)V
    .locals 1
    .param p1, "$outer"    # Lscala/concurrent/impl/ExecutionContextImpl;
    .param p2, "daemonic"    # Z

    .prologue
    .line 33
    iput-boolean p2, p0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;->daemonic:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;->$outer:Lscala/concurrent/impl/ExecutionContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;->wire(Ljava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public newThread(Lscala/concurrent/forkjoin/ForkJoinPool;)Lscala/concurrent/forkjoin/ForkJoinWorkerThread;
    .locals 1
    .param p1, "fjp"    # Lscala/concurrent/forkjoin/ForkJoinPool;

    .prologue
    .line 42
    new-instance v0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2;

    invoke-direct {v0, p0, p1}, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory$$anon$2;-><init>(Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;Lscala/concurrent/forkjoin/ForkJoinPool;)V

    invoke-virtual {p0, v0}, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;->wire(Ljava/lang/Thread;)Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lscala/concurrent/forkjoin/ForkJoinWorkerThread;

    return-object v0
.end method

.method public synthetic scala$concurrent$impl$ExecutionContextImpl$DefaultThreadFactory$$$outer()Lscala/concurrent/impl/ExecutionContextImpl;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;->$outer:Lscala/concurrent/impl/ExecutionContextImpl;

    return-object v0
.end method

.method public wire(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Thread;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 35
    iget-boolean v0, p0, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;->daemonic:Z

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 36
    invoke-virtual {p0}, Lscala/concurrent/impl/ExecutionContextImpl$DefaultThreadFactory;->scala$concurrent$impl$ExecutionContextImpl$DefaultThreadFactory$$$outer()Lscala/concurrent/impl/ExecutionContextImpl;

    move-result-object v0

    iget-object v0, v0, Lscala/concurrent/impl/ExecutionContextImpl;->scala$concurrent$impl$ExecutionContextImpl$$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 37
    return-object p1
.end method
