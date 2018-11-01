.class public final Lscala/collection/immutable/HashSet$;
.super Lscala/collection/generic/ImmutableSetFactory;
.source "HashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableSetFactory",
        "<",
        "Lscala/collection/immutable/HashSet;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/HashSet$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/HashSet$;

    invoke-direct {v0}, Lscala/collection/immutable/HashSet$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lscala/collection/generic/ImmutableSetFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    return-void
.end method


# virtual methods
.method public emptyInstance()Lscala/collection/immutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/HashSet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    sget-object v0, Lscala/collection/immutable/HashSet$EmptyHashSet$;->MODULE$:Lscala/collection/immutable/HashSet$EmptyHashSet$;

    return-object v0
.end method

.method public bridge synthetic emptyInstance()Lscala/collection/immutable/Set;
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$;->emptyInstance()Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public scala$collection$immutable$HashSet$$keepBits(II)I
    .locals 5
    .param p1, "bitmap"    # I
    .param p2, "keep"    # I

    .prologue
    .line 1004
    const/4 v3, 0x0

    .line 1005
    .local v3, "result":I
    move v0, p1

    .line 1006
    .local v0, "current":I
    move v1, p2

    .line 1007
    .local v1, "kept":I
    :goto_0
    if-eqz v1, :cond_1

    .line 1009
    add-int/lit8 v4, v0, -0x1

    and-int/2addr v4, v0

    xor-int v2, v0, v4

    .line 1010
    .local v2, "lsb":I
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 1012
    or-int/2addr v3, v2

    .line 1015
    :cond_0
    xor-int/lit8 v4, v2, -0x1

    and-int/2addr v0, v4

    .line 1017
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1019
    .end local v2    # "lsb":I
    :cond_1
    return v3
.end method

.method public scala$collection$immutable$HashSet$$makeHashTrieSet(ILscala/collection/immutable/HashSet;ILscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet$HashTrieSet;
    .locals 11
    .param p1, "hash0"    # I
    .param p2, "elem0"    # Lscala/collection/immutable/HashSet;
    .param p3, "hash1"    # I
    .param p4, "elem1"    # Lscala/collection/immutable/HashSet;
    .param p5, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;I",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;I)",
            "Lscala/collection/immutable/HashSet$HashTrieSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 221
    ushr-int v0, p1, p5

    and-int/lit8 v9, v0, 0x1f

    .line 222
    .local v9, "index0":I
    ushr-int v0, p3, p5

    and-int/lit8 v10, v0, 0x1f

    .line 223
    .local v10, "index1":I
    if-eq v9, v10, :cond_1

    .line 224
    const/4 v0, 0x1

    shl-int/2addr v0, v9

    const/4 v1, 0x1

    shl-int/2addr v1, v10

    or-int v6, v0, v1

    .line 225
    .local v6, "bitmap":I
    const/4 v0, 0x2

    new-array v8, v0, [Lscala/collection/immutable/HashSet;

    .line 226
    .local v8, "elems":[Lscala/collection/immutable/HashSet;
    if-ge v9, v10, :cond_0

    .line 227
    const/4 v0, 0x0

    aput-object p2, v8, v0

    .line 228
    const/4 v0, 0x1

    aput-object p4, v8, v0

    .line 233
    :goto_0
    new-instance v0, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-virtual {p2}, Lscala/collection/immutable/HashSet;->size()I

    move-result v1

    invoke-virtual {p4}, Lscala/collection/immutable/HashSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v6, v8, v1}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    .line 220
    :goto_1
    return-object v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    aput-object p4, v8, v0

    .line 231
    const/4 v0, 0x1

    aput-object p2, v8, v0

    goto :goto_0

    .line 235
    .end local v6    # "bitmap":I
    .end local v8    # "elems":[Lscala/collection/immutable/HashSet;
    :cond_1
    const/4 v0, 0x1

    new-array v8, v0, [Lscala/collection/immutable/HashSet;

    .line 236
    .restart local v8    # "elems":[Lscala/collection/immutable/HashSet;
    const/4 v0, 0x1

    shl-int v6, v0, v9

    .line 237
    .restart local v6    # "bitmap":I
    add-int/lit8 v5, p5, 0x5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/HashSet$;->scala$collection$immutable$HashSet$$makeHashTrieSet(ILscala/collection/immutable/HashSet;ILscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet$HashTrieSet;

    move-result-object v7

    .line 238
    .local v7, "child":Lscala/collection/immutable/HashSet$HashTrieSet;
    const/4 v0, 0x0

    aput-object v7, v8, v0

    .line 239
    new-instance v0, Lscala/collection/immutable/HashSet$HashTrieSet;

    invoke-virtual {v7}, Lscala/collection/immutable/HashSet$HashTrieSet;->size()I

    move-result v1

    invoke-direct {v0, v6, v8, v1}, Lscala/collection/immutable/HashSet$HashTrieSet;-><init>(I[Lscala/collection/immutable/HashSet;I)V

    goto :goto_1
.end method
