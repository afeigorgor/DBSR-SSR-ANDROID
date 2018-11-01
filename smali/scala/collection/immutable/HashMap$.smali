.class public final Lscala/collection/immutable/HashMap$;
.super Lscala/collection/generic/ImmutableMapFactory;
.source "HashMap.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/generic/BitOperations$Int;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/generic/ImmutableMapFactory",
        "<",
        "Lscala/collection/immutable/HashMap;",
        ">;",
        "Lscala/Serializable;",
        "Lscala/collection/generic/BitOperations$Int;"
    }
.end annotation


# static fields
.field public static final MODULE$:Lscala/collection/immutable/HashMap$;


# instance fields
.field private final defaultMerger:Lscala/collection/immutable/HashMap$Merger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/HashMap$Merger",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/immutable/HashMap$;

    invoke-direct {v0}, Lscala/collection/immutable/HashMap$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Lscala/collection/generic/ImmutableMapFactory;-><init>()V

    sput-object p0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-static {p0}, Lscala/collection/generic/BitOperations$Int$class;->$init$(Lscala/collection/generic/BitOperations$Int;)V

    .line 144
    new-instance v0, Lscala/collection/immutable/HashMap$$anonfun$1;

    invoke-direct {v0}, Lscala/collection/immutable/HashMap$$anonfun$1;-><init>()V

    new-instance v1, Lscala/collection/immutable/HashMap$$anon$2;

    invoke-direct {v1, v0}, Lscala/collection/immutable/HashMap$$anon$2;-><init>(Lscala/Function2;)V

    iput-object v1, p0, Lscala/collection/immutable/HashMap$;->defaultMerger:Lscala/collection/immutable/HashMap$Merger;

    return-void
.end method


# virtual methods
.method public canBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/immutable/HashMap",
            "<**>;",
            "Lscala/Tuple2",
            "<TA;TB;>;",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;

    invoke-direct {v0, p0}, Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;-><init>(Lscala/collection/generic/GenMapFactory;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenMap;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 157
    sget-object v0, Lscala/collection/immutable/HashMap$EmptyHashMap$;->MODULE$:Lscala/collection/immutable/HashMap$EmptyHashMap$;

    return-object v0
.end method

.method public scala$collection$immutable$HashMap$$keepBits(II)I
    .locals 5
    .param p1, "bitmap"    # I
    .param p2, "keep"    # I

    .prologue
    .line 550
    const/4 v3, 0x0

    .line 551
    .local v3, "result":I
    move v0, p1

    .line 552
    .local v0, "current":I
    move v1, p2

    .line 553
    .local v1, "kept":I
    :goto_0
    if-eqz v1, :cond_1

    .line 555
    add-int/lit8 v4, v0, -0x1

    and-int/2addr v4, v0

    xor-int v2, v0, v4

    .line 556
    .local v2, "lsb":I
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 558
    or-int/2addr v3, v2

    .line 561
    :cond_0
    xor-int/lit8 v4, v2, -0x1

    and-int/2addr v0, v4

    .line 563
    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    .end local v2    # "lsb":I
    :cond_1
    return v3
.end method

.method public scala$collection$immutable$HashMap$$makeHashTrieMap(ILscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap;II)Lscala/collection/immutable/HashMap$HashTrieMap;
    .locals 13
    .param p1, "hash0"    # I
    .param p2, "elem0"    # Lscala/collection/immutable/HashMap;
    .param p3, "hash1"    # I
    .param p4, "elem1"    # Lscala/collection/immutable/HashMap;
    .param p5, "level"    # I
    .param p6, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(I",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;I",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;II)",
            "Lscala/collection/immutable/HashMap$HashTrieMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 163
    ushr-int v1, p1, p5

    and-int/lit8 v10, v1, 0x1f

    .line 164
    .local v10, "index0":I
    ushr-int v1, p3, p5

    and-int/lit8 v11, v1, 0x1f

    .line 165
    .local v11, "index1":I
    if-eq v10, v11, :cond_1

    .line 166
    const/4 v1, 0x1

    shl-int/2addr v1, v10

    const/4 v2, 0x1

    shl-int/2addr v2, v11

    or-int v8, v1, v2

    .line 167
    .local v8, "bitmap":I
    const/4 v1, 0x2

    new-array v9, v1, [Lscala/collection/immutable/HashMap;

    .line 168
    .local v9, "elems":[Lscala/collection/immutable/HashMap;
    if-ge v10, v11, :cond_0

    .line 169
    const/4 v1, 0x0

    aput-object p2, v9, v1

    .line 170
    const/4 v1, 0x1

    aput-object p4, v9, v1

    .line 175
    :goto_0
    new-instance v1, Lscala/collection/immutable/HashMap$HashTrieMap;

    move/from16 v0, p6

    invoke-direct {v1, v8, v9, v0}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    .line 162
    :goto_1
    return-object v1

    .line 172
    :cond_0
    const/4 v1, 0x0

    aput-object p4, v9, v1

    .line 173
    const/4 v1, 0x1

    aput-object p2, v9, v1

    goto :goto_0

    .line 177
    .end local v8    # "bitmap":I
    .end local v9    # "elems":[Lscala/collection/immutable/HashMap;
    :cond_1
    const/4 v1, 0x1

    new-array v9, v1, [Lscala/collection/immutable/HashMap;

    .line 178
    .restart local v9    # "elems":[Lscala/collection/immutable/HashMap;
    const/4 v1, 0x1

    shl-int v8, v1, v10

    .line 179
    .restart local v8    # "bitmap":I
    const/4 v12, 0x0

    add-int/lit8 v6, p5, 0x5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lscala/collection/immutable/HashMap$;->scala$collection$immutable$HashMap$$makeHashTrieMap(ILscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap;II)Lscala/collection/immutable/HashMap$HashTrieMap;

    move-result-object v1

    aput-object v1, v9, v12

    .line 180
    new-instance v1, Lscala/collection/immutable/HashMap$HashTrieMap;

    move/from16 v0, p6

    invoke-direct {v1, v8, v9, v0}, Lscala/collection/immutable/HashMap$HashTrieMap;-><init>(I[Lscala/collection/immutable/HashMap;I)V

    goto :goto_1
.end method
