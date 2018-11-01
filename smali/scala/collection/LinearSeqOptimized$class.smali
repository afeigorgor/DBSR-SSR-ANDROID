.class public abstract Lscala/collection/LinearSeqOptimized$class;
.super Ljava/lang/Object;
.source "LinearSeqOptimized.scala"


# direct methods
.method public static $init$(Lscala/collection/LinearSeqOptimized;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;

    .prologue
    .line 35
    return-void
.end method

.method public static apply(Lscala/collection/LinearSeqOptimized;I)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "n"    # I

    .prologue
    .line 64
    invoke-interface {p0, p1}, Lscala/collection/LinearSeqOptimized;->drop(I)Lscala/collection/LinearSeqOptimized;

    move-result-object v0

    .line 65
    .local v0, "rest":Lscala/collection/LinearSeqOptimized;
    if-ltz p1, :cond_0

    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_1
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static contains(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    move-object v0, p0

    .line 102
    :goto_0
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 106
    :goto_1
    return v1

    .line 103
    :cond_0
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    move v1, v3

    :goto_2
    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    instance-of v4, v1, Ljava/lang/Number;

    if-eqz v4, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_3
    instance-of v4, v1, Ljava/lang/Character;

    if-eqz v4, :cond_4

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    .line 104
    :cond_5
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/LinearSeqOptimized;

    move-object v0, v1

    goto :goto_0
.end method

.method public static exists(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z
    .locals 2
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 91
    move-object v0, p0

    .line 92
    :goto_0
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 93
    :cond_0
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/LinearSeqOptimized;

    move-object v0, v1

    goto :goto_0
.end method

.method public static foldLeft(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;

    .prologue
    .line 121
    move-object v0, p1

    .line 122
    .local v0, "acc":Ljava/lang/Object;
    move-object v1, p0

    .line 123
    .end local v0    # "acc":Ljava/lang/Object;
    :goto_0
    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    return-object v0

    .line 124
    :cond_0
    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/LinearSeqOptimized;

    move-object v1, v2

    goto :goto_0
.end method

.method public static forall(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z
    .locals 2
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 81
    move-object v0, p0

    .line 82
    :goto_0
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 83
    :cond_0
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/LinearSeqOptimized;

    move-object v0, v1

    goto :goto_0

    .line 83
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static indexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I
    .locals 3
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I

    .prologue
    .line 296
    move v0, p2

    .line 297
    .local v0, "i":I
    invoke-interface {p0, p2}, Lscala/collection/LinearSeqOptimized;->drop(I)Lscala/collection/LinearSeqOptimized;

    move-result-object v1

    .line 298
    .local v1, "these":Lscala/collection/LinearSeqOptimized;
    :goto_0
    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 302
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 303
    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "these":Lscala/collection/LinearSeqOptimized;
    check-cast v1, Lscala/collection/LinearSeqOptimized;

    .restart local v1    # "these":Lscala/collection/LinearSeqOptimized;
    goto :goto_0

    .line 305
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isDefinedAt(Lscala/collection/LinearSeqOptimized;I)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "x"    # I

    .prologue
    .line 281
    if-ltz p1, :cond_0

    invoke-interface {p0, p1}, Lscala/collection/LinearSeqOptimized;->lengthCompare(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static last(Lscala/collection/LinearSeqOptimized;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;

    .prologue
    .line 148
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 149
    :cond_0
    move-object v1, p0

    .line 150
    .local v1, "these":Lscala/collection/LinearSeqOptimized;
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    .line 151
    .end local v1    # "these":Lscala/collection/LinearSeqOptimized;
    :goto_0
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 153
    :cond_1
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/LinearSeqOptimized;

    move-object v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static length(Lscala/collection/LinearSeqOptimized;)I
    .locals 3
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;

    .prologue
    .line 50
    move-object v1, p0

    .line 51
    .local v1, "these":Lscala/collection/LinearSeqOptimized;
    const/4 v0, 0x0

    .line 52
    .end local v1    # "these":Lscala/collection/LinearSeqOptimized;
    :goto_0
    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    return v0

    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 54
    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/LinearSeqOptimized;

    move-object v1, v2

    goto :goto_0
.end method

.method public static lengthCompare(Lscala/collection/LinearSeqOptimized;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "len"    # I

    .prologue
    .line 276
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p0, p1}, Lscala/collection/LinearSeqOptimized$class;->loop$1(Lscala/collection/LinearSeqOptimized;ILscala/collection/LinearSeqOptimized;I)I

    move-result v0

    goto :goto_0
.end method

.method private static final loop$1(Lscala/collection/LinearSeqOptimized;ILscala/collection/LinearSeqOptimized;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "i"    # I
    .param p2, "xs"    # Lscala/collection/LinearSeqOptimized;
    .param p3, "len$1"    # I

    .prologue
    .line 269
    :goto_0
    if-ne p1, p3, :cond_1

    .line 270
    invoke-interface {p2}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 268
    :goto_1
    return v0

    .line 270
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 271
    :cond_1
    invoke-interface {p2}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 272
    const/4 v0, -0x1

    goto :goto_1

    .line 274
    :cond_2
    add-int/lit8 p1, p1, 0x1

    invoke-interface {p2}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    .end local p1    # "i":I
    move-result-object p2

    .end local p2    # "xs":Lscala/collection/LinearSeqOptimized;
    check-cast p2, Lscala/collection/LinearSeqOptimized;

    .restart local p1    # "i":I
    .restart local p2    # "xs":Lscala/collection/LinearSeqOptimized;
    goto :goto_0
.end method

.method public static reduceLeft(Lscala/collection/LinearSeqOptimized;Lscala/Function2;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "f"    # Lscala/Function2;

    .prologue
    .line 137
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "empty.reduceLeft"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/LinearSeqOptimized;

    invoke-interface {p0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lscala/collection/LinearSeqOptimized;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    return-object v0
.end method

.method public static sameElements(Lscala/collection/LinearSeqOptimized;Lscala/collection/GenIterable;)Z
    .locals 7
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "that"    # Lscala/collection/GenIterable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    instance-of v2, p1, Lscala/collection/LinearSeq;

    if-eqz v2, :cond_8

    move-object v1, p1

    check-cast v1, Lscala/collection/LinearSeq;

    .line 253
    if-eq p0, v1, :cond_5

    .line 254
    move-object v0, p0

    .line 256
    .local v0, "these":Lscala/collection/LinearSeqOptimized;
    .local v1, "those":Lscala/collection/LinearSeq;
    :goto_0
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Lscala/collection/LinearSeq;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lscala/collection/LinearSeq;->head()Ljava/lang/Object;

    move-result-object v5

    if-ne v2, v5, :cond_0

    move v2, v4

    :goto_1
    if-eqz v2, :cond_4

    .line 257
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "these":Lscala/collection/LinearSeqOptimized;
    check-cast v0, Lscala/collection/LinearSeqOptimized;

    .line 258
    .restart local v0    # "these":Lscala/collection/LinearSeqOptimized;
    invoke-interface {v1}, Lscala/collection/LinearSeq;->tail()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "those":Lscala/collection/LinearSeq;
    check-cast v1, Lscala/collection/LinearSeq;

    .restart local v1    # "those":Lscala/collection/LinearSeq;
    goto :goto_0

    .line 256
    :cond_0
    if-nez v2, :cond_1

    move v2, v3

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

    .line 260
    :cond_4
    invoke-interface {v0}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lscala/collection/LinearSeq;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    :goto_2
    if-eqz v2, :cond_7

    .end local v0    # "these":Lscala/collection/LinearSeqOptimized;
    .end local v1    # "those":Lscala/collection/LinearSeq;
    :cond_5
    move v2, v4

    .line 250
    :goto_3
    return v2

    .restart local v0    # "these":Lscala/collection/LinearSeqOptimized;
    .restart local v1    # "those":Lscala/collection/LinearSeq;
    :cond_6
    move v2, v3

    .line 260
    goto :goto_2

    :cond_7
    move v2, v3

    .line 253
    goto :goto_3

    .line 263
    .end local v0    # "these":Lscala/collection/LinearSeqOptimized;
    .end local v1    # "those":Lscala/collection/LinearSeq;
    :cond_8
    invoke-interface {p0, p1}, Lscala/collection/LinearSeqOptimized;->scala$collection$LinearSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z

    move-result v2

    goto :goto_3
.end method

.method public static segmentLength(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I
    .locals 3
    .param p0, "$this"    # Lscala/collection/LinearSeqOptimized;
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I

    .prologue
    .line 285
    const/4 v0, 0x0

    .line 286
    .local v0, "i":I
    invoke-interface {p0, p2}, Lscala/collection/LinearSeqOptimized;->drop(I)Lscala/collection/LinearSeqOptimized;

    move-result-object v1

    .line 287
    .local v1, "these":Lscala/collection/LinearSeqOptimized;
    :goto_0
    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    add-int/lit8 v0, v0, 0x1

    .line 289
    invoke-interface {v1}, Lscala/collection/LinearSeqOptimized;->tail()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "these":Lscala/collection/LinearSeqOptimized;
    check-cast v1, Lscala/collection/LinearSeqOptimized;

    .restart local v1    # "these":Lscala/collection/LinearSeqOptimized;
    goto :goto_0

    .line 291
    :cond_0
    return v0
.end method
