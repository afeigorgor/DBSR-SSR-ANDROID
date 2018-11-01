.class public abstract Lscala/collection/GenSeqLike$class;
.super Ljava/lang/Object;
.source "GenSeqLike.scala"


# direct methods
.method public static $init$(Lscala/collection/GenSeqLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/GenSeqLike;

    .prologue
    .line 33
    return-void
.end method

.method public static equals(Lscala/collection/GenSeqLike;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "$this"    # Lscala/collection/GenSeqLike;
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 476
    instance-of v1, p1, Lscala/collection/GenSeq;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/collection/GenSeq;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-interface {p1, p0}, Lscala/collection/GenSeq;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Lscala/collection/GenSeqLike;->sameElements(Lscala/collection/GenIterable;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 475
    :cond_0
    return v0
.end method

.method public static hashCode(Lscala/collection/GenSeqLike;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/GenSeqLike;

    .prologue
    .line 467
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-interface {p0}, Lscala/collection/GenSeqLike;->seq()Lscala/collection/Seq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/util/hashing/MurmurHash3$;->seqHash(Lscala/collection/Seq;)I

    move-result v0

    return v0
.end method

.method public static indexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/GenSeqLike;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lscala/collection/GenSeqLike;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/GenSeqLike;
    .param p1, "elem"    # Ljava/lang/Object;
    .param p2, "from"    # I

    .prologue
    .line 145
    new-instance v0, Lscala/collection/GenSeqLike$$anonfun$indexOf$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/GenSeqLike$$anonfun$indexOf$1;-><init>(Lscala/collection/GenSeqLike;Ljava/lang/Object;)V

    invoke-interface {p0, v0, p2}, Lscala/collection/GenSeqLike;->indexWhere(Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public static isDefinedAt(Lscala/collection/GenSeqLike;I)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/GenSeqLike;
    .param p1, "idx"    # I

    .prologue
    .line 72
    if-ltz p1, :cond_0

    invoke-interface {p0}, Lscala/collection/GenSeqLike;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
