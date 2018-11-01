.class public abstract Lscala/collection/mutable/FlatHashTable$class;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/FlatHashTable;)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;

    .prologue
    .line 27
    sget-object v0, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-virtual {v0}, Lscala/collection/mutable/FlatHashTable$;->defaultLoadFactor()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor_$eq(I)V

    .line 31
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->initialCapacity(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->table_$eq([Ljava/lang/Object;)V

    .line 35
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 39
    sget-object v0, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor()I

    move-result v1

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->initialCapacity(Lscala/collection/mutable/FlatHashTable;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lscala/collection/mutable/FlatHashTable$;->newThreshold(II)I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->threshold_$eq(I)V

    .line 43
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->sizemap_$eq([I)V

    .line 45
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSizeSeed()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->seedvalue_$eq(I)V

    return-void
.end method

.method public static addElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 139
    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->addEntry(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static addEntry(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "newEntry"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {p0, v2}, Lscala/collection/mutable/FlatHashTable;->index(I)I

    move-result v1

    .line 149
    .local v1, "h":I
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v2

    aget-object v0, v2, v1

    .local v0, "curEntry":Ljava/lang/Object;
    move-object v2, v0

    .line 150
    .end local v1    # "h":I
    :goto_0
    if-nez v2, :cond_1

    .line 156
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v2

    aput-object p1, v2, v1

    .line 157
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 158
    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->nnSizeMapAdd(I)V

    .line 159
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSize()I

    move-result v2

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->threshold()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->growTable(Lscala/collection/mutable/FlatHashTable;)V

    :cond_0
    move v2, v3

    .line 160
    :goto_1
    return v2

    .line 151
    :cond_1
    if-ne v2, p1, :cond_2

    move v2, v3

    :goto_2
    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    instance-of v5, v2, Ljava/lang/Number;

    if-eqz v5, :cond_4

    check-cast v2, Ljava/lang/Number;

    invoke-static {v2, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_4
    instance-of v5, v2, Ljava/lang/Character;

    if-eqz v5, :cond_5

    check-cast v2, Ljava/lang/Character;

    invoke-static {v2, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    :cond_5
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_2

    .line 152
    :cond_6
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    rem-int v1, v2, v5

    .line 153
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    goto :goto_0
.end method

.method public static alwaysInitSizeMap(Lscala/collection/mutable/FlatHashTable;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public static calcSizeMapSize(Lscala/collection/mutable/FlatHashTable;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "tableLength"    # I

    .prologue
    .line 274
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketBitSize()I

    move-result v0

    shr-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static capacity(Lscala/collection/mutable/FlatHashTable;I)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "expectedSize"    # I

    .prologue
    .line 49
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/HashTable$;->powerOfTwo(I)I

    move-result v0

    goto :goto_0
.end method

.method private static checkConsistent(Lscala/collection/mutable/FlatHashTable;)V
    .locals 6
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;

    .prologue
    .line 232
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    sget-object v2, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v2, Lscala/collection/immutable/Range;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v1, v4}, Lscala/collection/immutable/Range;-><init>(III)V

    new-instance v1, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;-><init>(Lscala/collection/mutable/FlatHashTable;)V

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    .local v0, "i1":I
    :goto_0
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-interface {p0, v3}, Lscala/collection/mutable/FlatHashTable;->entryToElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v3}, Lscala/collection/mutable/FlatHashTable;->containsElem(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->lastElement()I

    move-result v3

    if-ne v0, v3, :cond_2

    .end local v0    # "i1":I
    :cond_1
    return-void

    .restart local v0    # "i1":I
    :cond_2
    invoke-virtual {v2}, Lscala/collection/immutable/Range;->step()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v2, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;

    invoke-direct {v2, v1, v0}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;-><init>(Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;I)V

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v4, "assertion failed: "

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Lscala/collection/mutable/StringBuilder;->append(I)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->$outer:Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;

    iget-object v5, v5, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v5}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v2, v2, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->$outer:Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;

    iget-object v2, v2, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v2}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v2

    new-instance v5, Lscala/collection/mutable/ArrayOps$ofRef;

    invoke-direct {v5, v2}, Lscala/collection/mutable/ArrayOps$ofRef;-><init>([Ljava/lang/Object;)V

    invoke-static {v5}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static containsElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 121
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->findElemImpl(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static findElemImpl(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 125
    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, "searchEntry":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-interface {p0, v3}, Lscala/collection/mutable/FlatHashTable;->index(I)I

    move-result v1

    .line 127
    .local v1, "h":I
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v3

    aget-object v0, v3, v1

    .local v0, "curEntry":Ljava/lang/Object;
    move-object v4, v0

    .line 128
    .end local v1    # "h":I
    :goto_0
    if-eqz v4, :cond_0

    if-ne v4, v2, :cond_1

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_5

    .line 132
    :cond_0
    return-object v4

    .line 128
    :cond_1
    if-nez v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    instance-of v3, v4, Ljava/lang/Number;

    if-eqz v3, :cond_3

    move-object v3, v4

    check-cast v3, Ljava/lang/Number;

    invoke-static {v3, v2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_3
    instance-of v3, v4, Ljava/lang/Character;

    if-eqz v3, :cond_4

    move-object v3, v4

    check-cast v3, Ljava/lang/Character;

    invoke-static {v3, v2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 129
    :cond_5
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    rem-int v1, v3, v4

    .line 130
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v3

    aget-object v4, v3, v1

    goto :goto_0
.end method

.method private static growTable(Lscala/collection/mutable/FlatHashTable;)V
    .locals 6
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;

    .prologue
    .line 216
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v2

    .line 217
    .local v2, "oldtable":[Ljava/lang/Object;
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0, v3}, Lscala/collection/mutable/FlatHashTable;->table_$eq([Ljava/lang/Object;)V

    .line 218
    const/4 v3, 0x0

    invoke-interface {p0, v3}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 219
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    invoke-interface {p0, v3}, Lscala/collection/mutable/FlatHashTable;->nnSizeMapReset(I)V

    .line 220
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSizeSeed()I

    move-result v3

    invoke-interface {p0, v3}, Lscala/collection/mutable/FlatHashTable;->seedvalue_$eq(I)V

    .line 221
    sget-object v3, Lscala/collection/mutable/FlatHashTable$;->MODULE$:Lscala/collection/mutable/FlatHashTable$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor()I

    move-result v4

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v3, v4, v5}, Lscala/collection/mutable/FlatHashTable$;->newThreshold(II)I

    move-result v3

    invoke-interface {p0, v3}, Lscala/collection/mutable/FlatHashTable;->threshold_$eq(I)V

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 224
    aget-object v0, v2, v1

    .line 225
    .local v0, "entry":Ljava/lang/Object;
    if-nez v0, :cond_0

    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 226
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->addEntry(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    goto :goto_1

    .line 228
    .end local v0    # "entry":Ljava/lang/Object;
    :cond_1
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->tableDebug(Lscala/collection/mutable/FlatHashTable;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->checkConsistent(Lscala/collection/mutable/FlatHashTable;)V

    .line 215
    :cond_2
    return-void
.end method

.method public static final index(Lscala/collection/mutable/FlatHashTable;I)I
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "hcode"    # I

    .prologue
    .line 327
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->seedvalue()I

    move-result v2

    invoke-interface {p0, p1, v2}, Lscala/collection/mutable/FlatHashTable;->improve(II)I

    move-result v0

    .line 328
    .local v0, "improved":I
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .line 329
    .local v1, "ones":I
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    ushr-int v2, v0, v2

    and-int/2addr v2, v1

    return v2
.end method

.method public static initWithContents(Lscala/collection/mutable/FlatHashTable;Lscala/collection/mutable/FlatHashTable$Contents;)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "c"    # Lscala/collection/mutable/FlatHashTable$Contents;

    .prologue
    .line 360
    if-eqz p1, :cond_0

    .line 361
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->loadFactor()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->_loadFactor_$eq(I)V

    .line 362
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->table()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->table_$eq([Ljava/lang/Object;)V

    .line 363
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->tableSize()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 364
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->threshold()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->threshold_$eq(I)V

    .line 365
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->seedvalue()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->seedvalue_$eq(I)V

    .line 366
    invoke-virtual {p1}, Lscala/collection/mutable/FlatHashTable$Contents;->sizemap()[I

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->sizemap_$eq([I)V

    .line 368
    :cond_0
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->alwaysInitSizeMap()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapInitAndRebuild()V

    .line 359
    :cond_1
    return-void
.end method

.method private static initialCapacity(Lscala/collection/mutable/FlatHashTable;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;

    .prologue
    .line 55
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->initialSize()I

    move-result v0

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->capacity(I)I

    move-result v0

    return v0
.end method

.method public static initialSize(Lscala/collection/mutable/FlatHashTable;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;

    .prologue
    .line 53
    const/16 v0, 0x20

    return v0
.end method

.method public static iterator(Lscala/collection/mutable/FlatHashTable;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;

    .prologue
    .line 204
    new-instance v0, Lscala/collection/mutable/FlatHashTable$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/mutable/FlatHashTable$$anon$1;-><init>(Lscala/collection/mutable/FlatHashTable;)V

    return-object v0
.end method

.method public static nnSizeMapAdd(Lscala/collection/mutable/FlatHashTable;I)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "h"    # I

    .prologue
    .line 254
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 255
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketBitSize()I

    move-result v1

    shr-int v0, p1, v1

    .line 256
    .local v0, "p":I
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 254
    .end local v0    # "p":I
    :cond_0
    return-void
.end method

.method public static nnSizeMapRemove(Lscala/collection/mutable/FlatHashTable;I)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "h"    # I

    .prologue
    .line 260
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketBitSize()I

    move-result v1

    shr-int v1, p1, v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    .line 260
    :cond_0
    return-void
.end method

.method public static nnSizeMapReset(Lscala/collection/mutable/FlatHashTable;I)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "tableLength"    # I

    .prologue
    .line 265
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->calcSizeMapSize(I)I

    move-result v0

    .line 267
    .local v0, "nsize":I
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v1

    array-length v1, v1

    if-eq v1, v0, :cond_1

    new-array v1, v0, [I

    invoke-interface {p0, v1}, Lscala/collection/mutable/FlatHashTable;->sizemap_$eq([I)V

    .line 265
    .end local v0    # "nsize":I
    :cond_0
    :goto_0
    return-void

    .line 268
    .restart local v0    # "nsize":I
    :cond_1
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto :goto_0
.end method

.method private static final precedes$1(Lscala/collection/mutable/FlatHashTable;II)Z
    .locals 4
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    shr-int/lit8 v0, v3, 0x1

    .line 172
    .local v0, "d":I
    if-gt p1, p2, :cond_2

    sub-int v3, p2, p1

    if-ge v3, v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 172
    goto :goto_0

    .line 173
    :cond_2
    sub-int v3, p1, p2

    if-gt v3, v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static removeElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z
    .locals 10
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 169
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->tableDebug(Lscala/collection/mutable/FlatHashTable;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->checkConsistent(Lscala/collection/mutable/FlatHashTable;)V

    .line 175
    :cond_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 176
    .local v5, "removalEntry":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-interface {p0, v6}, Lscala/collection/mutable/FlatHashTable;->index(I)I

    move-result v1

    .line 177
    .local v1, "h":I
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v6

    aget-object v0, v6, v1

    .local v0, "curEntry":Ljava/lang/Object;
    move-object v6, v0

    move v2, v1

    .line 178
    :goto_0
    if-nez v6, :cond_1

    move v6, v7

    .line 201
    :goto_1
    return v6

    .line 179
    :cond_1
    if-ne v6, v5, :cond_3

    move v6, v8

    :goto_2
    if-eqz v6, :cond_9

    .line 181
    .local v2, "h0":I
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    rem-int v3, v6, v7

    .line 182
    .local v3, "h1":I
    :goto_3
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v3

    if-nez v6, :cond_7

    .line 192
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v7, v6, v2

    .line 193
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->tableSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p0, v6}, Lscala/collection/mutable/FlatHashTable;->tableSize_$eq(I)V

    .line 194
    invoke-interface {p0, v2}, Lscala/collection/mutable/FlatHashTable;->nnSizeMapRemove(I)V

    .line 195
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->tableDebug(Lscala/collection/mutable/FlatHashTable;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->checkConsistent(Lscala/collection/mutable/FlatHashTable;)V

    :cond_2
    move v6, v8

    .line 196
    goto :goto_1

    .line 179
    .end local v2    # "h0":I
    .end local v3    # "h1":I
    :cond_3
    if-nez v6, :cond_4

    move v6, v7

    goto :goto_2

    :cond_4
    instance-of v9, v6, Ljava/lang/Number;

    if-eqz v9, :cond_5

    check-cast v6, Ljava/lang/Number;

    invoke-static {v6, v5}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_5
    instance-of v9, v6, Ljava/lang/Character;

    if-eqz v9, :cond_6

    check-cast v6, Ljava/lang/Character;

    invoke-static {v6, v5}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    :cond_6
    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_2

    .line 183
    .restart local v2    # "h0":I
    .restart local v3    # "h1":I
    :cond_7
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-interface {p0, v6}, Lscala/collection/mutable/FlatHashTable;->index(I)I

    move-result v4

    .line 185
    .local v4, "h2":I
    if-eq v4, v3, :cond_8

    invoke-static {p0, v4, v2}, Lscala/collection/mutable/FlatHashTable$class;->precedes$1(Lscala/collection/mutable/FlatHashTable;II)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 187
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v3

    aput-object v7, v6, v2

    .line 188
    move v2, v3

    .line 190
    :cond_8
    add-int/lit8 v6, v3, 0x1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v7

    array-length v7, v7

    rem-int v3, v6, v7

    goto :goto_3

    .line 198
    .end local v2    # "h0":I
    .end local v3    # "h1":I
    .end local v4    # "h2":I
    :cond_9
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v9

    array-length v9, v9

    rem-int v2, v6, v9

    .line 199
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v2

    goto/16 :goto_0
.end method

.method public static sizeMapInit(Lscala/collection/mutable/FlatHashTable;I)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;
    .param p1, "tableLength"    # I

    .prologue
    .line 279
    invoke-interface {p0, p1}, Lscala/collection/mutable/FlatHashTable;->calcSizeMapSize(I)I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p0, v0}, Lscala/collection/mutable/FlatHashTable;->sizemap_$eq([I)V

    return-void
.end method

.method public static sizeMapInitAndRebuild(Lscala/collection/mutable/FlatHashTable;)V
    .locals 9
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;

    .prologue
    .line 286
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v6

    array-length v6, v6

    invoke-interface {p0, v6}, Lscala/collection/mutable/FlatHashTable;->sizeMapInit(I)V

    .line 289
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->totalSizeMapBuckets()I

    move-result v5

    .line 290
    .local v5, "totalbuckets":I
    const/4 v0, 0x0

    .line 291
    .local v0, "bucketidx":I
    const/4 v2, 0x0

    .line 292
    .local v2, "tableidx":I
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v4

    .local v4, "tbl":[Ljava/lang/Object;
    sget-object v6, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 293
    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketSize()I

    move-result v7

    array-length v8, v4

    invoke-virtual {v6, v7, v8}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v3

    .line 294
    .local v3, "tableuntil":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 295
    const/4 v1, 0x0

    .line 296
    .local v1, "currbucketsz":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 297
    aget-object v6, v4, v2

    if-eqz v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 298
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    :cond_1
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizemap()[I

    move-result-object v6

    aput v1, v6, v0

    .line 301
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketSize()I

    move-result v6

    add-int/2addr v3, v6

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "currbucketsz":I
    :cond_2
    return-void
.end method

.method private static final tableDebug(Lscala/collection/mutable/FlatHashTable;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public static tableSizeSeed(Lscala/collection/mutable/FlatHashTable;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;

    .prologue
    .line 59
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static final totalSizeMapBuckets(Lscala/collection/mutable/FlatHashTable;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable;

    .prologue
    .line 271
    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable;->sizeMapBucketSize()I

    move-result v1

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
