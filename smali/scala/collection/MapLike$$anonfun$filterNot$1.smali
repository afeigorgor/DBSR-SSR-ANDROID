.class public final Lscala/collection/MapLike$$anonfun$filterNot$1;
.super Lscala/runtime/AbstractFunction1;
.source "MapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/MapLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/Tuple2",
        "<TA;TB;>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final p$1:Lscala/Function1;

.field private final res$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/MapLike;Lscala/runtime/ObjectRef;Lscala/Function1;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/MapLike;
    .param p2, "res$1"    # Lscala/runtime/ObjectRef;
    .param p3, "p$1"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/MapLike",
            "<TA;TB;TThis;>;)V"
        }
    .end annotation

    .prologue
    .line 317
    iput-object p2, p0, Lscala/collection/MapLike$$anonfun$filterNot$1;->res$1:Lscala/runtime/ObjectRef;

    iput-object p3, p0, Lscala/collection/MapLike$$anonfun$filterNot$1;->p$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 317
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/MapLike$$anonfun$filterNot$1;->apply(Lscala/Tuple2;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Lscala/Tuple2;)V
    .locals 3
    .param p1, "kv"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lscala/collection/MapLike$$anonfun$filterNot$1;->p$1:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lscala/collection/MapLike$$anonfun$filterNot$1;->res$1:Lscala/runtime/ObjectRef;

    iget-object v0, p0, Lscala/collection/MapLike$$anonfun$filterNot$1;->res$1:Lscala/runtime/ObjectRef;

    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/Map;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/collection/Map;->$minus(Ljava/lang/Object;)Lscala/collection/Map;

    move-result-object v0

    iput-object v0, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    :cond_0
    return-void
.end method
