.class public Lscala/util/hashing/MurmurHash3;
.super Ljava/lang/Object;
.source "MurmurHash3.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final avalanche(I)I
    .locals 3
    .param p1, "hash"    # I

    .prologue
    .line 42
    ushr-int/lit8 v1, p1, 0x10

    xor-int/2addr v1, p1

    .line 43
    const v2, -0x7a143595

    mul-int v0, v1, v2

    .line 44
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v1, v0

    .line 45
    const v2, -0x3d4d51cb

    mul-int v0, v1, v2

    .line 46
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v1, v0

    .line 48
    return v1
.end method


# virtual methods
.method public final finalizeHash(II)I
    .locals 1
    .param p1, "hash"    # I
    .param p2, "length"    # I

    .prologue
    .line 36
    xor-int v0, p1, p2

    invoke-direct {p0, v0}, Lscala/util/hashing/MurmurHash3;->avalanche(I)I

    move-result v0

    return v0
.end method

.method public final listHash(Lscala/collection/immutable/List;I)I
    .locals 6
    .param p1, "xs"    # Lscala/collection/immutable/List;
    .param p2, "seed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List",
            "<*>;I)I"
        }
    .end annotation

    .prologue
    .line 163
    const/4 v3, 0x0

    .line 164
    .local v3, "n":I
    move v1, p2

    .line 165
    .local v1, "h":I
    move-object v0, p1

    .line 166
    .end local v1    # "h":I
    .end local v3    # "n":I
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {p0, v1, v3}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result v5

    return v5

    .line 167
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    .line 168
    .local v2, "head":Ljava/lang/Object;
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/immutable/List;

    .line 169
    .local v4, "tail":Lscala/collection/immutable/List;
    sget-object v5, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v5, v2}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v1, v5}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result v1

    .line 170
    add-int/lit8 v3, v3, 0x1

    move-object v0, v4

    .line 171
    goto :goto_0
.end method

.method public final mix(II)I
    .locals 3
    .param p1, "hash"    # I
    .param p2, "data"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1, p2}, Lscala/util/hashing/MurmurHash3;->mixLast(II)I

    move-result v0

    .line 18
    .local v0, "h":I
    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    .line 19
    mul-int/lit8 v1, v1, 0x5

    const v2, -0x19ab949c

    add-int/2addr v1, v2

    return v1
.end method

.method public final mixLast(II)I
    .locals 3
    .param p1, "hash"    # I
    .param p2, "data"    # I

    .prologue
    .line 28
    const v1, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v1, p2

    .line 29
    const/16 v2, 0xf

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    .line 30
    const v2, 0x1b873593

    mul-int v0, v1, v2

    .line 32
    .local v0, "k":I
    xor-int v1, p1, v0

    return v1
.end method

.method public final orderedHash(Lscala/collection/TraversableOnce;I)I
    .locals 4
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .param p2, "seed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v2, 0x0

    invoke-static {v2}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v1

    .line 108
    .local v1, "n":Lscala/runtime/IntRef;
    invoke-static {p2}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 109
    .local v0, "h":Lscala/runtime/IntRef;
    new-instance v2, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;

    invoke-direct {v2, p0, v1, v0}, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;-><init>(Lscala/util/hashing/MurmurHash3;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V

    invoke-interface {p1, v2}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 113
    iget v2, v0, Lscala/runtime/IntRef;->elem:I

    iget v3, v1, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0, v2, v3}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result v2

    return v2
.end method

.method public final productHash(Lscala/Product;I)I
    .locals 5
    .param p1, "x"    # Lscala/Product;
    .param p2, "seed"    # I

    .prologue
    .line 53
    invoke-interface {p1}, Lscala/Product;->productArity()I

    move-result v0

    .line 57
    .local v0, "arr":I
    if-nez v0, :cond_0

    .line 58
    invoke-interface {p1}, Lscala/Product;->productPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 52
    :goto_0
    return v3

    .line 61
    :cond_0
    move v1, p2

    .line 62
    .local v1, "h":I
    const/4 v2, 0x0

    .line 63
    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 64
    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p1, v2}, Lscala/Product;->productElement(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result v1

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {p0, v1, v0}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result v3

    goto :goto_0
.end method

.method public final unorderedHash(Lscala/collection/TraversableOnce;I)I
    .locals 7
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .param p2, "seed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v2

    .local v2, "a":Lscala/runtime/IntRef;
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v3

    .local v3, "b":Lscala/runtime/IntRef;
    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v4

    .line 90
    .local v4, "n":Lscala/runtime/IntRef;
    const/4 v0, 0x1

    invoke-static {v0}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v5

    .line 91
    .local v5, "c":Lscala/runtime/IntRef;
    new-instance v0, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lscala/util/hashing/MurmurHash3$$anonfun$unorderedHash$1;-><init>(Lscala/util/hashing/MurmurHash3;Lscala/runtime/IntRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V

    invoke-interface {p1, v0}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 99
    iget v0, v2, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0, p2, v0}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result v6

    .line 100
    .local v6, "h":I
    iget v0, v3, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0, v6, v0}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result v6

    .line 101
    iget v0, v5, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0, v6, v0}, Lscala/util/hashing/MurmurHash3;->mixLast(II)I

    move-result v6

    .line 102
    iget v0, v4, Lscala/runtime/IntRef;->elem:I

    invoke-virtual {p0, v6, v0}, Lscala/util/hashing/MurmurHash3;->finalizeHash(II)I

    move-result v0

    return v0
.end method
