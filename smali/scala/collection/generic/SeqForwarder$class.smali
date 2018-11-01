.class public abstract Lscala/collection/generic/SeqForwarder$class;
.super Ljava/lang/Object;
.source "SeqForwarder.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/SeqForwarder;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/generic/SeqForwarder;

    .prologue
    .line 29
    return-void
.end method

.method public static apply(Lscala/collection/generic/SeqForwarder;I)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/SeqForwarder;
    .param p1, "idx"    # I

    .prologue
    .line 34
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Seq;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static contains(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/SeqForwarder;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 56
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Seq;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static corresponds(Lscala/collection/generic/SeqForwarder;Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/SeqForwarder;
    .param p1, "that"    # Lscala/collection/GenSeq;
    .param p2, "p"    # Lscala/Function2;

    .prologue
    .line 57
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/Seq;->corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result v0

    return v0
.end method

.method public static indexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/SeqForwarder;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Seq;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static indexOf(Lscala/collection/generic/SeqForwarder;Ljava/lang/Object;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/SeqForwarder;
    .param p1, "elem"    # Ljava/lang/Object;
    .param p2, "from"    # I

    .prologue
    .line 42
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/Seq;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public static indexWhere(Lscala/collection/generic/SeqForwarder;Lscala/Function1;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/SeqForwarder;
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I

    .prologue
    .line 40
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/Seq;->indexWhere(Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public static isDefinedAt(Lscala/collection/generic/SeqForwarder;I)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/SeqForwarder;
    .param p1, "x"    # I

    .prologue
    .line 36
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Seq;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public static lengthCompare(Lscala/collection/generic/SeqForwarder;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/SeqForwarder;
    .param p1, "len"    # I

    .prologue
    .line 35
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Seq;->lengthCompare(I)I

    move-result v0

    return v0
.end method

.method public static reverseIterator(Lscala/collection/generic/SeqForwarder;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/SeqForwarder;

    .prologue
    .line 47
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Seq;->reverseIterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static segmentLength(Lscala/collection/generic/SeqForwarder;Lscala/Function1;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/SeqForwarder;
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I

    .prologue
    .line 37
    invoke-interface {p0}, Lscala/collection/generic/SeqForwarder;->underlying()Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/Seq;->segmentLength(Lscala/Function1;I)I

    move-result v0

    return v0
.end method
