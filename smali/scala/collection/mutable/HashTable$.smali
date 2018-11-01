.class public final Lscala/collection/mutable/HashTable$;
.super Ljava/lang/Object;
.source "HashTable.scala"


# static fields
.field public static final MODULE$:Lscala/collection/mutable/HashTable$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/HashTable$;

    invoke-direct {v0}, Lscala/collection/mutable/HashTable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/HashTable$;->MODULE$:Lscala/collection/mutable/HashTable$;

    return-void
.end method


# virtual methods
.method public final capacity(I)I
    .locals 1
    .param p1, "expectedSize"    # I

    .prologue
    .line 402
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashTable$;->powerOfTwo(I)I

    move-result v0

    goto :goto_0
.end method

.method public final defaultLoadFactor()I
    .locals 1

    .prologue
    .line 395
    const/16 v0, 0x2ee

    return v0
.end method

.method public final loadFactorDenum()I
    .locals 1

    .prologue
    .line 396
    const/16 v0, 0x3e8

    return v0
.end method

.method public final newThreshold(II)I
    .locals 4
    .param p1, "_loadFactor"    # I
    .param p2, "size"    # I

    .prologue
    .line 398
    int-to-long v0, p2

    int-to-long v2, p1

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lscala/collection/mutable/HashTable$;->loadFactorDenum()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public powerOfTwo(I)I
    .locals 2
    .param p1, "target"    # I

    .prologue
    .line 471
    add-int/lit8 v0, p1, -0x1

    .line 472
    .local v0, "c":I
    ushr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 473
    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 474
    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 475
    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 476
    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v1, v0

    .line 477
    add-int/lit8 v1, v1, 0x1

    return v1
.end method
