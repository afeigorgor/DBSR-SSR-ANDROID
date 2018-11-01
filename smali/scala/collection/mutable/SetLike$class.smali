.class public abstract Lscala/collection/mutable/SetLike$class;
.super Ljava/lang/Object;
.source "SetLike.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/SetLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/SetLike;

    .prologue
    .line 58
    return-void
.end method

.method public static $minus(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Lscala/collection/mutable/Set;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/SetLike;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 185
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->clone()Lscala/collection/mutable/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Set;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Set;

    return-object v0
.end method

.method public static $plus(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Lscala/collection/mutable/Set;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/SetLike;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 151
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->clone()Lscala/collection/mutable/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Set;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Set;

    return-object v0
.end method

.method public static $plus$plus(Lscala/collection/mutable/SetLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/SetLike;
    .param p1, "xs"    # Lscala/collection/GenTraversableOnce;

    .prologue
    .line 177
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->clone()Lscala/collection/mutable/Set;

    move-result-object v0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Set;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Set;

    return-object v0
.end method

.method public static add(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/SetLike;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 82
    .local v0, "r":Z
    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    .line 83
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 80
    :goto_0
    return v1

    .line 83
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static clone(Lscala/collection/mutable/SetLike;)Lscala/collection/mutable/Set;
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/SetLike;

    .prologue
    .line 136
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->empty()Lscala/collection/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Growable;

    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->repr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/Set;

    invoke-interface {v1}, Lscala/collection/mutable/Set;->seq()Lscala/collection/mutable/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/generic/Growable;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Set;

    return-object v0
.end method

.method public static newBuilder(Lscala/collection/mutable/SetLike;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/SetLike;

    .prologue
    .line 71
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->empty()Lscala/collection/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Builder;

    return-object v0
.end method

.method public static remove(Lscala/collection/mutable/SetLike;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/SetLike;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 92
    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 93
    .local v0, "r":Z
    invoke-interface {p0, p1}, Lscala/collection/mutable/SetLike;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;

    .line 94
    return v0
.end method

.method public static result(Lscala/collection/mutable/SetLike;)Lscala/collection/mutable/Set;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/SetLike;

    .prologue
    .line 141
    invoke-interface {p0}, Lscala/collection/mutable/SetLike;->repr()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Set;

    return-object v0
.end method
