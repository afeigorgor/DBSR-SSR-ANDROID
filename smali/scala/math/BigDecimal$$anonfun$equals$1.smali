.class public final Lscala/math/BigDecimal$$anonfun$equals$1;
.super Lscala/runtime/AbstractFunction1;
.source "BigDecimal.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/BigDecimal;->equals(Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/math/BigInt;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final x3$1:Lscala/math/BigInt;


# direct methods
.method public constructor <init>(Lscala/math/BigDecimal;Lscala/math/BigInt;)V
    .locals 0
    .param p1, "$outer"    # Lscala/math/BigDecimal;
    .param p2, "x3$1"    # Lscala/math/BigInt;

    .prologue
    .line 449
    iput-object p2, p0, Lscala/math/BigDecimal$$anonfun$equals$1;->x3$1:Lscala/math/BigInt;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 449
    check-cast p1, Lscala/math/BigInt;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/math/BigDecimal$$anonfun$equals$1;->apply(Lscala/math/BigInt;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lscala/math/BigInt;)Z
    .locals 1
    .param p1, "x$1"    # Lscala/math/BigInt;

    .prologue
    .line 449
    iget-object v0, p0, Lscala/math/BigDecimal$$anonfun$equals$1;->x3$1:Lscala/math/BigInt;

    invoke-virtual {v0, p1}, Lscala/math/BigInt;->equals(Lscala/math/BigInt;)Z

    move-result v0

    return v0
.end method
