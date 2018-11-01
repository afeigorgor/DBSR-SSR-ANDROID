.class public interface abstract Lscala/collection/MapLike;
.super Ljava/lang/Object;
.source "MapLike.scala"

# interfaces
.implements Lscala/PartialFunction;
.implements Lscala/collection/GenMapLike;
.implements Lscala/collection/IterableLike;
.implements Lscala/collection/generic/Subtractable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/MapLike",
        "<TA;TB;TThis;>;:",
        "Lscala/collection/Map",
        "<TA;TB;>;>",
        "Ljava/lang/Object;",
        "Lscala/PartialFunction",
        "<TA;TB;>;",
        "Lscala/collection/GenMapLike",
        "<TA;TB;TThis;>;",
        "Lscala/collection/IterableLike",
        "<",
        "Lscala/Tuple2",
        "<TA;TB;>;TThis;>;",
        "Lscala/collection/generic/Subtractable",
        "<TA;TThis;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TThis;"
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

.method public abstract default(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public abstract empty()Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation
.end method

.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;>;"
        }
    .end annotation
.end method

.method public abstract toBuffer()Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer",
            "<TC;>;"
        }
    .end annotation
.end method
