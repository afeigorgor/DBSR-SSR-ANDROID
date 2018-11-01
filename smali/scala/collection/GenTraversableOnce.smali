.class public interface abstract Lscala/collection/GenTraversableOnce;
.super Ljava/lang/Object;
.source "GenTraversableOnce.scala"


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

.method public abstract isEmpty()Z
.end method

.method public abstract isTraversableAgain()Z
.end method

.method public abstract nonEmpty()Z
.end method

.method public abstract seq()Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/TraversableOnce",
            "<TA;>;"
        }
    .end annotation
.end method

.method public abstract toIterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

.method public abstract toVector()Lscala/collection/immutable/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector",
            "<TA;>;"
        }
    .end annotation
.end method
