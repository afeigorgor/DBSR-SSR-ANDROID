.class public final Lscala/collection/TraversableLike$$anonfun$flatMap$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TA;",
        "Lscala/collection/mutable/Builder",
        "<TB;TThat;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final b$2:Lscala/collection/mutable/Builder;

.field private final f$5:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/Function1;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/TraversableLike;
    .param p2, "b$2"    # Lscala/collection/mutable/Builder;
    .param p3, "f$5"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<TA;TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 241
    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$flatMap$1;->b$2:Lscala/collection/mutable/Builder;

    iput-object p3, p0, Lscala/collection/TraversableLike$$anonfun$flatMap$1;->f$5:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$flatMap$1;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Builder",
            "<TB;TThat;>;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v1, p0, Lscala/collection/TraversableLike$$anonfun$flatMap$1;->b$2:Lscala/collection/mutable/Builder;

    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$flatMap$1;->f$5:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversableOnce;

    invoke-interface {v0}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v0

    invoke-interface {v1, v0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Builder;

    return-object v0
.end method
