.class public final Lscala/collection/TraversableLike$$anonfun$forall$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->forall(Lscala/Function1;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/TraversableLike;

.field public final p$3:Lscala/Function1;

.field public final result$2:Lscala/runtime/BooleanRef;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/runtime/BooleanRef;Lscala/Function1;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/TraversableLike;
    .param p2, "result$2"    # Lscala/runtime/BooleanRef;
    .param p3, "p$3"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<TA;TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 335
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/TraversableLike$$anonfun$forall$1;->$outer:Lscala/collection/TraversableLike;

    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$forall$1;->result$2:Lscala/runtime/BooleanRef;

    iput-object p3, p0, Lscala/collection/TraversableLike$$anonfun$forall$1;->p$3:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 335
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anonfun$forall$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$forall$1;->$outer:Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2;

    invoke-direct {v1, p0}, Lscala/collection/TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2;-><init>(Lscala/collection/TraversableLike$$anonfun$forall$1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$forall$1;->$outer:Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2;

    invoke-direct {v1, p0}, Lscala/collection/TraversableLike$$anonfun$forall$1$$anonfun$apply$mcV$sp$2;-><init>(Lscala/collection/TraversableLike$$anonfun$forall$1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    return-void
.end method
