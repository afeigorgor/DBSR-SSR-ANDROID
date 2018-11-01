.class public abstract Lscala/collection/SeqLike$class;
.super Ljava/lang/Object;
.source "SeqLike.scala"


# direct methods
.method public static $colon$plus(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/SeqLike;
    .param p1, "elem"    # Ljava/lang/Object;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 556
    invoke-interface {p0}, Lscala/collection/SeqLike;->repr()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 557
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {p0}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 558
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 559
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static $init$(Lscala/collection/SeqLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/SeqLike;

    .prologue
    .line 62
    return-void
.end method

.method public static $plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/SeqLike;
    .param p1, "elem"    # Ljava/lang/Object;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 549
    invoke-interface {p0}, Lscala/collection/SeqLike;->repr()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 550
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 551
    invoke-interface {p0}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 552
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static contains(Lscala/collection/SeqLike;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/SeqLike;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 401
    new-instance v0, Lscala/collection/SeqLike$$anonfun$contains$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/SeqLike$$anonfun$contains$1;-><init>(Lscala/collection/SeqLike;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lscala/collection/SeqLike;->exists(Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public static corresponds(Lscala/collection/SeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 5
    .param p0, "$this"    # Lscala/collection/SeqLike;
    .param p1, "that"    # Lscala/collection/GenSeq;
    .param p2, "p"    # Lscala/Function2;

    .prologue
    const/4 v2, 0x0

    .line 576
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    .line 577
    .local v0, "i":Lscala/collection/Iterator;
    invoke-interface {p1}, Lscala/collection/GenSeq;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    .line 578
    .local v1, "j":Lscala/collection/Iterator;
    :cond_0
    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 579
    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 580
    :cond_1
    :goto_0
    return v2

    .line 582
    :cond_2
    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static distinct(Lscala/collection/SeqLike;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # Lscala/collection/SeqLike;

    .prologue
    .line 503
    invoke-interface {p0}, Lscala/collection/SeqLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 504
    .local v0, "b":Lscala/collection/mutable/Builder;
    sget-object v2, Lscala/collection/mutable/HashSet$;->MODULE$:Lscala/collection/mutable/HashSet$;

    sget-object v3, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v2, v3}, Lscala/collection/mutable/HashSet$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/HashSet;

    .line 505
    .local v1, "seen":Lscala/collection/mutable/HashSet;
    new-instance v2, Lscala/collection/SeqLike$$anonfun$distinct$1;

    invoke-direct {v2, p0, v0, v1}, Lscala/collection/SeqLike$$anonfun$distinct$1;-><init>(Lscala/collection/SeqLike;Lscala/collection/mutable/Builder;Lscala/collection/mutable/HashSet;)V

    invoke-interface {p0, v2}, Lscala/collection/SeqLike;->foreach(Lscala/Function1;)V

    .line 511
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static indexWhere(Lscala/collection/SeqLike;Lscala/Function1;I)I
    .locals 3
    .param p0, "$this"    # Lscala/collection/SeqLike;
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I

    .prologue
    .line 117
    move v0, p2

    .line 118
    .local v0, "i":I
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object v2

    invoke-interface {v2, p2}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object v1

    .line 119
    .local v1, "it":Lscala/collection/Iterator;
    :goto_0
    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 121
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isEmpty(Lscala/collection/SeqLike;)Z
    .locals 2
    .param p0, "$this"    # Lscala/collection/SeqLike;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-interface {p0, v0}, Lscala/collection/SeqLike;->lengthCompare(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static lengthCompare(Lscala/collection/SeqLike;I)I
    .locals 4
    .param p0, "$this"    # Lscala/collection/SeqLike;
    .param p1, "len"    # I

    .prologue
    const/4 v2, 0x1

    .line 87
    if-gez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    const/4 v0, 0x0

    .line 90
    .local v0, "i":I
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    .line 91
    .local v1, "it":Lscala/collection/Iterator;
    :goto_1
    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    if-ne v0, p1, :cond_2

    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 93
    :cond_2
    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_3
    sub-int v2, v0, p1

    goto :goto_0
.end method

.method public static reverse(Lscala/collection/SeqLike;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this"    # Lscala/collection/SeqLike;

    .prologue
    .line 272
    sget-object v3, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-static {v3}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v2

    .line 273
    .local v2, "xs":Lscala/runtime/ObjectRef;
    new-instance v3, Lscala/collection/SeqLike$$anonfun$reverse$1;

    invoke-direct {v3, p0, v2}, Lscala/collection/SeqLike$$anonfun$reverse$1;-><init>(Lscala/collection/SeqLike;Lscala/runtime/ObjectRef;)V

    invoke-interface {p0, v3}, Lscala/collection/SeqLike;->foreach(Lscala/Function1;)V

    .line 275
    invoke-interface {p0}, Lscala/collection/SeqLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 276
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {v0, p0}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;)V

    .line 277
    iget-object v1, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/List;

    new-instance v3, Lscala/collection/SeqLike$$anonfun$reverse$2;

    invoke-direct {v3, p0, v0}, Lscala/collection/SeqLike$$anonfun$reverse$2;-><init>(Lscala/collection/SeqLike;Lscala/collection/mutable/Builder;)V

    .local v1, "these1":Lscala/collection/immutable/List;
    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 277
    :cond_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v3, Lscala/collection/SeqLike$$anonfun$reverse$2;->b$1:Lscala/collection/mutable/Builder;

    invoke-interface {v5, v4}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "these1":Lscala/collection/immutable/List;
    check-cast v1, Lscala/collection/immutable/List;

    .restart local v1    # "these1":Lscala/collection/immutable/List;
    goto :goto_0
.end method

.method public static reverseIterator(Lscala/collection/SeqLike;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/SeqLike;

    .prologue
    .line 301
    invoke-interface {p0}, Lscala/collection/SeqLike;->reverse()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/SeqLike;->toCollection(Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static segmentLength(Lscala/collection/SeqLike;Lscala/Function1;I)I
    .locals 3
    .param p0, "$this"    # Lscala/collection/SeqLike;
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "i":I
    invoke-interface {p0}, Lscala/collection/SeqLike;->iterator()Lscala/collection/Iterator;

    move-result-object v2

    invoke-interface {v2, p2}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object v1

    .line 111
    .local v1, "it":Lscala/collection/Iterator;
    :goto_0
    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return v0
.end method

.method public static size(Lscala/collection/SeqLike;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/SeqLike;

    .prologue
    .line 106
    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result v0

    return v0
.end method

.method public static sortWith(Lscala/collection/SeqLike;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/SeqLike;
    .param p1, "lt"    # Lscala/Function2;

    .prologue
    .line 601
    sget-object v0, Lscala/math/Ordering$;->MODULE$:Lscala/math/Ordering$;

    new-instance v0, Lscala/math/Ordering$$anon$9;

    invoke-direct {v0, p1}, Lscala/math/Ordering$$anon$9;-><init>(Lscala/Function2;)V

    invoke-interface {p0, v0}, Lscala/collection/SeqLike;->sorted(Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static sorted(Lscala/collection/SeqLike;Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this"    # Lscala/collection/SeqLike;
    .param p1, "ord"    # Lscala/math/Ordering;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 637
    invoke-interface {p0}, Lscala/collection/SeqLike;->length()I

    move-result v3

    .line 638
    .local v3, "len":I
    invoke-interface {p0}, Lscala/collection/SeqLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v1

    .line 639
    .local v1, "b":Lscala/collection/mutable/Builder;
    if-ne v3, v4, :cond_0

    invoke-interface {v1, p0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 655
    :goto_0
    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 640
    :cond_0
    if-le v3, v4, :cond_1

    .line 641
    invoke-interface {v1, v3}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 642
    new-array v0, v3, [Ljava/lang/Object;

    .line 643
    .local v0, "arr":[Ljava/lang/Object;
    invoke-static {v5}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v2

    .line 644
    .local v2, "i":Lscala/runtime/IntRef;
    new-instance v4, Lscala/collection/SeqLike$$anonfun$sorted$1;

    invoke-direct {v4, p0, v0, v2}, Lscala/collection/SeqLike$$anonfun$sorted$1;-><init>(Lscala/collection/SeqLike;[Ljava/lang/Object;Lscala/runtime/IntRef;)V

    invoke-interface {p0, v4}, Lscala/collection/SeqLike;->foreach(Lscala/Function1;)V

    .line 648
    invoke-static {v0, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 649
    iput v5, v2, Lscala/runtime/IntRef;->elem:I

    .line 650
    :goto_1
    iget v4, v2, Lscala/runtime/IntRef;->elem:I

    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 651
    iget v4, v2, Lscala/runtime/IntRef;->elem:I

    aget-object v4, v0, v4

    invoke-interface {v1, v4}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 652
    iget v4, v2, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Lscala/runtime/IntRef;->elem:I

    goto :goto_1

    .line 640
    .end local v0    # "arr":[Ljava/lang/Object;
    .end local v2    # "i":Lscala/runtime/IntRef;
    :cond_1
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public static thisCollection(Lscala/collection/SeqLike;)Lscala/collection/Seq;
    .locals 0
    .param p0, "$this"    # Lscala/collection/SeqLike;

    .prologue
    .line 64
    check-cast p0, Lscala/collection/Seq;

    .end local p0    # "$this":Lscala/collection/SeqLike;
    return-object p0
.end method

.method public static toCollection(Lscala/collection/SeqLike;Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 0
    .param p0, "$this"    # Lscala/collection/SeqLike;
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 65
    check-cast p1, Lscala/collection/Seq;

    .end local p1    # "repr":Ljava/lang/Object;
    return-object p1
.end method

.method public static toSeq(Lscala/collection/SeqLike;)Lscala/collection/Seq;
    .locals 1
    .param p0, "$this"    # Lscala/collection/SeqLike;

    .prologue
    .line 663
    invoke-interface {p0}, Lscala/collection/SeqLike;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lscala/collection/SeqLike;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/SeqLike;

    .prologue
    .line 682
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toString(Lscala/collection/TraversableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
