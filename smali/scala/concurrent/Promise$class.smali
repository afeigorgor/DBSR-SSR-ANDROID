.class public abstract Lscala/concurrent/Promise$class;
.super Ljava/lang/Object;
.source "Promise.scala"


# direct methods
.method public static $init$(Lscala/concurrent/Promise;)V
    .locals 0
    .param p0, "$this"    # Lscala/concurrent/Promise;

    .prologue
    .line 28
    return-void
.end method

.method public static complete(Lscala/concurrent/Promise;Lscala/util/Try;)Lscala/concurrent/Promise;
    .locals 2
    .param p0, "$this"    # Lscala/concurrent/Promise;
    .param p1, "result"    # Lscala/util/Try;

    .prologue
    .line 55
    invoke-interface {p0, p1}, Lscala/concurrent/Promise;->tryComplete(Lscala/util/Try;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Promise already completed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
