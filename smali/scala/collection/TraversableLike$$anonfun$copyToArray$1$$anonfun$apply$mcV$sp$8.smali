.class public final Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableLike$$anonfun$copyToArray$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TA;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableLike$$anonfun$copyToArray$1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike$$anonfun$copyToArray$1;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/TraversableLike$$anonfun$copyToArray$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<TA;TRepr;>.1;)V"
        }
    .end annotation

    .prologue
    .line 573
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;->$outer:Lscala/collection/TraversableLike$$anonfun$copyToArray$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 573
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;->apply(Ljava/lang/Object;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;->$outer:Lscala/collection/TraversableLike$$anonfun$copyToArray$1;

    iget-object v0, v0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->i$3:Lscala/runtime/IntRef;

    iget v0, v0, Lscala/runtime/IntRef;->elem:I

    iget-object v1, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;->$outer:Lscala/collection/TraversableLike$$anonfun$copyToArray$1;

    iget v1, v1, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->end$1:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v0}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v0

    invoke-virtual {v0}, Lscala/util/control/Breaks;->break()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0

    .line 575
    :cond_0
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    iget-object v1, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;->$outer:Lscala/collection/TraversableLike$$anonfun$copyToArray$1;

    iget-object v1, v1, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->xs$1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;->$outer:Lscala/collection/TraversableLike$$anonfun$copyToArray$1;

    iget-object v2, v2, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->i$3:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {v0, v1, v2, p1}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 576
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;->$outer:Lscala/collection/TraversableLike$$anonfun$copyToArray$1;

    iget-object v0, v0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->i$3:Lscala/runtime/IntRef;

    iget-object v1, p0, Lscala/collection/TraversableLike$$anonfun$copyToArray$1$$anonfun$apply$mcV$sp$8;->$outer:Lscala/collection/TraversableLike$$anonfun$copyToArray$1;

    iget-object v1, v1, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;->i$3:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
