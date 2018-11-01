.class public interface abstract Lscala/collection/SetLike;
.super Ljava/lang/Object;
.source "SetLike.scala"

# interfaces
.implements Lscala/collection/GenSetLike;
.implements Lscala/collection/IterableLike;
.implements Lscala/collection/generic/Subtractable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/SetLike",
        "<TA;TThis;>;:",
        "Lscala/collection/Set",
        "<TA;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/GenSetLike",
        "<TA;TThis;>;",
        "Lscala/collection/IterableLike",
        "<TA;TThis;>;",
        "Lscala/collection/generic/Subtractable",
        "<TA;TThis;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
        }
    .end annotation
.end method

.method public abstract $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce",
            "<TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation
.end method

.method public abstract empty()Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$SetLike$$super$map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end method

.method public abstract toBuffer()Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer",
            "<TA1;>;"
        }
    .end annotation
.end method
