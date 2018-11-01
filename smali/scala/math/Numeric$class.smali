.class public abstract Lscala/math/Numeric$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric;)V
    .locals 0
    .param p0, "$this"    # Lscala/math/Numeric;

    .prologue
    .line 194
    return-void
.end method

.method public static zero(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/math/Numeric;

    .prologue
    .line 205
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lscala/math/Numeric;->fromInt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
