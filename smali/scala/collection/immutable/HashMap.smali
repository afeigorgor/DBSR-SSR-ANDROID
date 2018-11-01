.class public Lscala/collection/immutable/HashMap;
.super Lscala/collection/immutable/AbstractMap;
.source "HashMap.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/CustomParallelizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/HashMap$Merger;,
        Lscala/collection/immutable/HashMap$HashMap1;,
        Lscala/collection/immutable/HashMap$HashTrieMap;,
        Lscala/collection/immutable/HashMap$EmptyHashMap$;,
        Lscala/collection/immutable/HashMap$HashMapCollision1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/AbstractMap",
        "<TA;TB;>;",
        "Lscala/Serializable;",
        "Lscala/collection/CustomParallelizable",
        "<",
        "Lscala/Tuple2",
        "<TA;TB;>;",
        "Ljava/lang/Object",
        "<TA;TB;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lscala/collection/immutable/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/HashMap;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lscala/collection/immutable/HashMap;->removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;
    .locals 7
    .param p1, "kv"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2",
            "<TA;TB1;>;)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/HashMap;->computeHash(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap;->updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public $plus(Lscala/Tuple2;Lscala/Tuple2;Lscala/collection/Seq;)Lscala/collection/immutable/HashMap;
    .locals 2
    .param p1, "elem1"    # Lscala/Tuple2;
    .param p2, "elem2"    # Lscala/Tuple2;
    .param p3, "elems"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2",
            "<TA;TB1;>;",
            "Lscala/Tuple2",
            "<TA;TB1;>;",
            "Lscala/collection/Seq",
            "<",
            "Lscala/Tuple2",
            "<TA;TB1;>;>;)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v1}, Lscala/collection/immutable/HashMap$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lscala/collection/immutable/HashMap;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/HashMap;

    return-object v0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public computeHash(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)I"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->elemHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/HashMap;->improve(I)I

    move-result v0

    return v0
.end method

.method public elemHashCode(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)I"
        }
    .end annotation

    .prologue
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 80
    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/immutable/Map;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->filter(Lscala/Function1;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lscala/Function1;)Lscala/collection/immutable/HashMap;
    .locals 7
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 69
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->size()I

    move-result v0

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x6

    const/16 v3, 0xe0

    invoke-virtual {v1, v0, v3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    new-array v4, v0, [Lscala/collection/immutable/HashMap;

    .line 70
    .local v4, "buffer":[Lscala/collection/immutable/HashMap;
    sget-object v6, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/HashMap;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .param p2, "negate"    # Z
    .param p3, "level"    # I
    .param p4, "buffer"    # [Lscala/collection/immutable/HashMap;
    .param p5, "offset0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;I)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->filterNot(Lscala/Function1;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Lscala/collection/Map;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->filterNot(Lscala/Function1;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/immutable/HashMap;
    .locals 7
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 74
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->size()I

    move-result v0

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x6

    const/16 v2, 0xe0

    invoke-virtual {v1, v0, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    new-array v4, v0, [Lscala/collection/immutable/HashMap;

    .line 75
    .local v4, "buffer":[Lscala/collection/immutable/HashMap;
    sget-object v6, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/HashMap;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    return-void
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->computeHash(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lscala/collection/immutable/HashMap;->get0(Ljava/lang/Object;II)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public get0(Ljava/lang/Object;II)Lscala/Option;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 93
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    return-object v0
.end method

.method public final improve(I)I
    .locals 2
    .param p1, "hcode"    # I

    .prologue
    .line 83
    shl-int/lit8 v1, p1, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int v0, p1, v1

    .line 84
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 85
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 86
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v1, v0

    return v1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 49
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 98
    return-object p0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/HashMap;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap;->computeHash(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap;->updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/HashMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .param p4, "value"    # Ljava/lang/Object;
    .param p5, "kv"    # Lscala/Tuple2;
    .param p6, "merger"    # Lscala/collection/immutable/HashMap$Merger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;IITB1;",
            "Lscala/Tuple2",
            "<TA;TB1;>;",
            "Lscala/collection/immutable/HashMap$Merger",
            "<TA;TB1;>;)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-direct {v0, p1, p2, p4, p5}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    return-object v0
.end method
