.class public Lscala/collection/immutable/HashSet;
.super Lscala/collection/AbstractSet;
.source "HashSet.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/collection/immutable/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/HashSet$HashSet1;,
        Lscala/collection/immutable/HashSet$LeafHashSet;,
        Lscala/collection/immutable/HashSet$HashTrieSet;,
        Lscala/collection/immutable/HashSet$EmptyHashSet$;,
        Lscala/collection/immutable/HashSet$HashSetCollision1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSet",
        "<TA;>;",
        "Lscala/Serializable;",
        "Lscala/collection/CustomParallelizable",
        "<TA;",
        "Ljava/lang/Object",
        "<TA;>;>;",
        "Lscala/collection/immutable/Set",
        "<TA;>;"
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
    .line 35
    invoke-direct {p0}, Lscala/collection/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Set$class;->$init$(Lscala/collection/immutable/Set;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;
    .locals 3
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 163
    sget-object v1, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->computeHash(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lscala/collection/immutable/HashSet;->removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/HashSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public $plus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->computeHash(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lscala/collection/immutable/HashSet;->updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public $plus(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/immutable/HashSet;
    .locals 1
    .param p1, "elem1"    # Ljava/lang/Object;
    .param p2, "elem2"    # Ljava/lang/Object;
    .param p3, "elems"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq",
            "<TA;>;)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object v0

    invoke-virtual {v0, p2}, Lscala/collection/immutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/HashSet;

    move-result-object v0

    invoke-virtual {v0, p3}, Lscala/collection/immutable/HashSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/HashSet;

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion",
            "<",
            "Lscala/collection/immutable/HashSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

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
    .line 186
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->elemHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/HashSet;->improve(I)I

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "e"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->computeHash(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

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

    .line 177
    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic empty()Lscala/collection/GenSet;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->empty()Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->empty()Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/HashSet;

    return-object v0
.end method

.method public bridge synthetic filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->filter(Lscala/Function1;)Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lscala/Function1;)Lscala/collection/immutable/HashSet;
    .locals 7
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 166
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v0

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x6

    const/16 v3, 0xe0

    invoke-virtual {v1, v0, v3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    new-array v4, v0, [Lscala/collection/immutable/HashSet;

    .line 167
    .local v4, "buffer":[Lscala/collection/immutable/HashSet;
    sget-object v6, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/HashSet;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/HashSet;

    :cond_0
    return-object v0
.end method

.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .param p2, "negate"    # Z
    .param p3, "level"    # I
    .param p4, "buffer"    # [Lscala/collection/immutable/HashSet;
    .param p5, "offset0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;I)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet;->filterNot(Lscala/Function1;)Lscala/collection/immutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/immutable/HashSet;
    .locals 7
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 171
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->size()I

    move-result v0

    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    add-int/lit8 v0, v0, 0x6

    const/16 v2, 0xe0

    invoke-virtual {v1, v0, v2}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    new-array v4, v0, [Lscala/collection/immutable/HashSet;

    .line 172
    .local v4, "buffer":[Lscala/collection/immutable/HashSet;
    sget-object v6, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/HashSet;->filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lscala/collection/immutable/HashSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/HashSet;

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
            "<TA;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public get0(Ljava/lang/Object;II)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)Z"
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public final improve(I)I
    .locals 2
    .param p1, "hcode"    # I

    .prologue
    .line 180
    shl-int/lit8 v1, p1, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int v0, p1, v1

    .line 181
    .local v0, "h":I
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 182
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 183
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
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v0}, Lscala/collection/Iterator$;->empty()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 193
    return-object p0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->seq()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lscala/collection/immutable/Set$class;->seq(Lscala/collection/immutable/Set;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public subsetOf(Lscala/collection/GenSet;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet",
            "<TA;>;)Z"
        }
    .end annotation

    .prologue
    .line 61
    instance-of v0, p1, Lscala/collection/immutable/HashSet;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/immutable/HashSet;

    .line 63
    .end local p1    # "that":Lscala/collection/GenSet;
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lscala/collection/immutable/HashSet;->subsetOf0(Lscala/collection/immutable/HashSet;I)Z

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 66
    .restart local p1    # "that":Lscala/collection/GenSet;
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result v0

    goto :goto_0
.end method

.method public subsetOf0(Lscala/collection/immutable/HashSet;I)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/immutable/HashSet;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;I)Z"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 197
    return-object p0
.end method

.method public updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-direct {v0, p1, p2}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method
