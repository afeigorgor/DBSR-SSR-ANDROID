.class public interface abstract Lscala/collection/GenIterableLike;
.super Ljava/lang/Object;
.source "GenIterableLike.scala"

# interfaces
.implements Lscala/collection/GenTraversableLike;


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
        "<TA;TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract sameElements(Lscala/collection/GenIterable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable",
            "<TA1;>;)Z"
        }
    .end annotation
.end method
