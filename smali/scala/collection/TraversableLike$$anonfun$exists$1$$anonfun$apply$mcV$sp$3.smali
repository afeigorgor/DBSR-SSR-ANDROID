.class public final Lscala/collection/TraversableLike$$anonfun$exists$1$$anonfun$apply$mcV$sp$3;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableLike$$anonfun$exists$1;
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
.field private final synthetic $outer:Lscala/collection/TraversableLike$$anonfun$exists$1;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike$$anonfun$exists$1;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/TraversableLike$$anonfun$exists$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<TA;TRepr;>.1;)V"
        }
    .end annotation

    .prologue
    .line 352
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/TraversableLike$$anonfun$exists$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/TraversableLike$$anonfun$exists$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$exists$1$$anonfun$apply$mcV$sp$3;->apply(Ljava/lang/Object;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$exists$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/TraversableLike$$anonfun$exists$1;

    iget-object v0, v0, Lscala/collection/TraversableLike$$anonfun$exists$1;->p$4:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$exists$1$$anonfun$apply$mcV$sp$3;->$outer:Lscala/collection/TraversableLike$$anonfun$exists$1;

    iget-object v0, v0, Lscala/collection/TraversableLike$$anonfun$exists$1;->result$3:Lscala/runtime/BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lscala/runtime/BooleanRef;->elem:Z

    sget-object v0, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v0}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v0

    invoke-virtual {v0}, Lscala/util/control/Breaks;->break()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method
