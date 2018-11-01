.class public abstract Lscala/collection/immutable/MapLike$class;
.super Ljava/lang/Object;
.source "MapLike.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/MapLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/immutable/MapLike;

    .prologue
    .line 50
    return-void
.end method

.method public static updated(Lscala/collection/immutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/MapLike;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 62
    new-instance v0, Lscala/Tuple2;

    invoke-direct {v0, p1, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/immutable/MapLike;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method
