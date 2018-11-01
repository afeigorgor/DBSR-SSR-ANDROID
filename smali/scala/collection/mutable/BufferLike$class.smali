.class public abstract Lscala/collection/mutable/BufferLike$class;
.super Ljava/lang/Object;
.source "BufferLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/Buffer;

    .prologue
    .line 63
    return-void
.end method

.method public static $plus$plus(Lscala/collection/mutable/Buffer;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/Buffer;
    .param p1, "xs"    # Lscala/collection/GenTraversableOnce;

    .prologue
    .line 228
    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->clone()Lscala/collection/mutable/Buffer;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Buffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Buffer;

    return-object v0
.end method

.method public static $plus$plus$eq$colon(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/Buffer;
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-interface {p1}, Lscala/collection/TraversableOnce;->toTraversable()Lscala/collection/Traversable;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lscala/collection/mutable/Buffer;->insertAll(ILscala/collection/Traversable;)V

    return-object p0
.end method

.method public static append(Lscala/collection/mutable/Buffer;Lscala/collection/Seq;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/Buffer;
    .param p1, "elems"    # Lscala/collection/Seq;

    .prologue
    .line 143
    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->appendAll(Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public static appendAll(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/Buffer;
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 148
    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    return-void
.end method

.method public static clone(Lscala/collection/mutable/Buffer;)Lscala/collection/mutable/Buffer;
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/Buffer;

    .prologue
    .line 265
    invoke-interface {p0}, Lscala/collection/mutable/Buffer;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 266
    .local v0, "bf":Lscala/collection/mutable/Builder;
    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 267
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/Buffer;

    return-object v1
.end method

.method public static insert(Lscala/collection/mutable/Buffer;ILscala/collection/Seq;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/Buffer;
    .param p1, "n"    # I
    .param p2, "elems"    # Lscala/collection/Seq;

    .prologue
    .line 167
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/Buffer;->insertAll(ILscala/collection/Traversable;)V

    return-void
.end method

.method public static prepend(Lscala/collection/mutable/Buffer;Lscala/collection/Seq;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/Buffer;
    .param p1, "elems"    # Lscala/collection/Seq;

    .prologue
    .line 153
    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->prependAll(Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public static prependAll(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/Buffer;
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 158
    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->$plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    return-void
.end method

.method public static remove(Lscala/collection/mutable/Buffer;II)V
    .locals 4
    .param p0, "$this"    # Lscala/collection/mutable/Buffer;
    .param p1, "n"    # I
    .param p2, "count"    # I

    .prologue
    .line 117
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v1, Lscala/collection/immutable/Range;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p2, v3}, Lscala/collection/immutable/Range;-><init>(III)V

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    .local v0, "i1":I
    :goto_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/Buffer;->remove(I)Ljava/lang/Object;

    invoke-virtual {v1}, Lscala/collection/immutable/Range;->lastElement()I

    move-result v2

    if-ne v0, v2, :cond_1

    .end local v0    # "i1":I
    :cond_0
    return-void

    .restart local v0    # "i1":I
    :cond_1
    invoke-virtual {v1}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public static stringPrefix(Lscala/collection/mutable/Buffer;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/Buffer;

    .prologue
    .line 212
    const-string v0, "Buffer"

    return-object v0
.end method
