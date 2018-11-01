.class public interface abstract Lscala/collection/mutable/MapLike;
.super Ljava/lang/Object;
.source "MapLike.scala"

# interfaces
.implements Lscala/collection/MapLike;
.implements Lscala/collection/generic/Shrinkable;
.implements Lscala/collection/mutable/Builder;
.implements Lscala/collection/mutable/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/mutable/MapLike",
        "<TA;TB;TThis;>;:",
        "Lscala/collection/mutable/Map",
        "<TA;TB;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/MapLike",
        "<TA;TB;TThis;>;",
        "Lscala/collection/generic/Shrinkable",
        "<TA;>;",
        "Lscala/collection/mutable/Builder",
        "<",
        "Lscala/Tuple2",
        "<TA;TB;>;TThis;>;",
        "Lscala/collection/mutable/Cloneable",
        "<TThis;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/MapLike",
            "<TA;TB;TThis;>;"
        }
    .end annotation
.end method

.method public abstract $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<TA;TB;>;)",
            "Lscala/collection/mutable/MapLike",
            "<TA;TB;TThis;>;"
        }
    .end annotation
.end method

.method public abstract clone()Lscala/collection/mutable/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation
.end method
