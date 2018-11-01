.class public final Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce$BufferedCanBuildFrom;->apply(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/collection/Traversable",
        "<TA;>;TCC;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableOnce$BufferedCanBuildFrom;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce$BufferedCanBuildFrom;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/TraversableOnce$BufferedCanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce$BufferedCanBuildFrom",
            "<TA;TCC;>;)V"
        }
    .end annotation

    .prologue
    .line 436
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1;->$outer:Lscala/collection/TraversableOnce$BufferedCanBuildFrom;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 436
    check-cast p1, Lscala/collection/Traversable;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1;->apply(Lscala/collection/Traversable;)Lscala/collection/TraversableOnce;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lscala/collection/Traversable;)Lscala/collection/TraversableOnce;
    .locals 1
    .param p1, "x0$1"    # Lscala/collection/Traversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Traversable",
            "<TA;>;)TCC;"
        }
    .end annotation

    .prologue
    .line 437
    iget-object v0, p0, Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1;->$outer:Lscala/collection/TraversableOnce$BufferedCanBuildFrom;

    invoke-virtual {v0, p1}, Lscala/collection/TraversableOnce$BufferedCanBuildFrom;->traversableToColl(Lscala/collection/GenTraversable;)Lscala/collection/TraversableOnce;

    move-result-object v0

    .line 436
    return-object v0
.end method
