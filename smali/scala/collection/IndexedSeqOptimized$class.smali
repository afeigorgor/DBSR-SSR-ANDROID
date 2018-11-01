.class public abstract Lscala/collection/IndexedSeqOptimized$class;
.super Ljava/lang/Object;
.source "IndexedSeqOptimized.scala"


# direct methods
.method public static $init$(Lscala/collection/IndexedSeqOptimized;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;

    .prologue
    .line 24
    return-void
.end method

.method public static copyToArray(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;II)V
    .locals 6
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    sget-object v3, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 178
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v5

    invoke-virtual {v4, v5, p3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v4

    sget-object v5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v5, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v5, p2

    invoke-virtual {v3, v4, v5}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    .line 179
    .local v0, "end":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 180
    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0, v1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method public static drop(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "n"    # I

    .prologue
    .line 141
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lscala/collection/IndexedSeqOptimized;->slice(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static exists(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z
    .locals 3
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {p0, p1, v0}, Lscala/collection/IndexedSeqOptimized$class;->prefixLengthImpl(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;Z)I

    move-result v1

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static foldLeft(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldl(Lscala/collection/IndexedSeqOptimized;IILjava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static foldl(Lscala/collection/IndexedSeqOptimized;IILjava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "z"    # Ljava/lang/Object;
    .param p4, "op"    # Lscala/Function2;

    .prologue
    .line 56
    move v0, p1

    .end local p1    # "start":I
    .local v0, "start":I
    :goto_0
    if-ne v0, p2, :cond_0

    .line 55
    return-object p3

    .line 57
    :cond_0
    add-int/lit8 p1, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p4, p3, v1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local v0    # "start":I
    .restart local p1    # "start":I
    move v0, p1

    .end local p1    # "start":I
    .restart local v0    # "start":I
    goto :goto_0
.end method

.method public static forall(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z
    .locals 3
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-static {p0, p1, v0}, Lscala/collection/IndexedSeqOptimized$class;->prefixLengthImpl(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;Z)I

    move-result v1

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static foreach(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "f"    # Lscala/Function1;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "i":I
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    .line 33
    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method

.method public static head(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;

    .prologue
    .line 126
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I
    .locals 3
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I

    .prologue
    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 203
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v0

    .line 204
    .local v0, "start":I
    new-instance v1, Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;

    invoke-direct {v1, p0, p1}, Lscala/collection/IndexedSeqOptimized$$anonfun$indexWhere$1;-><init>(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    invoke-interface {p0, v1, v0}, Lscala/collection/IndexedSeqOptimized;->segmentLength(Lscala/Function1;I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Lscala/collection/IndexedSeqOptimized$class;->negLength(Lscala/collection/IndexedSeqOptimized;I)I

    move-result v1

    return v1
.end method

.method public static isEmpty(Lscala/collection/IndexedSeqOptimized;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;

    .prologue
    .line 27
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;

    .prologue
    .line 132
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "len"    # I

    .prologue
    .line 189
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method private static negLength(Lscala/collection/IndexedSeqOptimized;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "n"    # I

    .prologue
    .line 199
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    .end local p1    # "n":I
    :cond_0
    return p1
.end method

.method private static prefixLengthImpl(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;Z)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "p"    # Lscala/Function1;
    .param p2, "expectTrue"    # Z

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return v0
.end method

.method public static reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "op"    # Lscala/Function2;

    .prologue
    .line 74
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v1, v2, p1}, Lscala/collection/IndexedSeqOptimized$class;->foldl(Lscala/collection/IndexedSeqOptimized;IILjava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static reverse(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;

    .prologue
    .line 216
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 217
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v2

    invoke-interface {v0, v2}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 218
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    .line 219
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 220
    add-int/lit8 v1, v1, -0x1

    .line 221
    invoke-interface {p0, v1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    goto :goto_0

    .line 223
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static reverseIterator(Lscala/collection/IndexedSeqOptimized;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;

    .prologue
    .line 227
    new-instance v0, Lscala/collection/IndexedSeqOptimized$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/IndexedSeqOptimized$$anon$1;-><init>(Lscala/collection/IndexedSeqOptimized;)V

    return-object v0
.end method

.method public static sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z
    .locals 7
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "that"    # Lscala/collection/GenIterable;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 163
    instance-of v2, p1, Lscala/collection/IndexedSeq;

    if-eqz v2, :cond_7

    check-cast p1, Lscala/collection/IndexedSeq;

    .line 164
    .end local p1    # "that":Lscala/collection/GenIterable;
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    .line 165
    .local v1, "len":I
    invoke-interface {p1}, Lscala/collection/IndexedSeq;->length()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    instance-of v6, v2, Ljava/lang/Number;

    if-eqz v6, :cond_2

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, v5}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_2
    instance-of v6, v2, Ljava/lang/Character;

    if-eqz v6, :cond_3

    check-cast v2, Ljava/lang/Character;

    invoke-static {v2, v5}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 168
    :cond_4
    if-ne v0, v1, :cond_5

    move v2, v3

    :goto_2
    if-eqz v2, :cond_6

    move v2, v3

    .line 162
    .end local v0    # "i":I
    .end local v1    # "len":I
    :goto_3
    return v2

    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_5
    move v2, v4

    .line 168
    goto :goto_2

    .end local v0    # "i":I
    :cond_6
    move v2, v4

    .line 165
    goto :goto_3

    .line 171
    .end local v1    # "len":I
    .restart local p1    # "that":Lscala/collection/GenIterable;
    :cond_7
    invoke-interface {p0, p1}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z

    move-result v2

    goto :goto_3
.end method

.method public static segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I
    .locals 3
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I

    .prologue
    .line 193
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    .line 194
    .local v1, "len":I
    move v0, p2

    .line 195
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p0, v0}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    sub-int v2, v0, p2

    return v2
.end method

.method public static slice(Lscala/collection/IndexedSeqOptimized;II)Ljava/lang/Object;
    .locals 9
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    const/4 v8, 0x0

    .line 111
    sget-object v5, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v5, p1, v8}, Lscala/math/package$;->max(II)I

    move-result v4

    .line 112
    .local v4, "lo":I
    sget-object v5, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sget-object v6, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v6, p2, v8}, Lscala/math/package$;->max(II)I

    move-result v6

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lscala/math/package$;->min(II)I

    move-result v2

    .line 113
    .local v2, "hi":I
    sget-object v5, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sub-int v6, v2, v4

    invoke-virtual {v5, v6, v8}, Lscala/math/package$;->max(II)I

    move-result v1

    .line 114
    .local v1, "elems":I
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 115
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {v0, v1}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 117
    move v3, v4

    .line 118
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 119
    invoke-interface {p0, v3}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public static tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;

    .prologue
    .line 129
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lscala/collection/IndexedSeqOptimized;->slice(II)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "n"    # I

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lscala/collection/IndexedSeqOptimized;->slice(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static zip(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "that"    # Lscala/collection/GenIterable;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 82
    instance-of v3, p1, Lscala/collection/IndexedSeq;

    if-eqz v3, :cond_1

    check-cast p1, Lscala/collection/IndexedSeq;

    .line 83
    .end local p1    # "that":Lscala/collection/GenIterable;
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->repr()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 84
    .local v0, "b":Lscala/collection/mutable/Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v3, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 85
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v4

    invoke-interface {p1}, Lscala/collection/IndexedSeq;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v2

    .line 86
    .local v2, "len":I
    invoke-interface {v0, v2}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 87
    :goto_0
    if-ge v1, v2, :cond_0

    .line 88
    new-instance v3, Lscala/Tuple2;

    invoke-interface {p0, v1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v1}, Lscala/collection/IndexedSeq;->apply(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v3

    .line 81
    .end local v0    # "b":Lscala/collection/mutable/Builder;
    .end local v1    # "i":I
    .end local v2    # "len":I
    :goto_1
    return-object v3

    .line 93
    .restart local p1    # "that":Lscala/collection/GenIterable;
    :cond_1
    invoke-interface {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized;->scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1
.end method

.method public static zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this"    # Lscala/collection/IndexedSeqOptimized;
    .param p1, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 98
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->repr()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 99
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {p0}, Lscala/collection/IndexedSeqOptimized;->length()I

    move-result v2

    .line 100
    .local v2, "len":I
    invoke-interface {v0, v2}, Lscala/collection/mutable/Builder;->sizeHint(I)V

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 103
    new-instance v3, Lscala/Tuple2;

    invoke-interface {p0, v1}, Lscala/collection/IndexedSeqOptimized;->apply(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method
