.class public Lscala/concurrent/impl/Promise$DefaultPromise;
.super Lscala/concurrent/impl/AbstractPromise;
.source "Promise.scala"

# interfaces
.implements Lscala/concurrent/impl/Promise;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/concurrent/impl/Promise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultPromise"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/concurrent/impl/AbstractPromise;",
        "Lscala/concurrent/impl/Promise",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0}, Lscala/concurrent/impl/AbstractPromise;-><init>()V

    invoke-static {p0}, Lscala/concurrent/Promise$class;->$init$(Lscala/concurrent/Promise;)V

    invoke-static {p0}, Lscala/concurrent/Future$class;->$init$(Lscala/concurrent/Future;)V

    invoke-static {p0}, Lscala/concurrent/impl/Promise$class;->$init$(Lscala/concurrent/impl/Promise;)V

    .line 154
    const/4 v0, 0x0

    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {p0, v0, v1}, Lscala/concurrent/impl/Promise$DefaultPromise;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private compressedRoot()Lscala/concurrent/impl/Promise$DefaultPromise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/impl/Promise$DefaultPromise",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    :cond_0
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->getState()Ljava/lang/Object;

    move-result-object v1

    .line 173
    instance-of v2, v1, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v2, :cond_2

    check-cast v1, Lscala/concurrent/impl/Promise$DefaultPromise;

    .line 174
    invoke-direct {v1}, Lscala/concurrent/impl/Promise$DefaultPromise;->root()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object v0

    .line 175
    .local v0, "target":Lscala/concurrent/impl/Promise$DefaultPromise;
    if-ne v1, v0, :cond_1

    .line 172
    .end local v0    # "target":Lscala/concurrent/impl/Promise$DefaultPromise;
    :goto_0
    return-object v0

    .line 175
    .restart local v0    # "target":Lscala/concurrent/impl/Promise$DefaultPromise;
    :cond_1
    invoke-virtual {p0, v1, v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .end local v0    # "target":Lscala/concurrent/impl/Promise$DefaultPromise;
    :cond_2
    move-object v0, p0

    .line 176
    goto :goto_0
.end method

.method private root()Lscala/concurrent/impl/Promise$DefaultPromise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/impl/Promise$DefaultPromise",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    :goto_0
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 187
    instance-of v1, v0, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v1, :cond_0

    move-object p0, v0

    check-cast p0, Lscala/concurrent/impl/Promise$DefaultPromise;

    goto :goto_0

    .line 186
    :cond_0
    return-object p0
.end method

.method private tryCompleteAndGetListeners(Lscala/util/Try;)Lscala/collection/immutable/List;
    .locals 2
    .param p1, "v"    # Lscala/util/Try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try",
            "<TT;>;)",
            "Lscala/collection/immutable/List",
            "<",
            "Lscala/concurrent/impl/CallbackRunnable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 257
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 258
    instance-of v1, v0, Lscala/collection/immutable/List;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/collection/immutable/List;

    .line 260
    invoke-virtual {p0, v0, p1}, Lscala/concurrent/impl/Promise$DefaultPromise;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    :goto_1
    return-object v0

    .line 261
    :cond_1
    instance-of v0, v0, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v0, :cond_2

    .line 262
    invoke-direct {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->compressedRoot()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object p0

    goto :goto_0

    .line 263
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public complete(Lscala/util/Try;)Lscala/concurrent/Promise;
    .locals 1
    .param p1, "result"    # Lscala/util/Try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try",
            "<TT;>;)",
            "Lscala/concurrent/Promise",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p0, p1}, Lscala/concurrent/Promise$class;->complete(Lscala/concurrent/Promise;Lscala/util/Try;)Lscala/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public future()Lscala/concurrent/impl/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/concurrent/impl/Promise",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p0}, Lscala/concurrent/impl/Promise$class;->future(Lscala/concurrent/impl/Promise;)Lscala/concurrent/impl/Promise;

    move-result-object v0

    return-object v0
.end method

.method public onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V
    .locals 2
    .param p1, "func"    # Lscala/Function1;
    .param p2, "executor"    # Lscala/concurrent/ExecutionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<",
            "Lscala/util/Try",
            "<TT;>;TU;>;",
            "Lscala/concurrent/ExecutionContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 268
    invoke-interface {p2}, Lscala/concurrent/ExecutionContext;->prepare()Lscala/concurrent/ExecutionContext;

    move-result-object v0

    .line 269
    .local v0, "preparedEC":Lscala/concurrent/ExecutionContext;
    new-instance v1, Lscala/concurrent/impl/CallbackRunnable;

    invoke-direct {v1, v0, p1}, Lscala/concurrent/impl/CallbackRunnable;-><init>(Lscala/concurrent/ExecutionContext;Lscala/Function1;)V

    .line 270
    .local v1, "runnable":Lscala/concurrent/impl/CallbackRunnable;
    invoke-virtual {p0, v1}, Lscala/concurrent/impl/Promise$DefaultPromise;->scala$concurrent$impl$Promise$DefaultPromise$$dispatchOrAddCallback(Lscala/concurrent/impl/CallbackRunnable;)V

    return-void
.end method

.method public scala$concurrent$impl$Promise$DefaultPromise$$dispatchOrAddCallback(Lscala/concurrent/impl/CallbackRunnable;)V
    .locals 2
    .param p1, "runnable"    # Lscala/concurrent/impl/CallbackRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/concurrent/impl/CallbackRunnable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 279
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->getState()Ljava/lang/Object;

    move-result-object v0

    .line 280
    instance-of v1, v0, Lscala/util/Try;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/util/Try;

    invoke-virtual {p1, v0}, Lscala/concurrent/impl/CallbackRunnable;->executeWithValue(Lscala/util/Try;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 279
    :goto_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void

    .line 281
    :cond_1
    instance-of v1, v0, Lscala/concurrent/impl/Promise$DefaultPromise;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lscala/concurrent/impl/Promise$DefaultPromise;->compressedRoot()Lscala/concurrent/impl/Promise$DefaultPromise;

    move-result-object p0

    goto :goto_0

    .line 282
    :cond_2
    instance-of v1, v0, Lscala/collection/immutable/List;

    if-eqz v1, :cond_3

    check-cast v0, Lscala/collection/immutable/List;

    invoke-virtual {v0, p1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lscala/concurrent/impl/Promise$DefaultPromise;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 279
    :cond_3
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public tryComplete(Lscala/util/Try;)Z
    .locals 4
    .param p1, "value"    # Lscala/util/Try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 244
    sget-object v2, Lscala/concurrent/impl/Promise$;->MODULE$:Lscala/concurrent/impl/Promise$;

    invoke-virtual {v2, p1}, Lscala/concurrent/impl/Promise$;->scala$concurrent$impl$Promise$$resolveTry(Lscala/util/Try;)Lscala/util/Try;

    move-result-object v0

    .line 245
    .local v0, "resolved":Lscala/util/Try;
    invoke-direct {p0, v0}, Lscala/concurrent/impl/Promise$DefaultPromise;->tryCompleteAndGetListeners(Lscala/util/Try;)Lscala/collection/immutable/List;

    move-result-object v1

    .line 246
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 245
    :goto_0
    return v2

    .line 247
    :cond_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 248
    .local v1, "these1":Lscala/collection/immutable/List;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/concurrent/impl/CallbackRunnable;

    invoke-virtual {v2, v0}, Lscala/concurrent/impl/CallbackRunnable;->executeWithValue(Lscala/util/Try;)V

    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "these1":Lscala/collection/immutable/List;
    check-cast v1, Lscala/collection/immutable/List;

    .restart local v1    # "these1":Lscala/collection/immutable/List;
    goto :goto_1
.end method
