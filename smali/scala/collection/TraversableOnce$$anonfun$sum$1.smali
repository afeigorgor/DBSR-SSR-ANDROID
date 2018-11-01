.class public final Lscala/collection/TraversableOnce$$anonfun$sum$1;
.super Lscala/runtime/AbstractFunction2;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce;->sum(Lscala/math/Numeric;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2",
        "<TB;TB;TB;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final num$1:Lscala/math/Numeric;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/TraversableOnce;
    .param p2, "num$1"    # Lscala/math/Numeric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 216
    iput-object p2, p0, Lscala/collection/TraversableOnce$$anonfun$sum$1;->num$1:Lscala/math/Numeric;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "y"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;TB;)TB;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lscala/collection/TraversableOnce$$anonfun$sum$1;->num$1:Lscala/math/Numeric;

    invoke-interface {v0, p1, p2}, Lscala/math/Numeric;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
