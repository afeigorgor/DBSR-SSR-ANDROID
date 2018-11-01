.class public final Lscala/collection/SetLike$$anonfun$$plus$plus$1;
.super Lscala/runtime/AbstractFunction2;
.source "SetLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/SetLike;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2",
        "<TThis;TA;TThis;>;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/SetLike;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/SetLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/SetLike",
            "<TA;TThis;>;)V"
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;
    .param p2, "v2"    # Ljava/lang/Object;

    .prologue
    .line 141
    check-cast p1, Lscala/collection/Set;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lscala/collection/SetLike$$anonfun$$plus$plus$1;->apply(Lscala/collection/Set;Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lscala/collection/Set;Ljava/lang/Object;)Lscala/collection/Set;
    .locals 1
    .param p1, "x$2"    # Lscala/collection/Set;
    .param p2, "x$3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TThis;TA;)TThis;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-interface {p1, p2}, Lscala/collection/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method
