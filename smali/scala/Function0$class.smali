.class public abstract Lscala/Function0$class;
.super Ljava/lang/Object;
.source "Function0.scala"


# direct methods
.method public static $init$(Lscala/Function0;)V
    .locals 0
    .param p0, "$this"    # Lscala/Function0;

    .prologue
    .line 30
    return-void
.end method

.method public static apply$mcF$sp(Lscala/Function0;)F
    .locals 1
    .param p0, "$this"    # Lscala/Function0;

    .prologue
    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public static apply$mcI$sp(Lscala/Function0;)I
    .locals 1
    .param p0, "$this"    # Lscala/Function0;

    .prologue
    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static apply$mcV$sp(Lscala/Function0;)V
    .locals 0
    .param p0, "$this"    # Lscala/Function0;

    .prologue
    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    return-void
.end method

.method public static apply$mcZ$sp(Lscala/Function0;)Z
    .locals 1
    .param p0, "$this"    # Lscala/Function0;

    .prologue
    .line 34
    invoke-interface {p0}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static toString(Lscala/Function0;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/Function0;

    .prologue
    .line 36
    const-string v0, "<function0>"

    return-object v0
.end method
