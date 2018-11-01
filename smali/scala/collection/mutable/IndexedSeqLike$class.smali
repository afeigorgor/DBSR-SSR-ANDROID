.class public abstract Lscala/collection/mutable/IndexedSeqLike$class;
.super Ljava/lang/Object;
.source "IndexedSeqLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/IndexedSeqLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/IndexedSeqLike;

    .prologue
    .line 37
    return-void
.end method

.method public static thisCollection(Lscala/collection/mutable/IndexedSeqLike;)Lscala/collection/mutable/IndexedSeq;
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/IndexedSeqLike;

    .prologue
    .line 39
    check-cast p0, Lscala/collection/mutable/IndexedSeq;

    .end local p0    # "$this":Lscala/collection/mutable/IndexedSeqLike;
    return-object p0
.end method

.method public static toCollection(Lscala/collection/mutable/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/IndexedSeqLike;
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Lscala/collection/mutable/IndexedSeq;

    .end local p1    # "repr":Ljava/lang/Object;
    return-object p1
.end method
