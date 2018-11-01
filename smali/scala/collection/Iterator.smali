.class public interface abstract Lscala/collection/Iterator;
.super Ljava/lang/Object;
.source "Iterator.scala"

# interfaces
.implements Lscala/collection/TraversableOnce;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/TraversableOnce",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract buffered()Lscala/collection/BufferedIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/BufferedIterator",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract drop(I)Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/Iterator",
            "<TA;>;"
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

.method public abstract filter(Lscala/Function1;)Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract forall(Lscala/Function1;)Z
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

.method public abstract hasNext()Z
.end method

.method public abstract map(Lscala/Function1;)Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TB;>;)",
            "Lscala/collection/Iterator",
            "<TB;>;"
        }
    .end annotation
.end method

.method public abstract next()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
.end method

.method public abstract takeWhile(Lscala/Function1;)Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator",
            "<TA;>;"
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

.method public abstract withFilter(Lscala/Function1;)Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation
.end method
