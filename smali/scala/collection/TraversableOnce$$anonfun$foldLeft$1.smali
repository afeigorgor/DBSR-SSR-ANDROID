.class public final Lscala/collection/TraversableOnce$$anonfun$foldLeft$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
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
.field private final op$1:Lscala/Function2;

.field private final result$2:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;Lscala/runtime/ObjectRef;Lscala/Function2;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/TraversableOnce;
    .param p2, "result$2"    # Lscala/runtime/ObjectRef;
    .param p3, "op$1"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 157
    iput-object p2, p0, Lscala/collection/TraversableOnce$$anonfun$foldLeft$1;->result$2:Lscala/runtime/ObjectRef;

    iput-object p3, p0, Lscala/collection/TraversableOnce$$anonfun$foldLeft$1;->op$1:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 157
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$$anonfun$foldLeft$1;->apply(Ljava/lang/Object;)V

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
    .line 157
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$foldLeft$1;->result$2:Lscala/runtime/ObjectRef;

    iget-object v1, p0, Lscala/collection/TraversableOnce$$anonfun$foldLeft$1;->op$1:Lscala/Function2;

    iget-object v2, p0, Lscala/collection/TraversableOnce$$anonfun$foldLeft$1;->result$2:Lscala/runtime/ObjectRef;

    iget-object v2, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method
