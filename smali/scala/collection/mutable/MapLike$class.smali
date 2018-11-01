.class public abstract Lscala/collection/mutable/MapLike$class;
.super Ljava/lang/Object;
.source "MapLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/MapLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/MapLike;

    .prologue
    .line 48
    return-void
.end method

.method public static $minus(Lscala/collection/mutable/MapLike;Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/MapLike;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 170
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Map;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Map;

    return-object v0
.end method

.method public static $plus(Lscala/collection/mutable/MapLike;Lscala/Tuple2;)Lscala/collection/mutable/Map;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/MapLike;
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 117
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Map;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Map;

    return-object v0
.end method

.method public static clone(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Map;
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/MapLike;

    .prologue
    .line 223
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->empty()Lscala/collection/Map;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Growable;

    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->repr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/TraversableOnce;

    invoke-interface {v0, v1}, Lscala/collection/generic/Growable;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Map;

    return-object v0
.end method

.method public static newBuilder(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/MapLike;

    .prologue
    .line 61
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->empty()Lscala/collection/Map;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Builder;

    return-object v0
.end method

.method public static put(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/MapLike;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 76
    invoke-interface {p0, p1}, Lscala/collection/mutable/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 77
    .local v0, "r":Lscala/Option;
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/MapLike;->update(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    return-object v0
.end method

.method public static result(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Map;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/MapLike;

    .prologue
    .line 228
    invoke-interface {p0}, Lscala/collection/mutable/MapLike;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Map;

    return-object v0
.end method

.method public static update(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/MapLike;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 88
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/mutable/MapLike;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;

    return-void
.end method
