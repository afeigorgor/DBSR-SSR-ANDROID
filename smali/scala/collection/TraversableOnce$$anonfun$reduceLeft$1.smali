.class public final Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;
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
.field private final acc$1:Lscala/runtime/ObjectRef;

.field private final first$1:Lscala/runtime/BooleanRef;

.field private final op$3:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;Lscala/runtime/BooleanRef;Lscala/runtime/ObjectRef;Lscala/Function2;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/TraversableOnce;
    .param p2, "first$1"    # Lscala/runtime/BooleanRef;
    .param p3, "acc$1"    # Lscala/runtime/ObjectRef;
    .param p4, "op$3"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 185
    iput-object p2, p0, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;->first$1:Lscala/runtime/BooleanRef;

    iput-object p3, p0, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;->acc$1:Lscala/runtime/ObjectRef;

    iput-object p4, p0, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;->op$3:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;->apply(Ljava/lang/Object;)V

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
    .line 186
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;->first$1:Lscala/runtime/BooleanRef;

    iget-boolean v0, v0, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;->acc$1:Lscala/runtime/ObjectRef;

    iput-object p1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 188
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;->first$1:Lscala/runtime/BooleanRef;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lscala/runtime/BooleanRef;->elem:Z

    .line 186
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;->acc$1:Lscala/runtime/ObjectRef;

    iget-object v1, p0, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;->op$3:Lscala/Function2;

    iget-object v2, p0, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;->acc$1:Lscala/runtime/ObjectRef;

    iget-object v2, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    goto :goto_0
.end method
