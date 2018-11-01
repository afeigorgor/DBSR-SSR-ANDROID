.class public abstract Lscala/collection/Iterator$class;
.super Ljava/lang/Object;
.source "Iterator.scala"


# direct methods
.method public static $init$(Lscala/collection/Iterator;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/Iterator;

    .prologue
    .line 304
    return-void
.end method

.method public static buffered(Lscala/collection/Iterator;)Lscala/collection/BufferedIterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/Iterator;

    .prologue
    .line 991
    new-instance v0, Lscala/collection/Iterator$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/Iterator$$anon$1;-><init>(Lscala/collection/Iterator;)V

    return-object v0
.end method

.method public static copyToArray(Lscala/collection/Iterator;Ljava/lang/Object;II)V
    .locals 12
    .param p0, "$this"    # Lscala/collection/Iterator;
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1292
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-ltz p2, :cond_1

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v2

    if-lt p2, v2, :cond_0

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    new-instance v5, Lscala/collection/Iterator$$anonfun$copyToArray$1;

    invoke-direct {v5, p0, p1, p2}, Lscala/collection/Iterator$$anonfun$copyToArray$1;-><init>(Lscala/collection/Iterator;Ljava/lang/Object;I)V

    if-eqz v2, :cond_2

    .line 1293
    move v1, p2

    .line 1294
    .local v1, "i":I
    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v2, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, p2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v0, p2, v2

    .line 1295
    .local v0, "end":I
    :goto_1
    if-ge v1, v0, :cond_3

    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1296
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v1, v3}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 1297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "end":I
    .end local v1    # "i":I
    :cond_1
    move v2, v4

    .line 1292
    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v7, "requirement failed: "

    invoke-virtual {v2, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    new-instance v8, Lscala/StringContext;

    sget-object v9, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v10, "start "

    aput-object v10, v2, v4

    const-string v10, " out of range "

    aput-object v10, v2, v3

    const-string v10, ""

    aput-object v10, v2, v11

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v9, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-direct {v8, v2}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v9, v11, [Ljava/lang/Object;

    iget v10, v5, Lscala/collection/Iterator$$anonfun$copyToArray$1;->start$4:I

    invoke-static {v10}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    iget-object v5, v5, Lscala/collection/Iterator$$anonfun$copyToArray$1;->xs$2:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-virtual {v2, v9}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v8, v2}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1291
    .restart local v0    # "end":I
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public static drop(Lscala/collection/Iterator;I)Lscala/collection/Iterator;
    .locals 2
    .param p0, "$this"    # Lscala/collection/Iterator;
    .param p1, "n"    # I

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, "j":I
    :goto_0
    if-ge v0, p1, :cond_0

    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    return-object p0
.end method

.method public static exists(Lscala/collection/Iterator;Lscala/Function1;)Z
    .locals 2
    .param p0, "$this"    # Lscala/collection/Iterator;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 918
    const/4 v0, 0x0

    .line 919
    .local v0, "res":Z
    :goto_0
    if-nez v0, :cond_0

    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 920
    :cond_0
    return v0
.end method

.method public static filter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/Iterator;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 454
    new-instance v0, Lscala/collection/Iterator$$anon$13;

    invoke-direct {v0, p0, p1}, Lscala/collection/Iterator$$anon$13;-><init>(Lscala/collection/Iterator;Lscala/Function1;)V

    return-object v0
.end method

.method public static forall(Lscala/collection/Iterator;Lscala/Function1;)Z
    .locals 2
    .param p0, "$this"    # Lscala/collection/Iterator;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 904
    const/4 v0, 0x1

    .line 905
    .local v0, "res":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 906
    :cond_0
    return v0
.end method

.method public static foreach(Lscala/collection/Iterator;Lscala/Function1;)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/Iterator;
    .param p1, "f"    # Lscala/Function1;

    .prologue
    .line 893
    :goto_0
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static isEmpty(Lscala/collection/Iterator;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/Iterator;

    .prologue
    .line 330
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTraversableAgain(Lscala/collection/Iterator;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/Iterator;

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public static map(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/Iterator;
    .param p1, "f"    # Lscala/Function1;

    .prologue
    .line 407
    new-instance v0, Lscala/collection/Iterator$$anon$11;

    invoke-direct {v0, p0, p1}, Lscala/collection/Iterator$$anon$11;-><init>(Lscala/collection/Iterator;Lscala/Function1;)V

    return-object v0
.end method

.method public static seq(Lscala/collection/Iterator;)Lscala/collection/Iterator;
    .locals 0
    .param p0, "$this"    # Lscala/collection/Iterator;

    .prologue
    .line 307
    return-object p0
.end method

.method public static takeWhile(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/Iterator;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 592
    new-instance v0, Lscala/collection/Iterator$$anon$16;

    invoke-direct {v0, p0, p1}, Lscala/collection/Iterator$$anon$16;-><init>(Lscala/collection/Iterator;Lscala/Function1;)V

    return-object v0
.end method

.method public static toIterator(Lscala/collection/Iterator;)Lscala/collection/Iterator;
    .locals 0
    .param p0, "$this"    # Lscala/collection/Iterator;

    .prologue
    .line 1320
    return-object p0
.end method

.method public static toStream(Lscala/collection/Iterator;)Lscala/collection/immutable/Stream;
    .locals 3
    .param p0, "$this"    # Lscala/collection/Iterator;

    .prologue
    .line 1322
    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-interface {p0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lscala/collection/Iterator$$anonfun$toStream$1;

    invoke-direct {v2, p0}, Lscala/collection/Iterator$$anonfun$toStream$1;-><init>(Lscala/collection/Iterator;)V

    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    :goto_0
    return-object v0

    .line 1323
    :cond_0
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_0
.end method

.method public static toString(Lscala/collection/Iterator;)Ljava/lang/String;
    .locals 2
    .param p0, "$this"    # Lscala/collection/Iterator;

    .prologue
    .line 1332
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "non-empty"

    :goto_0
    invoke-virtual {v1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " iterator"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "empty"

    goto :goto_0
.end method

.method public static toTraversable(Lscala/collection/Iterator;)Lscala/collection/Traversable;
    .locals 1
    .param p0, "$this"    # Lscala/collection/Iterator;

    .prologue
    .line 1319
    invoke-interface {p0}, Lscala/collection/Iterator;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static withFilter(Lscala/collection/Iterator;Lscala/Function1;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/Iterator;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 500
    invoke-interface {p0, p1}, Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
