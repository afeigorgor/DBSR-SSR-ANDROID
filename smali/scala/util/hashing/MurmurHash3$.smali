.class public final Lscala/util/hashing/MurmurHash3$;
.super Lscala/util/hashing/MurmurHash3;
.source "MurmurHash3.scala"


# static fields
.field public static final MODULE$:Lscala/util/hashing/MurmurHash3$;


# instance fields
.field private final mapSeed:I

.field private final seqSeed:I

.field private final setSeed:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/util/hashing/MurmurHash3$;

    invoke-direct {v0}, Lscala/util/hashing/MurmurHash3$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 198
    invoke-direct {p0}, Lscala/util/hashing/MurmurHash3;-><init>()V

    sput-object p0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    .line 204
    const-string v0, "Seq"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lscala/util/hashing/MurmurHash3$;->seqSeed:I

    .line 205
    const-string v0, "Map"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lscala/util/hashing/MurmurHash3$;->mapSeed:I

    .line 206
    const-string v0, "Set"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lscala/util/hashing/MurmurHash3$;->setSeed:I

    return-void
.end method


# virtual methods
.method public mapHash(Lscala/collection/Map;)I
    .locals 1
    .param p1, "xs"    # Lscala/collection/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Map",
            "<**>;)I"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lscala/util/hashing/MurmurHash3$;->mapSeed()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->unorderedHash(Lscala/collection/TraversableOnce;I)I

    move-result v0

    return v0
.end method

.method public final mapSeed()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lscala/util/hashing/MurmurHash3$;->mapSeed:I

    return v0
.end method

.method public productHash(Lscala/Product;)I
    .locals 1
    .param p1, "x"    # Lscala/Product;

    .prologue
    .line 211
    const v0, -0x35014542    # -8346975.0f

    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->productHash(Lscala/Product;I)I

    move-result v0

    return v0
.end method

.method public seqHash(Lscala/collection/Seq;)I
    .locals 1
    .param p1, "xs"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 218
    instance-of v0, p1, Lscala/collection/immutable/List;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/immutable/List;

    .end local p1    # "xs":Lscala/collection/Seq;
    invoke-virtual {p0}, Lscala/util/hashing/MurmurHash3$;->seqSeed()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->listHash(Lscala/collection/immutable/List;I)I

    move-result v0

    .line 217
    :goto_0
    return v0

    .line 219
    .restart local p1    # "xs":Lscala/collection/Seq;
    :cond_0
    invoke-virtual {p0}, Lscala/util/hashing/MurmurHash3$;->seqSeed()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->orderedHash(Lscala/collection/TraversableOnce;I)I

    move-result v0

    goto :goto_0
.end method

.method public final seqSeed()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lscala/util/hashing/MurmurHash3$;->seqSeed:I

    return v0
.end method

.method public setHash(Lscala/collection/Set;)I
    .locals 1
    .param p1, "xs"    # Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Set",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lscala/util/hashing/MurmurHash3$;->setSeed()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/util/hashing/MurmurHash3$;->unorderedHash(Lscala/collection/TraversableOnce;I)I

    move-result v0

    return v0
.end method

.method public final setSeed()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lscala/util/hashing/MurmurHash3$;->setSeed:I

    return v0
.end method
