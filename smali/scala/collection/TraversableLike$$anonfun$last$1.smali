.class public final Lscala/collection/TraversableLike$$anonfun$last$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableLike;->last()Ljava/lang/Object;
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
.field private final lst$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike;Lscala/runtime/ObjectRef;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/TraversableLike;
    .param p2, "lst$1"    # Lscala/runtime/ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<TA;TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 432
    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$last$1;->lst$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lscala/collection/TraversableLike$$anonfun$last$1;->apply(Ljava/lang/Object;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$last$1;->lst$1:Lscala/runtime/ObjectRef;

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method
