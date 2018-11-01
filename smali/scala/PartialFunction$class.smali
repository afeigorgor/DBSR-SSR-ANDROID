.class public abstract Lscala/PartialFunction$class;
.super Ljava/lang/Object;
.source "PartialFunction.scala"


# direct methods
.method public static $init$(Lscala/PartialFunction;)V
    .locals 0
    .param p0, "$this"    # Lscala/PartialFunction;

    .prologue
    .line 55
    return-void
.end method

.method public static applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/PartialFunction;
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "default"    # Lscala/Function1;

    .prologue
    .line 123
    invoke-interface {p0, p1}, Lscala/PartialFunction;->isDefinedAt(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lscala/PartialFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static runWith(Lscala/PartialFunction;Lscala/Function1;)Lscala/Function1;
    .locals 1
    .param p0, "$this"    # Lscala/PartialFunction;
    .param p1, "action"    # Lscala/Function1;

    .prologue
    .line 140
    new-instance v0, Lscala/PartialFunction$$anonfun$runWith$1;

    invoke-direct {v0, p0, p1}, Lscala/PartialFunction$$anonfun$runWith$1;-><init>(Lscala/PartialFunction;Lscala/Function1;)V

    return-object v0
.end method
