.class public abstract Lscala/collection/mutable/HashTable$class;
.super Ljava/lang/Object;
.source "HashTable.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/HashTable;)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;

    .prologue
    .line 41
    sget-object v0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-virtual {v0}, Lscala/collection/mutable/HashTable$;->defaultLoadFactor()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->_loadFactor_$eq(I)V

    .line 45
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->initialCapacity(Lscala/collection/mutable/HashTable;)I

    move-result v0

    new-array v0, v0, [Lscala/collection/mutable/HashEntry;

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->table_$eq([Lscala/collection/mutable/HashEntry;)V

    .line 49
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 53
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->_loadFactor()I

    move-result v0

    invoke-static {p0, v0}, Lscala/collection/mutable/HashTable$class;->initialThreshold(Lscala/collection/mutable/HashTable;I)I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->threshold_$eq(I)V

    .line 57
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->sizemap_$eq([I)V

    .line 59
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSizeSeed()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->seedvalue_$eq(I)V

    return-void
.end method

.method public static alwaysInitSizeMap(Lscala/collection/mutable/HashTable;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public static calcSizeMapSize(Lscala/collection/mutable/HashTable;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "tableLength"    # I

    .prologue
    .line 308
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketBitSize()I

    move-result v0

    shr-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static elemEquals(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 358
    if-ne p1, p2, :cond_0

    move v2, v0

    .end local p1    # "key1":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_4

    :goto_1
    return v0

    .restart local p1    # "key1":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_2

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "key1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .restart local p1    # "key1":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_3

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "key1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .restart local p1    # "key1":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .end local p1    # "key1":Ljava/lang/Object;
    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static entriesIterator(Lscala/collection/mutable/HashTable;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;

    .prologue
    .line 206
    new-instance v0, Lscala/collection/mutable/HashTable$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/HashTable$$anon$1;-><init>(Lscala/collection/mutable/HashTable;)V

    return-object v0
.end method

.method public static findEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 132
    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->elemHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->index(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lscala/collection/mutable/HashTable$class;->scala$collection$mutable$HashTable$$findEntry0(Lscala/collection/mutable/HashTable;Ljava/lang/Object;I)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    return-object v0
.end method

.method public static findOrAddEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 164
    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->elemHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p0, v2}, Lscala/collection/mutable/HashTable;->index(I)I

    move-result v1

    .line 165
    .local v1, "h":I
    invoke-static {p0, p1, v1}, Lscala/collection/mutable/HashTable$class;->scala$collection$mutable$HashTable$$findEntry0(Lscala/collection/mutable/HashTable;Ljava/lang/Object;I)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    .line 166
    .local v0, "e":Lscala/collection/mutable/HashEntry;
    if-eqz v0, :cond_0

    .line 163
    .end local v0    # "e":Lscala/collection/mutable/HashEntry;
    :goto_0
    return-object v0

    .line 166
    .restart local v0    # "e":Lscala/collection/mutable/HashEntry;
    :cond_0
    invoke-interface {p0, p1, p2}, Lscala/collection/mutable/HashTable;->createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lscala/collection/mutable/HashTable$class;->scala$collection$mutable$HashTable$$addEntry0(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static foreachEntry(Lscala/collection/mutable/HashTable;Lscala/Function1;)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "f"    # Lscala/Function1;

    .prologue
    .line 225
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v2

    .line 226
    .local v2, "iterTable":[Lscala/collection/mutable/HashEntry;
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->scala$collection$mutable$HashTable$$lastPopulatedIndex(Lscala/collection/mutable/HashTable;)I

    move-result v1

    .line 227
    .local v1, "idx":I
    aget-object v0, v2, v1

    .line 229
    .local v0, "es":Lscala/collection/mutable/HashEntry;
    :cond_0
    if-nez v0, :cond_1

    .line 224
    return-void

    .line 230
    :cond_1
    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-interface {v0}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "es":Lscala/collection/mutable/HashEntry;
    check-cast v0, Lscala/collection/mutable/HashEntry;

    .line 233
    .restart local v0    # "es":Lscala/collection/mutable/HashEntry;
    :goto_0
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    .line 234
    add-int/lit8 v1, v1, -0x1

    .line 235
    aget-object v0, v2, v1

    goto :goto_0
.end method

.method public static final index(Lscala/collection/mutable/HashTable;I)I
    .locals 4
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "hcode"    # I

    .prologue
    .line 364
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .line 365
    .local v1, "ones":I
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->seedvalue()I

    move-result v3

    invoke-interface {p0, p1, v3}, Lscala/collection/mutable/HashTable;->improve(II)I

    move-result v0

    .line 366
    .local v0, "improved":I
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x20

    shr-int v3, v0, v3

    and-int v2, v3, v1

    .line 367
    .local v2, "shifted":I
    return v2
.end method

.method public static initWithContents(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashTable$Contents;)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "c"    # Lscala/collection/mutable/HashTable$Contents;

    .prologue
    .line 371
    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->loadFactor()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->_loadFactor_$eq(I)V

    .line 373
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->table_$eq([Lscala/collection/mutable/HashEntry;)V

    .line 374
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->tableSize()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 375
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->threshold()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->threshold_$eq(I)V

    .line 376
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->seedvalue()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->seedvalue_$eq(I)V

    .line 377
    invoke-virtual {p1}, Lscala/collection/mutable/HashTable$Contents;->sizemap()[I

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->sizemap_$eq([I)V

    .line 379
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->alwaysInitSizeMap()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapInitAndRebuild()V

    .line 370
    :cond_1
    return-void
.end method

.method private static initialCapacity(Lscala/collection/mutable/HashTable;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;

    .prologue
    .line 71
    sget-object v0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->initialSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/HashTable$;->capacity(I)I

    move-result v0

    return v0
.end method

.method public static initialSize(Lscala/collection/mutable/HashTable;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;

    .prologue
    .line 65
    const/16 v0, 0x10

    return v0
.end method

.method private static initialThreshold(Lscala/collection/mutable/HashTable;I)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "_loadFactor"    # I

    .prologue
    .line 69
    sget-object v0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->initialCapacity(Lscala/collection/mutable/HashTable;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lscala/collection/mutable/HashTable$;->newThreshold(II)I

    move-result v0

    return v0
.end method

.method public static nnSizeMapAdd(Lscala/collection/mutable/HashTable;I)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "h"    # I

    .prologue
    .line 289
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketBitSize()I

    move-result v1

    shr-int v1, p1, v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 289
    :cond_0
    return-void
.end method

.method public static nnSizeMapRemove(Lscala/collection/mutable/HashTable;I)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "h"    # I

    .prologue
    .line 294
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketBitSize()I

    move-result v1

    shr-int v1, p1, v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 294
    :cond_0
    return-void
.end method

.method public static nnSizeMapReset(Lscala/collection/mutable/HashTable;I)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "tableLength"    # I

    .prologue
    .line 299
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 300
    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->calcSizeMapSize(I)I

    move-result v0

    .line 301
    .local v0, "nsize":I
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v1

    array-length v1, v1

    if-eq v1, v0, :cond_1

    new-array v1, v0, [I

    invoke-interface {p0, v1}, Lscala/collection/mutable/HashTable;->sizemap_$eq([I)V

    .line 299
    .end local v0    # "nsize":I
    :cond_0
    :goto_0
    return-void

    .line 302
    .restart local v0    # "nsize":I
    :cond_1
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0
.end method

.method public static removeEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 6
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 179
    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->elemHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p0, v4}, Lscala/collection/mutable/HashTable;->index(I)I

    move-result v3

    .line 180
    .local v3, "h":I
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v4

    aget-object v0, v4, v3

    .line 181
    .local v0, "e":Lscala/collection/mutable/HashEntry;
    if-eqz v0, :cond_2

    .line 182
    invoke-interface {v0}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4, p1}, Lscala/collection/mutable/HashTable;->elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v5

    invoke-interface {v0}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/mutable/HashEntry;

    aput-object v4, v5, v3

    .line 184
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p0, v4}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 185
    invoke-interface {p0, v3}, Lscala/collection/mutable/HashTable;->nnSizeMapRemove(I)V

    .line 201
    .end local v0    # "e":Lscala/collection/mutable/HashEntry;
    :goto_0
    return-object v0

    .line 188
    .restart local v0    # "e":Lscala/collection/mutable/HashEntry;
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/HashEntry;

    .local v1, "e1":Lscala/collection/mutable/HashEntry;
    move-object v2, v1

    .line 189
    .end local v0    # "e":Lscala/collection/mutable/HashEntry;
    .end local v1    # "e1":Lscala/collection/mutable/HashEntry;
    .local v2, "e1":Lscala/collection/mutable/HashEntry;
    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4, p1}, Lscala/collection/mutable/HashTable;->elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 193
    :cond_1
    if-nez v2, :cond_3

    .line 201
    .end local v2    # "e1":Lscala/collection/mutable/HashEntry;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 194
    .restart local v2    # "e1":Lscala/collection/mutable/HashEntry;
    :cond_3
    invoke-interface {v2}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Lscala/collection/mutable/HashEntry;->next_$eq(Ljava/lang/Object;)V

    .line 195
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSize()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p0, v4}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 196
    invoke-interface {p0, v3}, Lscala/collection/mutable/HashTable;->nnSizeMapRemove(I)V

    move-object v0, v2

    .line 197
    goto :goto_0

    .line 191
    :cond_4
    invoke-interface {v2}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/HashEntry;

    .end local v2    # "e1":Lscala/collection/mutable/HashEntry;
    .restart local v1    # "e1":Lscala/collection/mutable/HashEntry;
    move-object v0, v2

    move-object v2, v1

    .end local v1    # "e1":Lscala/collection/mutable/HashEntry;
    .restart local v2    # "e1":Lscala/collection/mutable/HashEntry;
    goto :goto_1
.end method

.method private static resize(Lscala/collection/mutable/HashTable;I)V
    .locals 7
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "newSize"    # I

    .prologue
    .line 250
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v4

    .line 251
    .local v4, "oldTable":[Lscala/collection/mutable/HashEntry;
    new-array v5, p1, [Lscala/collection/mutable/HashEntry;

    invoke-interface {p0, v5}, Lscala/collection/mutable/HashTable;->table_$eq([Lscala/collection/mutable/HashEntry;)V

    .line 252
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v5

    array-length v5, v5

    invoke-interface {p0, v5}, Lscala/collection/mutable/HashTable;->nnSizeMapReset(I)V

    .line 253
    array-length v5, v4

    add-int/lit8 v3, v5, -0x1

    .line 254
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 255
    aget-object v0, v4, v3

    .line 256
    :goto_1
    if-nez v0, :cond_0

    .line 264
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 257
    :cond_0
    invoke-interface {v0}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p0, v5}, Lscala/collection/mutable/HashTable;->elemHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p0, v5}, Lscala/collection/mutable/HashTable;->index(I)I

    move-result v2

    .line 258
    .local v2, "h":I
    invoke-interface {v0}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/HashEntry;

    .line 259
    .local v1, "e1":Lscala/collection/mutable/HashEntry;
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-interface {v0, v5}, Lscala/collection/mutable/HashEntry;->next_$eq(Ljava/lang/Object;)V

    .line 260
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v5

    aput-object v0, v5, v2

    .line 262
    invoke-interface {p0, v2}, Lscala/collection/mutable/HashTable;->nnSizeMapAdd(I)V

    move-object v0, v1

    goto :goto_1

    .line 266
    .end local v1    # "e1":Lscala/collection/mutable/HashEntry;
    .end local v2    # "h":I
    :cond_1
    sget-object v5, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->_loadFactor()I

    move-result v6

    invoke-virtual {v5, v6, p1}, Lscala/collection/mutable/HashTable$;->newThreshold(II)I

    move-result v5

    invoke-interface {p0, v5}, Lscala/collection/mutable/HashTable;->threshold_$eq(I)V

    return-void
.end method

.method public static scala$collection$mutable$HashTable$$addEntry0(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashEntry;I)V
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "e"    # Lscala/collection/mutable/HashEntry;
    .param p2, "h"    # I

    .prologue
    .line 149
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-interface {p1, v0}, Lscala/collection/mutable/HashEntry;->next_$eq(Ljava/lang/Object;)V

    .line 150
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    aput-object p1, v0, p2

    .line 151
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->tableSize_$eq(I)V

    .line 152
    invoke-interface {p0, p2}, Lscala/collection/mutable/HashTable;->nnSizeMapAdd(I)V

    .line 153
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->tableSize()I

    move-result v0

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->threshold()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 154
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lscala/collection/mutable/HashTable$class;->resize(Lscala/collection/mutable/HashTable;I)V

    .line 148
    :cond_0
    return-void
.end method

.method public static scala$collection$mutable$HashTable$$findEntry0(Lscala/collection/mutable/HashTable;Ljava/lang/Object;I)Lscala/collection/mutable/HashEntry;
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "h"    # I

    .prologue
    .line 135
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    aget-object v0, v1, p2

    .line 136
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lscala/collection/mutable/HashEntry;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1, p1}, Lscala/collection/mutable/HashTable;->elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    return-object v0

    .line 136
    :cond_1
    invoke-interface {v0}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/HashEntry;

    move-object v0, v1

    goto :goto_0
.end method

.method public static scala$collection$mutable$HashTable$$lastPopulatedIndex(Lscala/collection/mutable/HashTable;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;

    .prologue
    .line 74
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 75
    .local v0, "idx":I
    :goto_0
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    .line 76
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 78
    :cond_0
    return v0
.end method

.method public static sizeMapInit(Lscala/collection/mutable/HashTable;I)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;
    .param p1, "tableLength"    # I

    .prologue
    .line 312
    invoke-interface {p0, p1}, Lscala/collection/mutable/HashTable;->calcSizeMapSize(I)I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p0, v0}, Lscala/collection/mutable/HashTable;->sizemap_$eq([I)V

    return-void
.end method

.method public static sizeMapInitAndRebuild(Lscala/collection/mutable/HashTable;)V
    .locals 9
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;

    .prologue
    .line 318
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v7

    array-length v7, v7

    invoke-interface {p0, v7}, Lscala/collection/mutable/HashTable;->sizeMapInit(I)V

    .line 321
    const/4 v3, 0x0

    .line 322
    .local v3, "tableidx":I
    const/4 v0, 0x0

    .line 323
    .local v0, "bucketidx":I
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v5

    .line 325
    .local v5, "tbl":[Lscala/collection/mutable/HashEntry;
    array-length v7, v5

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketSize()I

    move-result v8

    if-ge v7, v8, :cond_0

    array-length v4, v5

    .line 326
    .local v4, "tableuntil":I
    :goto_0
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->totalSizeMapBuckets()I

    move-result v6

    .line 327
    .local v6, "totalbuckets":I
    :goto_1
    if-ge v0, v6, :cond_3

    .line 328
    const/4 v1, 0x0

    .line 329
    .local v1, "currbucketsize":I
    :goto_2
    if-ge v3, v4, :cond_2

    .line 330
    aget-object v2, v5, v3

    .line 331
    .local v2, "e":Lscala/collection/mutable/HashEntry;
    :goto_3
    if-eqz v2, :cond_1

    .line 332
    add-int/lit8 v1, v1, 0x1

    .line 333
    invoke-interface {v2}, Lscala/collection/mutable/HashEntry;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "e":Lscala/collection/mutable/HashEntry;
    check-cast v2, Lscala/collection/mutable/HashEntry;

    .restart local v2    # "e":Lscala/collection/mutable/HashEntry;
    goto :goto_3

    .line 325
    .end local v1    # "currbucketsize":I
    .end local v2    # "e":Lscala/collection/mutable/HashEntry;
    .end local v4    # "tableuntil":I
    .end local v6    # "totalbuckets":I
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketSize()I

    move-result v4

    .restart local v4    # "tableuntil":I
    goto :goto_0

    .line 335
    .restart local v1    # "currbucketsize":I
    .restart local v2    # "e":Lscala/collection/mutable/HashEntry;
    .restart local v6    # "totalbuckets":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 337
    .end local v2    # "e":Lscala/collection/mutable/HashEntry;
    :cond_2
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizemap()[I

    move-result-object v7

    aput v1, v7, v0

    .line 338
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketSize()I

    move-result v7

    add-int/2addr v4, v7

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    .end local v1    # "currbucketsize":I
    :cond_3
    return-void
.end method

.method public static tableSizeSeed(Lscala/collection/mutable/HashTable;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;

    .prologue
    .line 61
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static final totalSizeMapBuckets(Lscala/collection/mutable/HashTable;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/HashTable;

    .prologue
    .line 305
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketSize()I

    move-result v0

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->table()[Lscala/collection/mutable/HashEntry;

    move-result-object v0

    array-length v0, v0

    invoke-interface {p0}, Lscala/collection/mutable/HashTable;->sizeMapBucketSize()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_0
.end method
