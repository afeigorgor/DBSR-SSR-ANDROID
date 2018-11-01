.class public interface abstract Lscala/collection/GenTraversableLike;
.super Ljava/lang/Object;
.source "GenTraversableLike.scala"

# interfaces
.implements Lscala/collection/GenTraversableOnce;
.implements Lscala/collection/Parallelizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/GenTraversableOnce",
        "<TA;>;",
        "Lscala/collection/Parallelizable",
        "<TA;",
        "Ljava/lang/Object",
        "<TA;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract head()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract tail()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRepr;"
        }
    .end annotation
.end method
