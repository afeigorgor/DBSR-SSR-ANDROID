.class public abstract Lscala/collection/SetLike$class;
.super Ljava/lang/Object;
.source "SetLike.scala"


# direct methods
.method public static $init$(Lscala/collection/SetLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/SetLike;

    .prologue
    .line 59
    return-void
.end method

.method public static $plus$plus(Lscala/collection/SetLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 3
    .param p0, "$this"    # Lscala/collection/SetLike;
    .param p1, "elems"    # Lscala/collection/GenTraversableOnce;

    .prologue
    .line 141
    invoke-interface {p0}, Lscala/collection/SetLike;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v1

    new-instance v2, Lscala/collection/SetLike$$anonfun$$plus$plus$1;

    invoke-direct {v2, p0}, Lscala/collection/SetLike$$anonfun$$plus$plus$1;-><init>(Lscala/collection/SetLike;)V

    invoke-interface {v1, v0, v2}, Lscala/collection/TraversableOnce;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
.end method

.method public static isEmpty(Lscala/collection/SetLike;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/SetLike;

    .prologue
    .line 155
    invoke-interface {p0}, Lscala/collection/SetLike;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static map(Lscala/collection/SetLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/SetLike;
    .param p1, "f"    # Lscala/Function1;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 92
    invoke-interface {p0, p1, p2}, Lscala/collection/SetLike;->scala$collection$SetLike$$super$map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lscala/collection/SetLike;)Lscala/collection/mutable/Builder;
    .locals 2
    .param p0, "$this"    # Lscala/collection/SetLike;

    .prologue
    .line 76
    new-instance v0, Lscala/collection/mutable/SetBuilder;

    invoke-interface {p0}, Lscala/collection/SetLike;->empty()Lscala/collection/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/SetBuilder;-><init>(Lscala/collection/Set;)V

    return-object v0
.end method

.method public static stringPrefix(Lscala/collection/SetLike;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/SetLike;

    .prologue
    .line 245
    const-string v0, "Set"

    return-object v0
.end method

.method public static toBuffer(Lscala/collection/SetLike;)Lscala/collection/mutable/Buffer;
    .locals 2
    .param p0, "$this"    # Lscala/collection/SetLike;

    .prologue
    .line 83
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-interface {p0}, Lscala/collection/SetLike;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/ArrayBuffer;-><init>(I)V

    .line 84
    .local v0, "result":Lscala/collection/mutable/ArrayBuffer;
    invoke-interface {p0, v0}, Lscala/collection/SetLike;->copyToBuffer(Lscala/collection/mutable/Buffer;)V

    .line 85
    return-object v0
.end method

.method public static toSeq(Lscala/collection/SetLike;)Lscala/collection/Seq;
    .locals 1
    .param p0, "$this"    # Lscala/collection/SetLike;

    .prologue
    .line 81
    invoke-interface {p0}, Lscala/collection/SetLike;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lscala/collection/SetLike;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/SetLike;

    .prologue
    .line 246
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toString(Lscala/collection/TraversableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
