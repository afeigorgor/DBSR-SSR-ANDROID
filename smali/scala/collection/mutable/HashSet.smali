.class public Lscala/collection/mutable/HashSet;
.super Lscala/collection/mutable/AbstractSet;
.source "HashSet.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/collection/mutable/FlatHashTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractSet",
        "<TA;>;",
        "Lscala/Serializable;",
        "Lscala/collection/CustomParallelizable",
        "<TA;",
        "Ljava/lang/Object",
        "<TA;>;>;",
        "Lscala/collection/mutable/FlatHashTable",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private transient _loadFactor:I

.field private transient seedvalue:I

.field private transient sizemap:[I

.field private transient table:[Ljava/lang/Object;

.field private transient tableSize:I

.field private transient threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lscala/collection/mutable/HashSet;-><init>(Lscala/collection/mutable/FlatHashTable$Contents;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/mutable/FlatHashTable$Contents;)V
    .locals 0
    .param p1, "contents"    # Lscala/collection/mutable/FlatHashTable$Contents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/FlatHashTable$Contents",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSet;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->$init$(Lscala/collection/mutable/FlatHashTable$HashUtils;)V

    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->$init$(Lscala/collection/mutable/FlatHashTable;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    .line 49
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->initWithContents(Lscala/collection/mutable/FlatHashTable$Contents;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;
    .locals 0
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->removeElem(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus(Ljava/lang/Object;)Lscala/collection/Set;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus(Ljava/lang/Object;)Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;
    .locals 0
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->addElem(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetLike;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 1
    .param p1, "elems"    # Lscala/collection/GenTraversableOnce;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public _loadFactor()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lscala/collection/mutable/HashSet;->_loadFactor:I

    return v0
.end method

.method public _loadFactor_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 40
    iput p1, p0, Lscala/collection/mutable/HashSet;->_loadFactor:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->addElem(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addElem(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->addElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addEntry(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newEntry"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->addEntry(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public alwaysInitSizeMap()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->alwaysInitSizeMap(Lscala/collection/mutable/FlatHashTable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public calcSizeMapSize(I)I
    .locals 1
    .param p1, "tableLength"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->calcSizeMapSize(Lscala/collection/mutable/FlatHashTable;I)I

    move-result v0

    return v0
.end method

.method public capacity(I)I
    .locals 1
    .param p1, "expectedSize"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->capacity(Lscala/collection/mutable/FlatHashTable;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->clone()Lscala/collection/mutable/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lscala/collection/mutable/HashSet;

    invoke-direct {v0}, Lscala/collection/mutable/HashSet;-><init>()V

    invoke-virtual {v0, p0}, Lscala/collection/mutable/HashSet;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/HashSet;

    return-object v0
.end method

.method public bridge synthetic clone()Lscala/collection/mutable/Set;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->clone()Lscala/collection/mutable/HashSet;

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
            "Lscala/collection/mutable/HashSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lscala/collection/mutable/HashSet$;->MODULE$:Lscala/collection/mutable/HashSet$;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->containsElem(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsElem(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->containsElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final elemToEntry(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->elemToEntry(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->empty()Lscala/collection/GenSet;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
.end method

.method public final entryToElem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->entryToElem(Lscala/collection/mutable/FlatHashTable$HashUtils;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 4
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
    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, "i":I
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->table()[Ljava/lang/Object;

    move-result-object v3

    array-length v2, v3

    .line 76
    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 77
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->table()[Ljava/lang/Object;

    move-result-object v3

    aget-object v0, v3, v1

    .line 78
    .local v0, "curEntry":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/HashSet;->entryToElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 73
    .end local v0    # "curEntry":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public final improve(II)I
    .locals 1
    .param p1, "hcode"    # I
    .param p2, "seed"    # I

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->improve(Lscala/collection/mutable/FlatHashTable$HashUtils;II)I

    move-result v0

    return v0
.end method

.method public final index(I)I
    .locals 1
    .param p1, "hcode"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->index(Lscala/collection/mutable/FlatHashTable;I)I

    move-result v0

    return v0
.end method

.method public initWithContents(Lscala/collection/mutable/FlatHashTable$Contents;)V
    .locals 0
    .param p1, "c"    # Lscala/collection/mutable/FlatHashTable$Contents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/FlatHashTable$Contents",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->initWithContents(Lscala/collection/mutable/FlatHashTable;Lscala/collection/mutable/FlatHashTable$Contents;)V

    return-void
.end method

.method public initialSize()I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->initialSize(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
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
    .line 71
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->iterator(Lscala/collection/mutable/FlatHashTable;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public nnSizeMapAdd(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapAdd(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public nnSizeMapRemove(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapRemove(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public nnSizeMapReset(I)V
    .locals 0
    .param p1, "tableLength"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->nnSizeMapReset(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashSet;->removeElem(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeElem(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->removeElem(Lscala/collection/mutable/FlatHashTable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->result()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public seedvalue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lscala/collection/mutable/HashSet;->seedvalue:I

    return v0
.end method

.method public seedvalue_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 40
    iput p1, p0, Lscala/collection/mutable/HashSet;->seedvalue:I

    return-void
.end method

.method public bridge synthetic seq()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->seq()Lscala/collection/mutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->tableSize()I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/FlatHashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public sizeMapInit(I)V
    .locals 0
    .param p1, "tableLength"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/FlatHashTable$class;->sizeMapInit(Lscala/collection/mutable/FlatHashTable;I)V

    return-void
.end method

.method public sizeMapInitAndRebuild()V
    .locals 0

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->sizeMapInitAndRebuild(Lscala/collection/mutable/FlatHashTable;)V

    return-void
.end method

.method public sizemap()[I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lscala/collection/mutable/HashSet;->sizemap:[I

    return-object v0
.end method

.method public sizemap_$eq([I)V
    .locals 0
    .param p1, "x$1"    # [I

    .prologue
    .line 40
    iput-object p1, p0, Lscala/collection/mutable/HashSet;->sizemap:[I

    return-void
.end method

.method public table()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lscala/collection/mutable/HashSet;->table:[Ljava/lang/Object;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lscala/collection/mutable/HashSet;->tableSize:I

    return v0
.end method

.method public tableSizeSeed()I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->tableSizeSeed(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method

.method public tableSize_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 40
    iput p1, p0, Lscala/collection/mutable/HashSet;->tableSize:I

    return-void
.end method

.method public table_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 40
    iput-object p1, p0, Lscala/collection/mutable/HashSet;->table:[Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashSet;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public threshold()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lscala/collection/mutable/HashSet;->threshold:I

    return v0
.end method

.method public threshold_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 40
    iput p1, p0, Lscala/collection/mutable/HashSet;->threshold:I

    return-void
.end method

.method public final totalSizeMapBuckets()I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/FlatHashTable$class;->totalSizeMapBuckets(Lscala/collection/mutable/FlatHashTable;)I

    move-result v0

    return v0
.end method
