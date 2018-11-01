.class public interface abstract Lscala/collection/mutable/ArrayOps;
.super Ljava/lang/Object;
.source "ArrayOps.scala"

# interfaces
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/collection/mutable/ArrayLike;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/ArrayOps$ofRef;,
        Lscala/collection/mutable/ArrayOps$ofInt;,
        Lscala/collection/mutable/ArrayOps$ofInt$;,
        Lscala/collection/mutable/ArrayOps$ofRef$;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/CustomParallelizable",
        "<TT;",
        "Ljava/lang/Object",
        "<TT;>;>;",
        "Lscala/collection/mutable/ArrayLike",
        "<TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract flatten(Lscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TT;",
            "Lscala/collection/Traversable",
            "<TU;>;>;",
            "Lscala/reflect/ClassTag",
            "<TU;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract synthetic scala$collection$mutable$ArrayOps$$super$toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
.end method
