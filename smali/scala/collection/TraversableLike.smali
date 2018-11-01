.class public interface abstract Lscala/collection/TraversableLike;
.super Ljava/lang/Object;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/collection/GenTraversableLike;
.implements Lscala/collection/TraversableOnce;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/GenTraversableLike",
        "<TA;TRepr;>;",
        "Lscala/collection/TraversableOnce",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract copyToArray(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation
.end method

.method public abstract drop(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TRepr;"
        }
    .end annotation
.end method

.method public abstract exists(Lscala/Function1;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract filter(Lscala/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)TRepr;"
        }
    .end annotation
.end method

.method public abstract filterNot(Lscala/Function1;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)TRepr;"
        }
    .end annotation
.end method

.method public abstract forall(Lscala/Function1;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract foreach(Lscala/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TU;>;)V"
        }
    .end annotation
.end method

.method public abstract head()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract last()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom",
            "<TRepr;TB;TThat;>;)TThat;"
        }
    .end annotation
.end method

.method public abstract newBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder",
            "<TA;TRepr;>;"
        }
    .end annotation
.end method

.method public abstract repr()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract slice(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TRepr;"
        }
    .end annotation
.end method

.method public abstract sliceWithKnownBound(II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TRepr;"
        }
    .end annotation
.end method

.method public abstract sliceWithKnownDelta(III)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)TRepr;"
        }
    .end annotation
.end method

.method public abstract stringPrefix()Ljava/lang/String;
.end method

.method public abstract tail()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract thisCollection()Lscala/collection/Traversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Col:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/runtime/Nothing$;",
            "TA;TCol;>;)TCol;"
        }
    .end annotation
.end method

.method public abstract toStream()Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation
.end method
