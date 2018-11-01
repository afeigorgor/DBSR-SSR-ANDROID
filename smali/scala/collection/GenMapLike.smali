.class public interface abstract Lscala/collection/GenMapLike;
.super Ljava/lang/Object;
.source "GenMapLike.scala"

# interfaces
.implements Lscala/Equals;
.implements Lscala/collection/GenIterableLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Equals;",
        "Lscala/collection/GenIterableLike",
        "<",
        "Lscala/Tuple2",
        "<TA;TB;>;TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2",
            "<TA;TB1;>;)",
            "Lscala/collection/GenMap",
            "<TA;TB1;>;"
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

.method public abstract get(Ljava/lang/Object;)Lscala/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation
.end method

.method public abstract getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lscala/Function0",
            "<TB1;>;)TB1;"
        }
    .end annotation
.end method

.method public abstract seq()Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Map",
            "<TA;TB;>;"
        }
    .end annotation
.end method
