.class public final Lscala/collection/immutable/Stream$StreamBuilder$$anonfun$result$1;
.super Lscala/runtime/AbstractFunction1;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream$StreamBuilder;->result()Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/collection/TraversableOnce",
        "<TA;>;",
        "Lscala/collection/immutable/Stream",
        "<TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream$StreamBuilder;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/immutable/Stream$StreamBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream$StreamBuilder",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 1163
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 1163
    check-cast p1, Lscala/collection/TraversableOnce;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Stream$StreamBuilder$$anonfun$result$1;->apply(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Stream;
    .locals 1
    .param p1, "x$5"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 1163
    invoke-interface {p1}, Lscala/collection/TraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
