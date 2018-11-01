.class public abstract Lscala/collection/generic/IterableForwarder$class;
.super Ljava/lang/Object;
.source "IterableForwarder.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/IterableForwarder;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/generic/IterableForwarder;

    .prologue
    .line 30
    return-void
.end method

.method public static sameElements(Lscala/collection/generic/IterableForwarder;Lscala/collection/GenIterable;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/IterableForwarder;
    .param p1, "that"    # Lscala/collection/GenIterable;

    .prologue
    .line 39
    invoke-interface {p0}, Lscala/collection/generic/IterableForwarder;->underlying()Lscala/collection/Iterable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Iterable;->sameElements(Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method
