.class public interface abstract Lscala/collection/mutable/BufferLike;
.super Ljava/lang/Object;
.source "BufferLike.scala"

# interfaces
.implements Lscala/collection/generic/Growable;
.implements Lscala/collection/generic/Shrinkable;
.implements Lscala/collection/generic/Subtractable;
.implements Lscala/collection/mutable/SeqLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/mutable/BufferLike",
        "<TA;TThis;>;:",
        "Lscala/collection/mutable/Buffer",
        "<TA;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/Growable",
        "<TA;>;",
        "Lscala/collection/generic/Shrinkable",
        "<TA;>;",
        "Lscala/collection/generic/Subtractable",
        "<TA;TThis;>;",
        "Lscala/collection/mutable/SeqLike",
        "<TA;TThis;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)TThis;"
        }
    .end annotation
.end method

.method public abstract append(Lscala/collection/Seq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq",
            "<TA;>;)V"
        }
    .end annotation
.end method

.method public abstract appendAll(Lscala/collection/TraversableOnce;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)V"
        }
    .end annotation
.end method

.method public abstract clone()Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method

.method public abstract insertAll(ILscala/collection/Traversable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Traversable",
            "<TA;>;)V"
        }
    .end annotation
.end method

.method public abstract prependAll(Lscala/collection/TraversableOnce;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)V"
        }
    .end annotation
.end method

.method public abstract remove(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation
.end method
