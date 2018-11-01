.class public abstract Lscala/math/Numeric$IntIsIntegral$class;
.super Ljava/lang/Object;
.source "Numeric.scala"


# direct methods
.method public static $init$(Lscala/math/Numeric$IntIsIntegral;)V
    .locals 0
    .param p0, "$this"    # Lscala/math/Numeric$IntIsIntegral;

    .prologue
    .line 45
    return-void
.end method

.method public static fromInt(Lscala/math/Numeric$IntIsIntegral;I)I
    .locals 0
    .param p0, "$this"    # Lscala/math/Numeric$IntIsIntegral;
    .param p1, "x"    # I

    .prologue
    .line 52
    return p1
.end method

.method public static plus(Lscala/math/Numeric$IntIsIntegral;II)I
    .locals 1
    .param p0, "$this"    # Lscala/math/Numeric$IntIsIntegral;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 46
    add-int v0, p1, p2

    return v0
.end method

.method public static toInt(Lscala/math/Numeric$IntIsIntegral;I)I
    .locals 0
    .param p0, "$this"    # Lscala/math/Numeric$IntIsIntegral;
    .param p1, "x"    # I

    .prologue
    .line 53
    return p1
.end method
