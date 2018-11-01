.class public Lscala/concurrent/impl/CallbackRunnable;
.super Ljava/lang/Object;
.source "Promise.scala"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final executor:Lscala/concurrent/ExecutionContext;

.field private final onComplete:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Lscala/util/Try",
            "<TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private value:Lscala/util/Try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/util/Try",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/concurrent/ExecutionContext;Lscala/Function1;)V
    .locals 1
    .param p1, "executor"    # Lscala/concurrent/ExecutionContext;
    .param p2, "onComplete"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/ExecutionContext;",
            "Lscala/Function1",
            "<",
            "Lscala/util/Try",
            "<TT;>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    iput-object p1, p0, Lscala/concurrent/impl/CallbackRunnable;->executor:Lscala/concurrent/ExecutionContext;

    iput-object p2, p0, Lscala/concurrent/impl/CallbackRunnable;->onComplete:Lscala/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lscala/concurrent/impl/CallbackRunnable;->value:Lscala/util/Try;

    return-void
.end method


# virtual methods
.method public executeWithValue(Lscala/util/Try;)V
    .locals 3
    .param p1, "v"    # Lscala/util/Try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->value()Lscala/util/Try;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lscala/Predef$;->require(Z)V

    .line 37
    invoke-virtual {p0, p1}, Lscala/concurrent/impl/CallbackRunnable;->value_$eq(Lscala/util/Try;)V

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->executor()Lscala/concurrent/ExecutionContext;

    move-result-object v0

    invoke-interface {v0, p0}, Lscala/concurrent/ExecutionContext;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :goto_1
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    :catchall_0
    move-exception v0

    sget-object v1, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    invoke-virtual {v1, v0}, Lscala/util/control/NonFatal$;->unapply(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    throw v0

    :cond_1
    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->executor()Lscala/concurrent/ExecutionContext;

    move-result-object v2

    invoke-virtual {v1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lscala/concurrent/ExecutionContext;->reportFailure(Ljava/lang/Throwable;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1
.end method

.method public executor()Lscala/concurrent/ExecutionContext;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lscala/concurrent/impl/CallbackRunnable;->executor:Lscala/concurrent/ExecutionContext;

    return-object v0
.end method

.method public onComplete()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1",
            "<",
            "Lscala/util/Try",
            "<TT;>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lscala/concurrent/impl/CallbackRunnable;->onComplete:Lscala/Function1;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 31
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->value()Lscala/util/Try;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lscala/Predef$;->require(Z)V

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->onComplete()Lscala/Function1;

    move-result-object v0

    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->value()Lscala/util/Try;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :goto_1
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    sget-object v1, Lscala/util/control/NonFatal$;->MODULE$:Lscala/util/control/NonFatal$;

    invoke-virtual {v1, v0}, Lscala/util/control/NonFatal$;->unapply(Ljava/lang/Throwable;)Lscala/Option;

    move-result-object v1

    invoke-virtual {v1}, Lscala/Option;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    throw v0

    :cond_1
    invoke-virtual {p0}, Lscala/concurrent/impl/CallbackRunnable;->executor()Lscala/concurrent/ExecutionContext;

    move-result-object v2

    invoke-virtual {v1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v2, v0}, Lscala/concurrent/ExecutionContext;->reportFailure(Ljava/lang/Throwable;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1
.end method

.method public value()Lscala/util/Try;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/util/Try",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lscala/concurrent/impl/CallbackRunnable;->value:Lscala/util/Try;

    return-object v0
.end method

.method public value_$eq(Lscala/util/Try;)V
    .locals 0
    .param p1, "x$1"    # Lscala/util/Try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    iput-object p1, p0, Lscala/concurrent/impl/CallbackRunnable;->value:Lscala/util/Try;

    return-void
.end method
