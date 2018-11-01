.class public interface abstract Lscala/collection/immutable/StringLike;
.super Ljava/lang/Object;
.source "StringLike.scala"

# interfaces
.implements Lscala/collection/IndexedSeqOptimized;
.implements Lscala/math/Ordered;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/IndexedSeqOptimized",
        "<",
        "Ljava/lang/Object;",
        "TRepr;>;",
        "Lscala/math/Ordered",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract apply(I)C
.end method

.method public abstract length()I
.end method

.method public abstract linesWithSeparators()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract newBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder",
            "<",
            "Ljava/lang/Object;",
            "TRepr;>;"
        }
    .end annotation
.end method

.method public abstract r(Lscala/collection/Seq;)Lscala/util/matching/Regex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/util/matching/Regex;"
        }
    .end annotation
.end method

.method public abstract stripMargin(C)Ljava/lang/String;
.end method
