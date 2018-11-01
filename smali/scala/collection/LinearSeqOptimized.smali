.class public interface abstract Lscala/collection/LinearSeqOptimized;
.super Ljava/lang/Object;
.source "LinearSeqOptimized.scala"

# interfaces
.implements Lscala/collection/LinearSeqLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr::",
        "Lscala/collection/LinearSeqOptimized",
        "<TA;TRepr;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/LinearSeqLike",
        "<TA;TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract drop(I)Lscala/collection/LinearSeqOptimized;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TRepr;"
        }
    .end annotation
.end method

.method public abstract foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2",
            "<TB;TA;TB;>;)TB;"
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

.method public abstract lengthCompare(I)I
.end method

.method public abstract synthetic scala$collection$LinearSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
.end method
