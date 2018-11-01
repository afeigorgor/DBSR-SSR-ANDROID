.class public abstract Lscala/collection/convert/Wrappers$IterableWrapperTrait$class;
.super Ljava/lang/Object;
.source "Wrappers.scala"


# direct methods
.method public static $init$(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/convert/Wrappers$IterableWrapperTrait;

    .prologue
    .line 22
    return-void
.end method

.method public static isEmpty(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/convert/Wrappers$IterableWrapperTrait;

    .prologue
    .line 26
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait;->underlying()Lscala/collection/Iterable;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static iterator(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)Lscala/collection/convert/Wrappers$IteratorWrapper;
    .locals 3
    .param p0, "$this"    # Lscala/collection/convert/Wrappers$IterableWrapperTrait;

    .prologue
    .line 25
    new-instance v0, Lscala/collection/convert/Wrappers$IteratorWrapper;

    invoke-interface {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait;->scala$collection$convert$Wrappers$IterableWrapperTrait$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    invoke-interface {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait;->underlying()Lscala/collection/Iterable;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/Iterable;->iterator()Lscala/collection/Iterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Wrappers$IteratorWrapper;-><init>(Lscala/collection/convert/Wrappers;Lscala/collection/Iterator;)V

    return-object v0
.end method

.method public static size(Lscala/collection/convert/Wrappers$IterableWrapperTrait;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/convert/Wrappers$IterableWrapperTrait;

    .prologue
    .line 24
    invoke-interface {p0}, Lscala/collection/convert/Wrappers$IterableWrapperTrait;->underlying()Lscala/collection/Iterable;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterable;->size()I

    move-result v0

    return v0
.end method
