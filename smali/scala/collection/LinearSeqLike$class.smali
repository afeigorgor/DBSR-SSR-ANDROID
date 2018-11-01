.class public abstract Lscala/collection/LinearSeqLike$class;
.super Ljava/lang/Object;
.source "LinearSeqLike.scala"


# direct methods
.method public static $init$(Lscala/collection/LinearSeqLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/LinearSeqLike;

    .prologue
    .line 30
    return-void
.end method

.method public static final corresponds(Lscala/collection/LinearSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 2
    .param p0, "$this"    # Lscala/collection/LinearSeqLike;
    .param p1, "that"    # Lscala/collection/GenSeq;
    .param p2, "p"    # Lscala/Function2;

    .prologue
    .line 66
    :goto_0
    invoke-interface {p0}, Lscala/collection/LinearSeqLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lscala/collection/GenSeq;->isEmpty()Z

    move-result v0

    .line 65
    :goto_1
    return v0

    .line 67
    :cond_0
    invoke-interface {p1}, Lscala/collection/GenSeq;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lscala/collection/LinearSeqLike;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/GenSeq;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lscala/collection/LinearSeqLike;->tail()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "$this":Lscala/collection/LinearSeqLike;
    check-cast p0, Lscala/collection/LinearSeqLike;

    invoke-interface {p1}, Lscala/collection/GenSeq;->tail()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "that":Lscala/collection/GenSeq;
    check-cast p1, Lscala/collection/GenSeq;

    .restart local p0    # "$this":Lscala/collection/LinearSeqLike;
    .restart local p1    # "that":Lscala/collection/GenSeq;
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static hashCode(Lscala/collection/LinearSeqLike;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/LinearSeqLike;

    .prologue
    .line 38
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-interface {p0}, Lscala/collection/LinearSeqLike;->seq()Lscala/collection/LinearSeq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/util/hashing/MurmurHash3$;->seqHash(Lscala/collection/Seq;)I

    move-result v0

    return v0
.end method

.method public static iterator(Lscala/collection/LinearSeqLike;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/LinearSeqLike;

    .prologue
    .line 41
    new-instance v0, Lscala/collection/LinearSeqLike$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/LinearSeqLike$$anon$1;-><init>(Lscala/collection/LinearSeqLike;)V

    return-object v0
.end method

.method public static thisCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;
    .locals 0
    .param p0, "$this"    # Lscala/collection/LinearSeqLike;

    .prologue
    .line 33
    check-cast p0, Lscala/collection/LinearSeq;

    .end local p0    # "$this":Lscala/collection/LinearSeqLike;
    return-object p0
.end method

.method public static toCollection(Lscala/collection/LinearSeqLike;Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;
    .locals 0
    .param p0, "$this"    # Lscala/collection/LinearSeqLike;
    .param p1, "repr"    # Lscala/collection/LinearSeqLike;

    .prologue
    .line 34
    check-cast p1, Lscala/collection/LinearSeq;

    .end local p1    # "repr":Lscala/collection/LinearSeqLike;
    return-object p1
.end method
