.class public abstract Lscala/collection/TraversableOnce$class;
.super Ljava/lang/Object;
.source "TraversableOnce.scala"


# direct methods
.method public static $div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;

    .prologue
    .line 151
    invoke-interface {p0, p1, p2}, Lscala/collection/TraversableOnce;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $init$(Lscala/collection/TraversableOnce;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 62
    return-void
.end method

.method public static addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "b"    # Lscala/collection/mutable/StringBuilder;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "sep"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v1, 0x1

    invoke-static {v1}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .line 356
    .local v0, "first":Lscala/runtime/BooleanRef;
    invoke-virtual {p1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    .line 357
    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$addString$1;

    invoke-direct {v1, p0, v0, p1, p3}, Lscala/collection/TraversableOnce$$anonfun$addString$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/BooleanRef;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 367
    invoke-virtual {p1, p4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    .line 369
    return-object p1
.end method

.method public static collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;
    .locals 6
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "pf"    # Lscala/PartialFunction;

    .prologue
    .line 132
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 135
    :try_start_0
    instance-of v3, p0, Lscala/collection/Iterator;

    if-eqz v3, :cond_1

    move-object v0, p0

    check-cast v0, Lscala/collection/Iterator;

    move-object v3, v0

    .line 143
    :goto_0
    new-instance v1, Lscala/collection/TraversableOnce$$anon$2;

    invoke-direct {v1, p0}, Lscala/collection/TraversableOnce$$anon$2;-><init>(Lscala/collection/TraversableOnce;)V

    .line 144
    .local v1, "sentinel":Lscala/Function1;
    :cond_0
    invoke-interface {v3}, Lscala/collection/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 145
    invoke-interface {v3}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5, v1}, Lscala/PartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v2

    .line 146
    .local v2, "x":Ljava/lang/Object;
    if-eq v2, v1, :cond_0

    new-instance v3, Lscala/Some;

    invoke-direct {v3, v2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    .end local v1    # "sentinel":Lscala/Function1;
    .end local v2    # "x":Ljava/lang/Object;
    :goto_1
    return-object v3

    .line 136
    :cond_1
    instance-of v3, p0, Lscala/collection/GenIterable;

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lscala/collection/TraversableOnce;->toIterator()Lscala/collection/Iterator;

    move-result-object v3

    goto :goto_0

    .line 148
    .restart local v1    # "sentinel":Lscala/Function1;
    :cond_2
    sget-object v3, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1

    .line 138
    .end local v1    # "sentinel":Lscala/Function1;
    :cond_3
    new-instance v3, Lscala/collection/TraversableOnce$$anonfun$1;

    invoke-direct {v3, p0, v4}, Lscala/collection/TraversableOnce$$anonfun$1;-><init>(Lscala/collection/TraversableOnce;Ljava/lang/Object;)V

    invoke-interface {p1, v3}, Lscala/PartialFunction;->runWith(Lscala/Function1;)Lscala/Function1;

    move-result-object v3

    invoke-interface {p0, v3}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 139
    sget-object v3, Lscala/None$;->MODULE$:Lscala/None$;
    :try_end_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 132
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_4

    invoke-virtual {v3}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/Option;

    goto :goto_1

    :cond_4
    throw v3
.end method

.method public static copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;I)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I

    .prologue
    .line 278
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, p2

    invoke-interface {p0, p1, p2, v0}, Lscala/collection/TraversableOnce;->copyToArray(Ljava/lang/Object;II)V

    return-void
.end method

.method public static copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "dest"    # Lscala/collection/mutable/Buffer;

    .prologue
    .line 275
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/collection/mutable/Buffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    return-void
.end method

.method public static foldLeft(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;

    .prologue
    .line 156
    invoke-static {p1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 157
    .local v0, "result":Lscala/runtime/ObjectRef;
    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$foldLeft$1;

    invoke-direct {v1, p0, v0, p2}, Lscala/collection/TraversableOnce$$anonfun$foldLeft$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/ObjectRef;Lscala/Function2;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 158
    iget-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object v1
.end method

.method public static mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 327
    const-string v0, ""

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v0, ""

    const-string v1, ""

    invoke-interface {p0, v0, p1, v1}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .prologue
    .line 323
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0, v0, p1, p2, p3}, Lscala/collection/TraversableOnce;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nonEmpty(Lscala/collection/TraversableOnce;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 111
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "op"    # Lscala/Function2;

    .prologue
    .line 179
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "empty.reduceLeft"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v1

    .line 183
    .local v1, "first":Lscala/runtime/BooleanRef;
    const/4 v2, 0x0

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 185
    .local v0, "acc":Lscala/runtime/ObjectRef;
    new-instance v2, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lscala/collection/TraversableOnce$$anonfun$reduceLeft$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/BooleanRef;Lscala/runtime/ObjectRef;Lscala/Function2;)V

    invoke-interface {p0, v2}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 192
    iget-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-object v2
.end method

.method public static reduceLeftOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "op"    # Lscala/Function2;

    .prologue
    .line 203
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-interface {p0, p1}, Lscala/collection/TraversableOnce;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static reduceOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "op"    # Lscala/Function2;

    .prologue
    .line 210
    invoke-interface {p0, p1}, Lscala/collection/TraversableOnce;->reduceLeftOption(Lscala/Function2;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public static size(Lscala/collection/TraversableOnce;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 106
    const/4 v1, 0x0

    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 107
    .local v0, "result":Lscala/runtime/IntRef;
    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$size$1;

    invoke-direct {v1, p0, v0}, Lscala/collection/TraversableOnce$$anonfun$size$1;-><init>(Lscala/collection/TraversableOnce;Lscala/runtime/IntRef;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 108
    iget v1, v0, Lscala/runtime/IntRef;->elem:I

    return v1
.end method

.method public static sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "num"    # Lscala/math/Numeric;

    .prologue
    .line 216
    invoke-interface {p1}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$sum$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/TraversableOnce$$anonfun$sum$1;-><init>(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)V

    invoke-interface {p0, v0, v1}, Lscala/collection/TraversableOnce;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static to(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "cbf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 309
    invoke-interface {p1}, Lscala/collection/generic/CanBuildFrom;->apply()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 310
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 311
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "evidence$1"    # Lscala/reflect/ClassTag;

    .prologue
    .line 284
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->isTraversableAgain()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->size()I

    move-result v1

    invoke-interface {p1, v1}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lscala/collection/TraversableOnce;->copyToArray(Ljava/lang/Object;I)V

    .line 284
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 289
    :cond_0
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object v1

    invoke-interface {v1, p1}, Lscala/collection/mutable/Buffer;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static toBuffer(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 302
    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Buffer;

    return-object v0
.end method

.method public static toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 294
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    return-object v0
.end method

.method public static toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 2
    .param p0, "$this"    # Lscala/collection/TraversableOnce;
    .param p1, "ev"    # Lscala/Predef$$less$colon$less;

    .prologue
    .line 315
    sget-object v1, Lscala/collection/immutable/Map$;->MODULE$:Lscala/collection/immutable/Map$;

    invoke-virtual {v1}, Lscala/collection/immutable/Map$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 316
    .local v0, "b":Lscala/collection/mutable/Builder;
    new-instance v1, Lscala/collection/TraversableOnce$$anonfun$toMap$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/TraversableOnce$$anonfun$toMap$1;-><init>(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Builder;Lscala/Predef$$less$colon$less;)V

    invoke-interface {p0, v1}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 319
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Map;

    return-object v1
.end method

.method public static toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 298
    invoke-interface {p0}, Lscala/collection/TraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static toSet(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Set;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 304
    sget-object v0, Lscala/collection/immutable/Set$;->MODULE$:Lscala/collection/immutable/Set$;

    invoke-virtual {v0}, Lscala/collection/immutable/Set$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Set;

    return-object v0
.end method

.method public static toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;
    .locals 1
    .param p0, "$this"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 306
    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0}, Lscala/collection/immutable/Vector$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/TraversableOnce;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Vector;

    return-object v0
.end method
