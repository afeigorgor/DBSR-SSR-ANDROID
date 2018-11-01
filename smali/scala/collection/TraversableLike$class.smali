.class public abstract Lscala/collection/TraversableLike$class;
.super Ljava/lang/Object;
.source "TraversableLike.scala"


# direct methods
.method public static $init$(Lscala/collection/TraversableLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 69
    return-void
.end method

.method public static $plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "that"    # Lscala/collection/GenTraversableOnce;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 144
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 145
    .local v0, "b":Lscala/collection/mutable/Builder;
    instance-of v1, p1, Lscala/collection/IndexedSeqLike;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/TraversableOnce;->size()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;I)V

    .line 146
    :cond_0
    invoke-interface {p0}, Lscala/collection/TraversableLike;->thisCollection()Lscala/collection/Traversable;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 147
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 148
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static final builder$1(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/mutable/Builder;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "bf$1"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 229
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 230
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;)V

    .line 231
    return-object v0
.end method

.method private static final builder$2(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "bf$2"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 239
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public static copyToArray(Lscala/collection/TraversableLike;Ljava/lang/Object;II)V
    .locals 5
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 570
    invoke-static {p2}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v1

    .local v1, "i":Lscala/runtime/IntRef;
    sget-object v2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 571
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int v3, p2, p3

    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v4, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    .line 572
    .local v0, "end":I
    sget-object v2, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v2}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v2

    .line 573
    new-instance v3, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;

    invoke-direct {v3, p0, v1, v0, p1}, Lscala/collection/TraversableLike$$anonfun$copyToArray$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/IntRef;ILjava/lang/Object;)V

    .line 572
    invoke-virtual {v2, v3}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    return-void
.end method

.method public static drop(Lscala/collection/TraversableLike;I)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "n"    # I

    .prologue
    .line 467
    if-gtz p1, :cond_0

    .line 468
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 469
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;)V

    .line 470
    invoke-interface {p0}, Lscala/collection/TraversableLike;->thisCollection()Lscala/collection/Traversable;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/Builder;

    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    .line 467
    .end local v0    # "b":Lscala/collection/mutable/Builder;
    :goto_0
    return-object v1

    .line 472
    :cond_0
    const v1, 0x7fffffff

    neg-int v2, p1

    invoke-interface {p0, p1, v1, v2}, Lscala/collection/TraversableLike;->sliceWithKnownDelta(III)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static exists(Lscala/collection/TraversableLike;Lscala/Function1;)Z
    .locals 3
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 350
    const/4 v1, 0x0

    invoke-static {v1}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .line 351
    .local v0, "result":Lscala/runtime/BooleanRef;
    sget-object v1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v1

    .line 352
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$exists$1;

    invoke-direct {v2, p0, v0, p1}, Lscala/collection/TraversableLike$$anonfun$exists$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/BooleanRef;Lscala/Function1;)V

    .line 351
    invoke-virtual {v1, v2}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 355
    iget-boolean v1, v0, Lscala/runtime/BooleanRef;->elem:Z

    return v1
.end method

