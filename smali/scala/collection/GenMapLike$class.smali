.class public abstract Lscala/collection/GenMapLike$class;
.super Ljava/lang/Object;
.source "GenMapLike.scala"


# direct methods
.method public static $init$(Lscala/collection/GenMapLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/GenMapLike;

    .prologue
    .line 25
    return-void
.end method

.method public static equals(Lscala/collection/GenMapLike;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "$this"    # Lscala/collection/GenMapLike;
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 114
    instance-of v1, p1, Lscala/collection/GenMap;

    if-eqz v1, :cond_1

    check-cast p1, Lscala/collection/GenMap;

    .line 115
    .end local p1    # "that":Ljava/lang/Object;
    if-eq p0, p1, :cond_0

    .line 116
    invoke-interface {p1, p0}, Lscala/collection/GenMap;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-interface {p0}, Lscala/collection/GenMapLike;->size()I

    move-result v1

    invoke-interface {p1}, Lscala/collection/GenMap;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 118
    invoke-static {p0, p1}, Lscala/collection/GenMapLike$class;->liftedTree1$1(Lscala/collection/GenMapLike;Lscala/collection/GenMap;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    const/4 v0, 0x1

    .line 113
    :cond_1
    return v0
.end method

.method public static hashCode(Lscala/collection/GenMapLike;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/GenMapLike;

    .prologue
    .line 35
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-interface {p0}, Lscala/collection/GenMapLike;->seq()Lscala/collection/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/util/hashing/MurmurHash3$;->mapHash(Lscala/collection/Map;)I

    move-result v0

    return v0
.end method

.method private static final liftedTree1$1(Lscala/collection/GenMapLike;Lscala/collection/GenMap;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/GenMapLike;
    .param p1, "x2$1"    # Lscala/collection/GenMap;

    .prologue
    .line 119
    :try_start_0
    new-instance v0, Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;-><init>(Lscala/collection/GenMapLike;Lscala/collection/GenMap;)V

    invoke-interface {p0, v0}, Lscala/collection/GenMapLike;->forall(Lscala/Function1;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 118
    :goto_0
    return v0

    .line 127
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
