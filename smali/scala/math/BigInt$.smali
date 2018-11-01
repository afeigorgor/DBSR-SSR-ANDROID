.class public final Lscala/math/BigInt$;
.super Ljava/lang/Object;
.source "BigInt.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/math/BigInt$;


# instance fields
.field private final cache:[Lscala/math/BigInt;

.field private final maxCached:I

.field private final minCached:I

.field private final scala$math$BigInt$$minusOne:Ljava/math/BigInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/BigInt$;

    invoke-direct {v0}, Lscala/math/BigInt$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    .line 22
    const/16 v0, -0x400

    iput v0, p0, Lscala/math/BigInt$;->minCached:I

    .line 23
    const/16 v0, 0x400

    iput v0, p0, Lscala/math/BigInt$;->maxCached:I

    .line 24
    invoke-direct {p0}, Lscala/math/BigInt$;->maxCached()I

    move-result v0

    invoke-direct {p0}, Lscala/math/BigInt$;->minCached()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lscala/math/BigInt;

    iput-object v0, p0, Lscala/math/BigInt$;->cache:[Lscala/math/BigInt;

    .line 25
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lscala/math/BigInt$;->scala$math$BigInt$$minusOne:Ljava/math/BigInteger;

    return-void
.end method

.method private cache()[Lscala/math/BigInt;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lscala/math/BigInt$;->cache:[Lscala/math/BigInt;

    return-object v0
.end method

.method private maxCached()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lscala/math/BigInt$;->maxCached:I

    return v0
.end method

.method private minCached()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lscala/math/BigInt$;->minCached:I

    return v0
.end method


# virtual methods
.method public apply(I)Lscala/math/BigInt;
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lscala/math/BigInt$;->minCached()I

    move-result v2

    if-gt v2, p1, :cond_1

    invoke-direct {p0}, Lscala/math/BigInt$;->maxCached()I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 35
    invoke-direct {p0}, Lscala/math/BigInt$;->minCached()I

    move-result v2

    sub-int v1, p1, v2

    .line 36
    .local v1, "offset":I
    invoke-direct {p0}, Lscala/math/BigInt$;->cache()[Lscala/math/BigInt;

    move-result-object v2

    aget-object v0, v2, v1

    .line 37
    .local v0, "n":Lscala/math/BigInt;
    if-nez v0, :cond_0

    new-instance v0, Lscala/math/BigInt;

    .end local v0    # "n":Lscala/math/BigInt;
    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v2}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    .restart local v0    # "n":Lscala/math/BigInt;
    invoke-direct {p0}, Lscala/math/BigInt$;->cache()[Lscala/math/BigInt;

    move-result-object v2

    aput-object v0, v2, v1

    .line 34
    .end local v0    # "n":Lscala/math/BigInt;
    .end local v1    # "offset":I
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    new-instance v0, Lscala/math/BigInt;

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v2}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public apply(J)Lscala/math/BigInt;
    .locals 3
    .param p1, "l"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Lscala/math/BigInt$;->minCached()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lscala/math/BigInt$;->maxCached()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lscala/math/BigInt$;->apply(I)Lscala/math/BigInt;

    move-result-object v0

    :goto_0
    return-object v0

    .line 49
    :cond_0
    new-instance v0, Lscala/math/BigInt;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method public int2bigInt(I)Lscala/math/BigInt;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lscala/math/BigInt$;->apply(I)Lscala/math/BigInt;

    move-result-object v0

    return-object v0
.end method

.method public long2bigInt(J)Lscala/math/BigInt;
    .locals 1
    .param p1, "l"    # J

    .prologue
    .line 101
    invoke-virtual {p0, p1, p2}, Lscala/math/BigInt$;->apply(J)Lscala/math/BigInt;

    move-result-object v0

    return-object v0
.end method

.method public scala$math$BigInt$$minusOne()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lscala/math/BigInt$;->scala$math$BigInt$$minusOne:Ljava/math/BigInteger;

    return-object v0
.end method
