.class public final Lscala/collection/mutable/ArrayOps$$anonfun$flatten$1;
.super Lscala/runtime/AbstractFunction1;
.source "ArrayOps.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/ArrayOps;->flatten(Lscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TT;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/mutable/ArrayOps;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/mutable/ArrayOps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/ArrayOps",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0$1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 81
    instance-of v0, p1, Lscala/collection/IndexedSeq;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/SeqLike;

    .end local p1    # "x0$1":Ljava/lang/Object;
    invoke-interface {p1}, Lscala/collection/SeqLike;->size()I

    move-result v0

    :goto_0
    return v0

    .restart local p1    # "x0$1":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$1;->apply(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
