.class public abstract Lscala/collection/mutable/FlatHashTable$HashUtils$class;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/FlatHashTable$HashUtils;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable$HashUtils;

    .prologue
    .line 413
    return-void
.end method

.method public static final elemToEntry(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable$HashUtils;
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 438
    if-nez p1, :cond_0

    sget-object p1, Lscala/collection/mutable/FlatHashTable$NullSentinel$;->MODULE$:Lscala/collection/mutable/FlatHashTable$NullSentinel$;

    .end local p1    # "elem":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method public static final entryToElem(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable$HashUtils;
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    .line 444
    sget-object v0, Lscala/collection/mutable/FlatHashTable$NullSentinel$;->MODULE$:Lscala/collection/mutable/FlatHashTable$NullSentinel$;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "entry":Ljava/lang/Object;
    :cond_0
    return-object p1
.end method

.method public static final improve(Lscala/collection/mutable/FlatHashTable$HashUtils;II)I
    .locals 5
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable$HashUtils;
    .param p1, "hcode"    # I
    .param p2, "seed"    # I

    .prologue
    .line 424
    sget-object v3, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    invoke-virtual {v3, p1}, Lscala/util/hashing/package$;->byteswap32(I)I

    move-result v0

    .line 428
    .local v0, "improved":I
    rem-int/lit8 v2, p2, 0x20

    .line 429
    .local v2, "rotation":I
    ushr-int v3, v0, v2

    rsub-int/lit8 v4, v2, 0x20

    shl-int v4, v0, v4

    or-int v1, v3, v4

    .line 430
    .local v1, "rotated":I
    return v1
.end method

.method public static final sizeMapBucketBitSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable$HashUtils;

    .prologue
    .line 414
    const/4 v0, 0x5

    return v0
.end method

.method public static final sizeMapBucketSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/FlatHashTable$HashUtils;

    .prologue
    .line 416
    const/4 v0, 0x1

    invoke-interface {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils;->sizeMapBucketBitSize()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
