.class public interface abstract Lscala/collection/IndexedSeqOptimized;
.super Ljava/lang/Object;
.source "IndexedSeqOptimized.scala"

# interfaces
.implements Lscala/collection/IndexedSeqLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/IndexedSeqLike",
        "<TA;TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract isEmpty()Z
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
.end method

.method public abstract synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
.end method

.method public abstract segmentLength(Lscala/Function1;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;I)I"
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
