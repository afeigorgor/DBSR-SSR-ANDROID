.class public final Lscala/collection/TraversableLike$$anonfun$copyToArray$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->copyToArray(Ljava/lang/Object;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/TraversableLike;

.field public final end$1:I

.field public final i$3:Lscala/runtime/IntRef;

.field public final xs$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/runtime/IntRef;ILjava/lang/Object;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/TraversableLike;
    .param p2, "i$3"    # Lscala/runtime/IntRef;
    .param p3, "end$1"    # I
    .param p4, "xs$1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<TA;TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 573
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->$outer:Lscala/collection/TraversableLike;

    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->i$3:Lscala/runtime/IntRef;

    iput p3, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->end$1:I

    iput-object p4, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->xs$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 573
    invoke-virtual {p0}, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->$outer:Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;

    invoke-direct {v1, p0}, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;-><init>(Lscala/collection/TraversableLike$$anonfun$copyToArray$1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->$outer:Lscala/collection/TraversableLike;

    new-instance v1, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;

    invoke-direct {v1, p0}, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;-><init>(Lscala/collection/TraversableLike$$anonfun$copyToArray$1;)V

    invoke-interface {v0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    return-void
.end method
