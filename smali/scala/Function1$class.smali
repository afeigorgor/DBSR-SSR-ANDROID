.class public abstract Lscala/Function1$class;
.super Ljava/lang/Object;
.source "Function1.scala"


# direct methods
.method public static $init$(Lscala/Function1;)V
    .locals 0
    .param p0, "$this"    # Lscala/Function1;

    .prologue
    .line 32
    return-void
.end method

.method public static apply$mcDI$sp(Lscala/Function1;I)D
    .locals 2
    .param p0, "$this"    # Lscala/Function1;
    .param p1, "v1"    # I

    .prologue
    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static apply$mcFI$sp(Lscala/Function1;I)F
    .locals 1
    .param p0, "$this"    # Lscala/Function1;
    .param p1, "v1"    # I

    .prologue
    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public static apply$mcII$sp(Lscala/Function1;I)I
    .locals 1
    .param p0, "$this"    # Lscala/Function1;
    .param p1, "v1"    # I

    .prologue
    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static apply$mcJI$sp(Lscala/Function1;I)J
    .locals 2
    .param p0, "$this"    # Lscala/Function1;
    .param p1, "v1"    # I

    .prologue
    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static apply$mcVI$sp(Lscala/Function1;I)V
    .locals 1
    .param p0, "$this"    # Lscala/Function1;
    .param p1, "v1"    # I

    .prologue
    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static apply$mcZI$sp(Lscala/Function1;I)Z
    .locals 1
    .param p0, "$this"    # Lscala/Function1;
    .param p1, "v1"    # I

    .prologue
    .line 36
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toString(Lscala/Function1;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/Function1;

    .prologue
    .line 54
    const-string v0, "<function1>"

    return-object v0
.end method
