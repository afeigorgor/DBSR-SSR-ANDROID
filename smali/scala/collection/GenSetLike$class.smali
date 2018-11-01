.class public abstract Lscala/collection/GenSetLike$class;
.super Ljava/lang/Object;
.source "GenSetLike.scala"


# direct methods
.method public static $init$(Lscala/collection/GenSetLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/GenSetLike;

    .prologue
    .line 26
    return-void
.end method

.method public static apply(Lscala/collection/GenSetLike;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/GenSetLike;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static equals(Lscala/collection/GenSetLike;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "$this"    # Lscala/collection/GenSetLike;
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 116
    instance-of v1, p1, Lscala/collection/GenSet;

    if-eqz v1, :cond_1

    check-cast p1, Lscala/collection/GenSet;

    .line 117
    .end local p1    # "that":Ljava/lang/Object;
    if-eq p0, p1, :cond_0

    .line 118
    invoke-interface {p1, p0}, Lscala/collection/GenSet;->canEqual(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-interface {p0}, Lscala/collection/GenSetLike;->size()I

    move-result v1

    invoke-interface {p1}, Lscala/collection/GenSet;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 120
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->liftedTree1$1(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x1

    .line 115
    :cond_1
    return v0
.end method

.method public static hashCode(Lscala/collection/GenSetLike;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/GenSetLike;

    .prologue
    .line 131
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-interface {p0}, Lscala/collection/GenSetLike;->seq()Lscala/collection/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/util/hashing/MurmurHash3$;->setHash(Lscala/collection/Set;)I

    move-result v0

    return v0
.end method

.method private static final liftedTree1$1(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/GenSetLike;
    .param p1, "x2$1"    # Lscala/collection/GenSet;

    .prologue
    .line 120
    :try_start_0
    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->subsetOf(Lscala/collection/GenSet;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    .line 121
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/GenSetLike;
    .param p1, "that"    # Lscala/collection/GenSet;

    .prologue
    .line 103
    invoke-interface {p0, p1}, Lscala/collection/GenSetLike;->forall(Lscala/Function1;)Z

    move-result v0

    return v0
.end method
