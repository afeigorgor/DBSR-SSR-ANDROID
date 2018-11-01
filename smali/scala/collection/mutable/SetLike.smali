.class public interface abstract Lscala/collection/mutable/SetLike;
.super Ljava/lang/Object;
.source "SetLike.scala"

# interfaces
.implements Lscala/collection/SetLike;
.implements Lscala/collection/generic/Shrinkable;
.implements Lscala/collection/mutable/Builder;
.implements Lscala/collection/mutable/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "This::",
        "Lscala/collection/mutable/SetLike",
        "<TA;TThis;>;:",
        "Lscala/collection/mutable/Set",
        "<TA;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/SetLike",
        "<TA;TThis;>;",
        "Lscala/collection/generic/Shrinkable",
        "<TA;>;",
        "Lscala/collection/mutable/Builder",
        "<TA;TThis;>;",
        "Lscala/collection/mutable/Cloneable",
        "<",
        "Lscala/collection/mutable/Set",
        "<TA;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/SetLike",
            "<TA;TThis;>;"
        }
    .end annotation
.end method

.method public abstract $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/SetLike",
            "<TA;TThis;>;"
        }
    .end annotation
.end method

.method public abstract clone()Lscala/collection/mutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TThis;"
        }
    .end annotation
.end method
