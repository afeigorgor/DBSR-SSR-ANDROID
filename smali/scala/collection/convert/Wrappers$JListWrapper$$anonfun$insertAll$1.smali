.class public final Lscala/collection/convert/Wrappers$JListWrapper$$anonfun$insertAll$1;
.super Lscala/runtime/AbstractFunction1;
.source "Wrappers.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/convert/Wrappers$JListWrapper;->insertAll(ILscala/collection/Traversable;)V
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
.field private final ins$1:Ljava/util/List;


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers$JListWrapper;Ljava/util/List;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/convert/Wrappers$JListWrapper;
    .param p2, "ins$1"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/convert/Wrappers$JListWrapper",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    iput-object p2, p0, Lscala/collection/convert/Wrappers$JListWrapper$$anonfun$insertAll$1;->ins$1:Ljava/util/List;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JListWrapper$$anonfun$insertAll$1;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JListWrapper$$anonfun$insertAll$1;->ins$1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
