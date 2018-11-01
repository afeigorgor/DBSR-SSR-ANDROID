.class public interface abstract Lscala/collection/GenSetLike;
.super Ljava/lang/Object;
.source "GenSetLike.scala"

# interfaces
.implements Lscala/Equals;
.implements Lscala/Function1;
.implements Lscala/collection/GenIterableLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Equals;",
        "Lscala/Function1",
        "<TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/GenIterableLike",
        "<TA;TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract apply(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
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

.method public abstract seq()Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract subsetOf(Lscala/collection/GenSet;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet",
            "<TA;>;)Z"
        }
    .end annotation
.end method
