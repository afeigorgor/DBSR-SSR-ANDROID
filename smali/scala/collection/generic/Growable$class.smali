.class public abstract Lscala/collection/generic/Growable$class;
.super Ljava/lang/Object;
.source "Growable.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/Growable;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/generic/Growable;

    .prologue
    .line 27
    return-void
.end method

.method public static $plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/Growable;
    .param p1, "elem1"    # Ljava/lang/Object;
    .param p2, "elem2"    # Ljava/lang/Object;
    .param p3, "elems"    # Lscala/collection/Seq;

    .prologue
    .line 43
    invoke-interface {p0, p1}, Lscala/collection/generic/Growable;->$plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;

    move-result-object v0

    invoke-interface {v0, p2}, Lscala/collection/generic/Growable;->$plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;

    move-result-object v0

    invoke-interface {v0, p3}, Lscala/collection/generic/Growable;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public static $plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/Growable;
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 58
    instance-of v0, p1, Lscala/collection/LinearSeq;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/LinearSeq;

    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->loop$1(Lscala/collection/generic/Growable;Lscala/collection/LinearSeq;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 61
    :goto_0
    return-object p0

    .line 59
    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    :cond_0
    new-instance v0, Lscala/collection/generic/Growable$$anonfun$$plus$plus$eq$1;

    invoke-direct {v0, p0}, Lscala/collection/generic/Growable$$anonfun$$plus$plus$eq$1;-><init>(Lscala/collection/generic/Growable;)V

    invoke-interface {p1, v0}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method private static final loop$1(Lscala/collection/generic/Growable;Lscala/collection/LinearSeq;)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/Growable;
    .param p1, "xs"    # Lscala/collection/LinearSeq;

    .prologue
    .line 52
    :goto_0
    invoke-interface {p1}, Lscala/collection/LinearSeq;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p1}, Lscala/collection/LinearSeq;->head()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/generic/Growable;->$plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;

    .line 54
    invoke-interface {p1}, Lscala/collection/LinearSeq;->tail()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "xs":Lscala/collection/LinearSeq;
    check-cast p1, Lscala/collection/LinearSeq;

    .restart local p1    # "xs":Lscala/collection/LinearSeq;
    goto :goto_0

    .line 52
    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-void
.end method
