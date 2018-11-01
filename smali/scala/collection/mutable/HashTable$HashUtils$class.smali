.class public abstract Lscala/collection/mutable/HashTable$HashUtils$class;
.super Ljava/lang/Object;
.source "HashTable.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/HashTable$HashUtils;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/HashTable$HashUtils;

    .prologue
    .line 404
    return-void
.end method

.method public static elemHashCode(Lscala/collection/mutable/HashTable$HashUtils;Ljava/lang/Object;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/HashTable$HashUtils;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 409
    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static final improve(Lscala/collection/mutable/HashTable$HashUtils;II)I
    .locals 5
    .param p0, "$this"    # Lscala/collection/mutable/HashTable$HashUtils;
    .param p1, "hcode"    # I
    .param p2, "seed"    # I

    .prologue
    .line 437
    sget-object v3, Lscala/util/hashing/package$;->MODULE$:Lscala/util/hashing/package$;

    invoke-virtual {v3, p1}, Lscala/util/hashing/package$;->byteswap32(I)I

    move-result v0

    .line 460
    .local v0, "i":I
    rem-int/lit8 v2, p2, 0x20

    .line 461
    .local v2, "rotation":I
    ushr-int v3, v0, v2

    rsub-int/lit8 v4, v2, 0x20

    shl-int v4, v0, v4

    or-int v1, v3, v4

    .line 462
    .local v1, "rotated":I
    return v1
.end method

.method public static final sizeMapBucketBitSize(Lscala/collection/mutable/HashTable$HashUtils;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/HashTable$HashUtils;

    .prologue
    .line 405
    const/4 v0, 0x5

    return v0
.end method

.method public static final sizeMapBucketSize(Lscala/collection/mutable/HashTable$HashUtils;)I
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/HashTable$HashUtils;

    .prologue
    .line 407
    const/4 v0, 0x1

    invoke-interface {p0}, Lscala/collection/mutable/HashTable$HashUtils;->sizeMapBucketBitSize()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method
