.class public abstract Lscala/collection/IndexedSeqLike$class;
.super Ljava/lang/Object;
.source "IndexedSeqLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IndexedSeqLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/IndexedSeqLike;

    .prologue
    .line 40
    return-void
.end method

.method public static hashCode(Lscala/collection/IndexedSeqLike;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/IndexedSeqLike;

    .prologue
    .line 44
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-interface {p0}, Lscala/collection/IndexedSeqLike;->seq()Lscala/collection/IndexedSeq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/util/hashing/MurmurHash3$;->seqHash(Lscala/collection/Seq;)I

    move-result v0

    return v0
.end method

.method public static iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;
    .locals 3
    .param p0, "$this"    # Lscala/collection/IndexedSeqLike;

    .prologue
    .line 90
    new-instance v0, Lscala/collection/IndexedSeqLike$Elements;

    const/4 v1, 0x0

    invoke-interface {p0}, Lscala/collection/IndexedSeqLike;->length()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lscala/collection/IndexedSeqLike$Elements;-><init>(Lscala/collection/IndexedSeqLike;II)V

    return-object v0
.end method

.method public static thisCollection(Lscala/collection/IndexedSeqLike;)Lscala/collection/IndexedSeq;
    .locals 0
    .param p0, "$this"    # Lscala/collection/IndexedSeqLike;

    .prologue
    .line 46
    check-cast p0, Lscala/collection/IndexedSeq;

    .end local p0    # "$this":Lscala/collection/IndexedSeqLike;
    return-object p0
.end method

.method public static toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;
    .locals 2
    .param p0, "$this"    # Lscala/collection/IndexedSeqLike;

    .prologue
    .line 94
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-interface {p0}, Lscala/collection/IndexedSeqLike;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/ArrayBuffer;-><init>(I)V

    .line 95
    .local v0, "result":Lscala/collection/mutable/ArrayBuffer;
    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqLike;->copyToBuffer(Lscala/collection/mutable/Buffer;)V

    .line 96
    return-object v0
.end method

.method public static toCollection(Lscala/collection/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 0
    .param p0, "$this"    # Lscala/collection/IndexedSeqLike;
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lscala/collection/IndexedSeq;

    .end local p1    # "repr":Ljava/lang/Object;
    return-object p1
.end method
