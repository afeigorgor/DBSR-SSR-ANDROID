.class public interface abstract Lscala/collection/IterableLike;
.super Ljava/lang/Object;
.source "IterableLike.scala"

# interfaces
.implements Lscala/Equals;
.implements Lscala/collection/GenIterableLike;
.implements Lscala/collection/TraversableLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Repr:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/Equals;",
        "Lscala/collection/GenIterableLike",
        "<TA;TRepr;>;",
        "Lscala/collection/TraversableLike",
        "<TA;TRepr;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract copyToArray(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation
.end method

.method public abstract exists(Lscala/Function1;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract foreach(Lscala/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TU;>;)V"
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

.method public abstract iterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract take(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TRepr;"
        }
    .end annotation
.end method

.method public abstract toStream()Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation
.end method
