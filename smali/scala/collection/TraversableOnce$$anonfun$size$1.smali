.class public final Lscala/collection/TraversableOnce$$anonfun$size$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce;->size()I
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
.field private final result$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;Lscala/runtime/IntRef;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/TraversableOnce;
    .param p2, "result$1"    # Lscala/runtime/IntRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    iput-object p2, p0, Lscala/collection/TraversableOnce$$anonfun$size$1;->result$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$$anonfun$size$1;->apply(Ljava/lang/Object;)V

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
    .line 107
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$size$1;->result$1:Lscala/runtime/IntRef;

    iget-object v1, p0, Lscala/collection/TraversableOnce$$anonfun$size$1;->result$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