.method public static filter(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lscala/collection/TraversableLike$class;->filterImpl(Lscala/collection/TraversableLike;Lscala/Function1;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static filterImpl(Lscala/collection/TraversableLike;Lscala/Function1;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "p"    # Lscala/Function1;
    .param p2, "isFlipped"    # Z

    .prologue
    .line 246
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 247
    .local v0, "b":Lscala/collection/mutable/Builder;
    new-instance v1, Lscala/collection/TraversableLike$$anonfun$filterImpl$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lscala/collection/TraversableLike$$anonfun$filterImpl$1;-><init>(Lscala/collection/TraversableLike;Lscala/Function1;ZLscala/collection/mutable/Builder;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 250
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static filterNot(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lscala/collection/TraversableLike$class;->filterImpl(Lscala/collection/TraversableLike;Lscala/Function1;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static flatMap(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "f"    # Lscala/Function1;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 240
    invoke-static {p0, p2}, Lscala/collection/TraversableLike$class;->builder$2(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 241
    .local v0, "b":Lscala/collection/mutable/Builder;
    new-instance v1, Lscala/collection/TraversableLike$$anonfun$flatMap$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/TraversableLike$$anonfun$flatMap$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/Function1;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 242
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static forall(Lscala/collection/TraversableLike;Lscala/Function1;)Z
    .locals 3
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 333
    const/4 v1, 0x1

    invoke-static {v1}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .line 334
    .local v0, "result":Lscala/runtime/BooleanRef;
    sget-object v1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v1

    .line 335
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$forall$1;

    invoke-direct {v2, p0, v0, p1}, Lscala/collection/TraversableLike$$anonfun$forall$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/BooleanRef;Lscala/Function1;)V

    .line 334
    invoke-virtual {v1, v2}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 338
    iget-boolean v1, v0, Lscala/runtime/BooleanRef;->elem:Z

    return v1
.end method

.method public static head(Lscala/collection/TraversableLike;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 397
    new-instance v1, Lscala/collection/TraversableLike$$anonfun$2;

    invoke-direct {v1, p0}, Lscala/collection/TraversableLike$$anonfun$2;-><init>(Lscala/collection/TraversableLike;)V

    invoke-static {v1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 398
    .local v0, "result":Lscala/runtime/ObjectRef;
    sget-object v1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v1

    .line 399
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$head$1;

    invoke-direct {v2, p0, v0}, Lscala/collection/TraversableLike$$anonfun$head$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/ObjectRef;)V

    .line 398
    invoke-virtual {v1, v2}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 404
    iget-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/Function0;

    invoke-interface {v1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isEmpty(Lscala/collection/TraversableLike;)Z
    .locals 3
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 131
    const/4 v1, 0x1

    invoke-static {v1}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .line 132
    .local v0, "result":Lscala/runtime/BooleanRef;
    sget-object v1, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v1}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v1

    .line 133
    new-instance v2, Lscala/collection/TraversableLike$$anonfun$isEmpty$1;

    invoke-direct {v2, p0, v0}, Lscala/collection/TraversableLike$$anonfun$isEmpty$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/BooleanRef;)V

    .line 132
    invoke-virtual {v1, v2}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 138
    iget-boolean v1, v0, Lscala/runtime/BooleanRef;->elem:Z

    return v1
.end method

.method public static final isTraversableAgain(Lscala/collection/TraversableLike;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public static last(Lscala/collection/TraversableLike;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 431
    invoke-interface {p0}, Lscala/collection/TraversableLike;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 432
    .local v0, "lst":Lscala/runtime/ObjectRef;
    new-instance v1, Lscala/collection/TraversableLike$$anonfun$last$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/TraversableLike$$anonfun$last$1;-><init>(Lscala/collection/TraversableLike;Lscala/runtime/ObjectRef;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 434
    iget-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object v1
.end method

.method public static map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "f"    # Lscala/Function1;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 233
    invoke-static {p0, p2}, Lscala/collection/TraversableLike$class;->builder$1(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 234
    .local v0, "b":Lscala/collection/mutable/Builder;
    new-instance v1, Lscala/collection/TraversableLike$$anonfun$map$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/TraversableLike$$anonfun$map$1;-><init>(Lscala/collection/TraversableLike;Lscala/collection/mutable/Builder;Lscala/Function1;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableLike;->foreach(Lscala/Function1;)V

    .line 235
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static repr(Lscala/collection/TraversableLike;)Ljava/lang/Object;
    .locals 0
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 87
    return-object p0
.end method

.method public static scala$collection$TraversableLike$$sliceInternal(Lscala/collection/TraversableLike;IILscala/collection/mutable/Builder;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "from"    # I
    .param p2, "until"    # I
    .param p3, "b"    # Lscala/collection/mutable/Builder;

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v5

    .line 480
    .local v5, "i":Lscala/runtime/IntRef;
    sget-object v0, Lscala/collection/Traversable$;->MODULE$:Lscala/collection/Traversable$;

    invoke-virtual {v0}, Lscala/collection/Traversable$;->breaks()Lscala/util/control/Breaks;

    move-result-object v6

    .line 481
    new-instance v0, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lscala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1;-><init>(Lscala/collection/TraversableLike;IILscala/collection/mutable/Builder;Lscala/runtime/IntRef;)V

    .line 480
    invoke-virtual {v6, v0}, Lscala/util/control/Breaks;->breakable(Lscala/Function0;)V

    .line 487
    invoke-interface {p3}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static slice(Lscala/collection/TraversableLike;II)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 475
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lscala/math/package$;->max(II)I

    move-result v0

    invoke-interface {p0, v0, p2}, Lscala/collection/TraversableLike;->sliceWithKnownBound(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static sliceWithKnownBound(Lscala/collection/TraversableLike;II)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 500
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 501
    .local v0, "b":Lscala/collection/mutable/Builder;
    if-gt p2, p1, :cond_0

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    .line 499
    :goto_0
    return-object v1

    .line 503
    :cond_0
    sub-int v1, p2, p1

    invoke-interface {v0, v1, p0}, Lscala/collection/mutable/Builder;->sizeHintBounded(ILscala/collection/TraversableLike;)V

    .line 504
    invoke-static {p0, p1, p2, v0}, Lscala/collection/TraversableLike$class;->scala$collection$TraversableLike$$sliceInternal(Lscala/collection/TraversableLike;IILscala/collection/mutable/Builder;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static sliceWithKnownDelta(Lscala/collection/TraversableLike;III)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "from"    # I
    .param p2, "until"    # I
    .param p3, "delta"    # I

    .prologue
    .line 491
    invoke-interface {p0}, Lscala/collection/TraversableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 492
    .local v0, "b":Lscala/collection/mutable/Builder;
    if-gt p2, p1, :cond_0

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    .line 490
    :goto_0
    return-object v1

    .line 494
    :cond_0
    invoke-interface {v0, p0, p3}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;I)V

    .line 495
    invoke-static {p0, p1, p2, v0}, Lscala/collection/TraversableLike$class;->scala$collection$TraversableLike$$sliceInternal(Lscala/collection/TraversableLike;IILscala/collection/mutable/Builder;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static stringPrefix(Lscala/collection/TraversableLike;)Ljava/lang/String;
    .locals 5
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    const/4 v4, -0x1

    .line 609
    invoke-interface {p0}, Lscala/collection/TraversableLike;->repr()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "string":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 611
    .local v0, "idx1":I
    if-eq v0, v4, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 612
    :cond_0
    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 613
    .local v1, "idx2":I
    if-eq v1, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 614
    :cond_1
    return-object v2
.end method

.method public static tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 421
    invoke-interface {p0}, Lscala/collection/TraversableLike;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "empty.tail"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/TraversableLike;->drop(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static take(Lscala/collection/TraversableLike;I)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "n"    # I

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lscala/collection/TraversableLike;->slice(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static thisCollection(Lscala/collection/TraversableLike;)Lscala/collection/Traversable;
    .locals 0
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 95
    check-cast p0, Lscala/collection/Traversable;

    .end local p0    # "$this":Lscala/collection/TraversableLike;
    return-object p0
.end method

.method public static to(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableLike;
    .param p1, "cbf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 588
    invoke-interface {p1}, Lscala/collection/generic/CanBuildFrom;->apply()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 589
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;)V

    .line 590
    invoke-interface {p0}, Lscala/collection/TraversableLike;->thisCollection()Lscala/collection/Traversable;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 591
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toIterator(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 584
    invoke-interface {p0}, Lscala/collection/TraversableLike;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static toStream(Lscala/collection/TraversableLike;)Lscala/collection/immutable/Stream;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 585
    invoke-interface {p0}, Lscala/collection/TraversableLike;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/Buffer;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lscala/collection/TraversableLike;)Ljava/lang/String;
    .locals 3
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 600
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0}, Lscala/collection/TraversableLike;->stringPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    const-string v2, ")"

    invoke-interface {p0, v0, v1, v2}, Lscala/collection/TraversableLike;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTraversable(Lscala/collection/TraversableLike;)Lscala/collection/Traversable;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableLike;

    .prologue
    .line 582
    invoke-interface {p0}, Lscala/collection/TraversableLike;->thisCollection()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method
