.class public abstract Lscala/concurrent/impl/Promise$class;
.super Ljava/lang/Object;
.source "Promise.scala"


# direct methods
.method public static $init$(Lscala/concurrent/impl/Promise;)V
    .locals 0
    .param p0, "$this"    # Lscala/concurrent/impl/Promise;

    .prologue
    .line 20
    return-void
.end method

.method public static future(Lscala/concurrent/impl/Promise;)Lscala/concurrent/impl/Promise;
    .locals 0
    .param p0, "$this"    # Lscala/concurrent/impl/Promise;

    .prologue
    .line 21
    return-object p0
.end method
