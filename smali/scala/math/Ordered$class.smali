.class public abstract Lscala/math/Ordered$class;
.super Ljava/lang/Object;
.source "Ordered.scala"


# direct methods
.method public static $init$(Lscala/math/Ordered;)V
    .locals 0
    .param p0, "$this"    # Lscala/math/Ordered;

    .prologue
    .line 57
    return-void
.end method

.method public static compareTo(Lscala/math/Ordered;Ljava/lang/Object;)I
    .locals 1
    .param p0, "$this"    # Lscala/math/Ordered;
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 92
    invoke-interface {p0, p1}, Lscala/math/Ordered;->compare(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
