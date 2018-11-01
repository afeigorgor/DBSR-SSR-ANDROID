.class public final Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;
.super Lscala/runtime/AbstractFunction1;
.source "IndexedSeqOptimized.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/IndexedSeqOptimized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final p$2:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/IndexedSeqOptimized;
    .param p2, "p$2"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/IndexedSeqOptimized",
            "<TA;TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 204
    iput-object p2, p0, Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;->p$2:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;->p$2:Lscala/Function1;

    invoke-interface {v0, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
