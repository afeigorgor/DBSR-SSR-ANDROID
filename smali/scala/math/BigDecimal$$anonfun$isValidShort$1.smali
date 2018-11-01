.class public final Lscala/math/BigDecimal$$anonfun$isValidShort$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "BigDecimal.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/math/BigDecimal;->isValidShort()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/math/BigDecimal;


# direct methods
.method public constructor <init>(Lscala/math/BigDecimal;)V
    .locals 1
    .param p1, "$outer"    # Lscala/math/BigDecimal;

    .prologue
    .line 463
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/math/BigDecimal$$anonfun$isValidShort$1;->$outer:Lscala/math/BigDecimal;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0}, Lscala/math/BigDecimal$$anonfun$isValidShort$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lscala/math/BigDecimal$$anonfun$isValidShort$1;->$outer:Lscala/math/BigDecimal;

    invoke-virtual {v0}, Lscala/math/BigDecimal;->toShortExact()S

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lscala/math/BigDecimal$$anonfun$isValidShort$1;->$outer:Lscala/math/BigDecimal;

    invoke-virtual {v0}, Lscala/math/BigDecimal;->toShortExact()S

    return-void
.end method
