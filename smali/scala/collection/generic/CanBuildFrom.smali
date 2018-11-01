.class public interface abstract Lscala/collection/generic/CanBuildFrom;
.super Ljava/lang/Object;
.source "CanBuildFrom.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<From:",
        "Ljava/lang/Object;",
        "Elem:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract apply()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder",
            "<TElem;TTo;>;"
        }
    .end annotation
.end method

.method public abstract apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFrom;)",
            "Lscala/collection/mutable/Builder",
            "<TElem;TTo;>;"
        }
    .end annotation
.end method
