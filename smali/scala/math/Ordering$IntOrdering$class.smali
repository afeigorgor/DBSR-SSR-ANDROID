.class public abstract Lscala/math/Ordering$IntOrdering$class;
.super Ljava/lang/Object;
.source "Ordering.scala"


# direct methods
.method public static $init$(Lscala/math/Ordering$IntOrdering;)V
    .locals 0
    .param p0, "$this"    # Lscala/math/Ordering$IntOrdering;

    .prologue
    .line 250
    return-void
.end method

.method public static compare(Lscala/math/Ordering$IntOrdering;II)I
    .locals 1
    .param p0, "$this"    # Lscala/math/Ordering$IntOrdering;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 252
    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    .line 253
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 254
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
