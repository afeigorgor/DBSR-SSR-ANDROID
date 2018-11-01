.class public interface abstract Lscala/collection/generic/Growable;
.super Ljava/lang/Object;
.source "Growable.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/generic/Growable",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)",
            "Lscala/collection/generic/Growable",
            "<TA;>;"
        }
    .end annotation
.end method
