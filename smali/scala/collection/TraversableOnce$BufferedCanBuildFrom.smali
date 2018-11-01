.class public abstract Lscala/collection/TraversableOnce$BufferedCanBuildFrom;
.super Ljava/lang/Object;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/collection/generic/CanBuildFrom;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableOnce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BufferedCanBuildFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "CC::",
        "Lscala/collection/TraversableOnce",
        "<",
        "Ljava/lang/Object;",
        ">;>",
        "Ljava/lang/Object;",
        "Lscala/collection/generic/CanBuildFrom",
        "<TCC;TA;TCC;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder",
            "<TA;TCC;>;"
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0}, Lscala/collection/TraversableOnce$BufferedCanBuildFrom;->newIterator()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "from"    # Ljava/lang/Object;

    .prologue
    .line 425
    check-cast p1, Lscala/collection/TraversableOnce;

    .end local p1    # "from":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$BufferedCanBuildFrom;->apply(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Builder;
    .locals 2
    .param p1, "from"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCC;)",
            "Lscala/collection/mutable/Builder",
            "<TA;TCC;>;"
        }
    .end annotation

    .prologue
    .line 436
    instance-of v0, p1, Lscala/collection/generic/GenericTraversableTemplate;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/generic/GenericTraversableTemplate;

    .end local p1    # "from":Lscala/collection/TraversableOnce;
    invoke-interface {p1}, Lscala/collection/generic/GenericTraversableTemplate;->genericBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1;

    invoke-direct {v1, p0}, Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1;-><init>(Lscala/collection/TraversableOnce$BufferedCanBuildFrom;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 435
    :goto_0
    return-object v0

    .line 439
    .restart local p1    # "from":Lscala/collection/TraversableOnce;
    :cond_0
    invoke-virtual {p0}, Lscala/collection/TraversableOnce$BufferedCanBuildFrom;->newIterator()Lscala/collection/mutable/Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public abstract bufferToColl(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/ArrayBuffer",
            "<TB;>;)TCC;"
        }
    .end annotation
.end method

.method public newIterator()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder",
            "<TA;TCC;>;"
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    new-instance v1, Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$newIterator$1;

    invoke-direct {v1, p0}, Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$newIterator$1;-><init>(Lscala/collection/TraversableOnce$BufferedCanBuildFrom;)V

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuffer;->mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public abstract traversableToColl(Lscala/collection/GenTraversable;)Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversable",
            "<TB;>;)TCC;"
        }
    .end annotation
.end method
