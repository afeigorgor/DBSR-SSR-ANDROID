.class public interface abstract Lscala/collection/generic/IterableForwarder;
.super Ljava/lang/Object;
.source "IterableForwarder.scala"

# interfaces
.implements Lscala/collection/Iterable;
.implements Lscala/collection/generic/TraversableForwarder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/Iterable",
        "<TA;>;",
        "Lscala/collection/generic/TraversableForwarder",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract underlying()Lscala/collection/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable",
            "<TA;>;"
        }
    .end annotation
.end method
