.class public abstract Lscala/collection/IterableLike$class;
.super Ljava/lang/Object;
.source "IterableLike.scala"


# direct methods
.method public static $init$(Lscala/collection/IterableLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/IterableLike;

    .prologue
    .line 51
    return-void
.end method

.method public static canEqual(Lscala/collection/IterableLike;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/IterableLike;
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 309
    const/4 v0, 0x1

    return v0
.end method

.method public static copyToArray(Lscala/collection/IterableLike;Ljava/lang/Object;II)V
    .locals 6
    .param p0, "$this"    # Lscala/collection/IterableLike;
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 250
    move v1, p2

    .local v1, "i":I
    sget-object v3, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 251
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int v4, p2, p3

    sget-object v5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v5, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    .line 252
    .local v0, "end":I
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v2

    .line 253
    .local v2, "it":Lscala/collection/Iterator;
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {v2}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v1, v4}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method public static drop(Lscala/collection/IterableLike;I)Ljava/lang/Object;
    .locals 6
    .param p0, "$this"    # Lscala/collection/IterableLike;
    .param p1, "n"    # I

    .prologue
    .line 143
    invoke-interface {p0}, Lscala/collection/IterableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 144
    .local v0, "b":Lscala/collection/mutable/Builder;
    sget-object v4, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Lscala/math/package$;->max(II)I

    move-result v3

    .line 145
    .local v3, "lo":I
    neg-int v4, v3

    invoke-interface {v0, p0, v4}, Lscala/collection/mutable/Builder;->sizeHint(Lscala/collection/TraversableLike;I)V

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "i":I
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v2

    .line 148
    .local v2, "it":Lscala/collection/Iterator;
    :goto_0
    if-ge v1, p1, :cond_0

    invoke-interface {v2}, Lscala/collection/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    invoke-interface {v0, v2}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v4

    check-cast v4, Lscala/collection/mutable/Builder;

    invoke-interface {v4}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public static exists(Lscala/collection/IterableLike;Lscala/Function1;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/IterableLike;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 77
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Iterator;->exists(Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public static forall(Lscala/collection/IterableLike;Lscala/Function1;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/IterableLike;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 75
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Iterator;->forall(Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public static foreach(Lscala/collection/IterableLike;Lscala/Function1;)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/IterableLike;
    .param p1, "f"    # Lscala/Function1;

    .prologue
    .line 72
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static head(Lscala/collection/IterableLike;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/IterableLike;

    .prologue
    .line 107
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isEmpty(Lscala/collection/IterableLike;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/IterableLike;

    .prologue
    .line 81
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z
    .locals 7
    .param p0, "$this"    # Lscala/collection/IterableLike;
    .param p1, "that"    # Lscala/collection/GenIterable;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 292
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    .line 293
    .local v0, "these":Lscala/collection/Iterator;
    invoke-interface {p1}, Lscala/collection/GenIterable;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    .line 294
    .local v1, "those":Lscala/collection/Iterator;
    :cond_0
    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 295
    invoke-interface {v0}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_1

    move v2, v3

    :goto_0
    if-nez v2, :cond_0

    .line 296
    :goto_1
    return v4

    .line 295
    :cond_1
    if-nez v2, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    instance-of v6, v2, Ljava/lang/Number;

    if-eqz v6, :cond_3

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, v5}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_3
    instance-of v6, v2, Ljava/lang/Character;

    if-eqz v6, :cond_4

    check-cast v2, Ljava/lang/Character;

    invoke-static {v2, v5}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 298
    :cond_5
    invoke-interface {v0}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    move v2, v4

    :goto_2
    move v4, v2

    .line 291
    goto :goto_1

    :cond_7
    move v2, v3

    .line 298
    goto :goto_2
.end method

.method public static slice(Lscala/collection/IterableLike;II)Ljava/lang/Object;
    .locals 7
    .param p0, "$this"    # Lscala/collection/IterableLike;
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 110
    sget-object v5, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lscala/math/package$;->max(II)I

    move-result v4

    .line 111
    .local v4, "lo":I
    sub-int v1, p2, v4

    .line 112
    .local v1, "elems":I
    invoke-interface {p0}, Lscala/collection/IterableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 113
    .local v0, "b":Lscala/collection/mutable/Builder;
    if-gtz v1, :cond_0

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v5

    .line 109
    :goto_0
    return-object v5

    .line 115
    :cond_0
    invoke-interface {v0, v1, p0}, Lscala/collection/mutable/Builder;->sizeHintBounded(ILscala/collection/TraversableLike;)V

    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, "i":I
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v5

    invoke-interface {v5, v4}, Lscala/collection/Iterator;->drop(I)Lscala/collection/Iterator;

    move-result-object v3

    .line 118
    .local v3, "it":Lscala/collection/Iterator;
    :goto_1
    if-ge v2, v1, :cond_1

    invoke-interface {v3}, Lscala/collection/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    invoke-interface {v3}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_1
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method public static take(Lscala/collection/IterableLike;I)Ljava/lang/Object;
    .locals 4
    .param p0, "$this"    # Lscala/collection/IterableLike;
    .param p1, "n"    # I

    .prologue
    .line 127
    invoke-interface {p0}, Lscala/collection/IterableLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 129
    .local v0, "b":Lscala/collection/mutable/Builder;
    if-gtz p1, :cond_0

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v3

    .line 126
    :goto_0
    return-object v3

    .line 131
    :cond_0
    invoke-interface {v0, p1, p0}, Lscala/collection/mutable/Builder;->sizeHintBounded(ILscala/collection/TraversableLike;)V

    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "i":I
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v2

    .line 134
    .local v2, "it":Lscala/collection/Iterator;
    :goto_1
    if-ge v1, p1, :cond_1

    invoke-interface {v2}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    :cond_1
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public static thisCollection(Lscala/collection/IterableLike;)Lscala/collection/Iterable;
    .locals 0
    .param p0, "$this"    # Lscala/collection/IterableLike;

    .prologue
    .line 54
    check-cast p0, Lscala/collection/Iterable;

    .end local p0    # "$this":Lscala/collection/IterableLike;
    return-object p0
.end method

.method public static toIterator(Lscala/collection/IterableLike;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/IterableLike;

    .prologue
    .line 104
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static toStream(Lscala/collection/IterableLike;)Lscala/collection/immutable/Stream;
    .locals 1
    .param p0, "$this"    # Lscala/collection/IterableLike;

    .prologue
    .line 301
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Iterator;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this"    # Lscala/collection/IterableLike;
    .param p1, "that"    # Lscala/collection/GenIterable;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 260
    invoke-interface {p0}, Lscala/collection/IterableLike;->repr()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 261
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {p0}, Lscala/collection/IterableLike;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    .line 262
    .local v1, "these":Lscala/collection/Iterator;
    invoke-interface {p1}, Lscala/collection/GenIterable;->iterator()Lscala/collection/Iterator;

    move-result-object v2

    .line 263
    .local v2, "those":Lscala/collection/Iterator;
    :goto_0
    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    new-instance v3, Lscala/Tuple2;

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 265
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static zipWithIndex(Lscala/collection/IterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lscala/collection/IterableLike;
    .param p1, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 282
    invoke-interface {p0}, Lscala/collection/IterableLike;->repr()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 283
    .local v0, "b":Lscala/collection/mutable/Builder;
    const/4 v2, 0x0

    invoke-static {v2}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v1

    .line 284
    .local v1, "i":Lscala/runtime/IntRef;
    new-instance v2, Lscala/collection/IterableLike$$anonfun$zipWithIndex$1;

    invoke-direct {v2, p0, v0, v1}, Lscala/collection/IterableLike$$anonfun$zipWithIndex$1;-><init>(Lscala/collection/IterableLike;Lscala/collection/mutable/Builder;Lscala/runtime/IntRef;)V

    invoke-interface {p0, v2}, Lscala/collection/IterableLike;->foreach(Lscala/Function1;)V

    .line 288
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
