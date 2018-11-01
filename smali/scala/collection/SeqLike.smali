.class public interface abstract Lscala/collection/SeqLike;
.super Ljava/lang/Object;
.source "SeqLike.scala"

# interfaces
.implements Lscala/collection/GenSeqLike;
.implements Lscala/collection/IterableLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/GenSeqLike",
        "<TA;TRepr;>;",
        "Lscala/collection/IterableLike",
        "<TA;TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract apply(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation
.end method

.method public abstract distinct()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract length()I
.end method

.method public abstract lengthCompare(I)I
.end method

.method public abstract reverse()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method

.method public abstract reverseIterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract sortWith(Lscala/Function2;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function2",
            "<TA;TA;",
            "Ljava/lang/Object;",
            ">;)TRepr;"
        }
    .end annotation
.end method

.method public abstract sorted(Lscala/math/Ordering;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Ordering",
            "<TB;>;)TRepr;"
        }
    .end annotation
.end method

.method public abstract thisCollection()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRepr;)",
            "Lscala/collection/Seq",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract toSeq()Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
