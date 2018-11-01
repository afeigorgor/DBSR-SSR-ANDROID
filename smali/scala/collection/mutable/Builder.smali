.class public interface abstract Lscala/collection/mutable/Builder;
.super Ljava/lang/Object;
.source "Builder.scala"

# interfaces
.implements Lscala/collection/generic/Growable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Elem:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/Growable",
        "<TElem;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElem;)",
            "Lscala/collection/mutable/Builder",
            "<TElem;TTo;>;"
        }
    .end annotation
.end method

.method public abstract mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TTo;TNewTo;>;)",
            "Lscala/collection/mutable/Builder",
            "<TElem;TNewTo;>;"
        }
    .end annotation
.end method

.method public abstract result()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation
.end method

.method public abstract sizeHint(I)V
.end method

.method public abstract sizeHint(Lscala/collection/TraversableLike;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<**>;)V"
        }
    .end annotation
.end method

.method public abstract sizeHint(Lscala/collection/TraversableLike;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<**>;I)V"
        }
    .end annotation
.end method

.method public abstract sizeHintBounded(ILscala/collection/TraversableLike;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike",
            "<**>;)V"
        }
    .end annotation
.end method
