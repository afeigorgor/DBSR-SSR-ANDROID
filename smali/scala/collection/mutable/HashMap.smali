.class public Lscala/collection/mutable/HashMap;
.super Lscala/collection/mutable/AbstractMap;
.source "HashMap.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/collection/mutable/HashTable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractMap",
        "<TA;TB;>;",
        "Lscala/Serializable;",
        "Lscala/collection/CustomParallelizable",
        "<",
        "Lscala/Tuple2",
        "<TA;TB;>;",
        "Ljava/lang/Object",
        "<TA;TB;>;>;",
        "Lscala/collection/mutable/HashTable",
        "<TA;",
        "Lscala/collection/mutable/DefaultEntry",
        "<TA;TB;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private transient _loadFactor:I

.field private transient seedvalue:I

.field private transient sizemap:[I

.field private transient table:[Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/HashEntry",
            "<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/HashEntry;",
            ">;"
        }
    .end annotation
.end field

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
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lscala/collection/mutable/HashMap;-><init>(Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/mutable/HashTable$Contents;)V
    .locals 0
    .param p1, "contents"    # Lscala/collection/mutable/HashTable$Contents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashTable$Contents",
            "<TA;",
            "Lscala/collection/mutable/DefaultEntry",
            "<TA;TB;>;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->$init$(Lscala/collection/mutable/HashTable$HashUtils;)V

    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->$init$(Lscala/collection/mutable/HashTable;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->initWithContents(Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashMap;
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/HashMap;
    .locals 3
    .param p1, "kv"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<TA;TB;>;)",
            "Lscala/collection/mutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lscala/collection/mutable/HashMap;->findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/DefaultEntry;

    .line 91
    .local v0, "e":Lscala/collection/mutable/DefaultEntry;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/DefaultEntry;->value_$eq(Ljava/lang/Object;)V

    .line 92
    :cond_0
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public _loadFactor()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lscala/collection/mutable/HashMap;->_loadFactor:I

    return v0
.end method

.method public _loadFactor_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 40
    iput p1, p0, Lscala/collection/mutable/HashMap;->_loadFactor:I

    return-void
.end method

.method public alwaysInitSizeMap()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->alwaysInitSizeMap(Lscala/collection/mutable/HashTable;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/DefaultEntry;

    .line 65
    .local v0, "result":Lscala/collection/mutable/DefaultEntry;
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->default(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    .line 66
    :cond_0
    invoke-virtual {v0}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public calcSizeMapSize(I)I
    .locals 1
    .param p1, "tableLength"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->calcSizeMapSize(Lscala/collection/mutable/HashTable;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/mutable/DefaultEntry",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lscala/collection/mutable/DefaultEntry;

    invoke-direct {v0, p1, p2}, Lscala/collection/mutable/DefaultEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/HashMap;->createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/DefaultEntry;

    move-result-object v0

    return-object v0
.end method

.method public elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)Z"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->elemEquals(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$HashUtils$class;->elemHashCode(Lscala/collection/mutable/HashTable$HashUtils;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->empty()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lscala/collection/mutable/HashMap$;->MODULE$:Lscala/collection/mutable/HashMap$;

    invoke-virtual {v0}, Lscala/collection/mutable/HashMap$;->empty()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->empty()Lscala/collection/mutable/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public entriesIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/collection/mutable/DefaultEntry",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->entriesIterator(Lscala/collection/mutable/HashTable;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->findEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    return-object v0
.end method

.method public findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$class;->findOrAddEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    return-object v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 1
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
    .line 99
    new-instance v0, Lscala/collection/mutable/HashMap$$anonfun$foreach$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/HashMap$$anonfun$foreach$1;-><init>(Lscala/collection/mutable/HashMap;Lscala/Function1;)V

    invoke-virtual {p0, v0}, Lscala/collection/mutable/HashMap;->foreachEntry(Lscala/Function1;)V

    return-void
.end method

.method public foreachEntry(Lscala/Function1;)V
    .locals 0
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<",
            "Lscala/collection/mutable/DefaultEntry",
            "<TA;TB;>;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->foreachEntry(Lscala/collection/mutable/HashTable;Lscala/Function1;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lscala/collection/mutable/HashMap;->findEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/DefaultEntry;

    .line 71
    .local v0, "e":Lscala/collection/mutable/DefaultEntry;
    if-nez v0, :cond_0

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    .line 69
    :goto_0
    return-object v1

    .line 72
    :cond_0
    new-instance v1, Lscala/Some;

    invoke-virtual {v0}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v2}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final improve(II)I
    .locals 1
    .param p1, "hcode"    # I
    .param p2, "seed"    # I

    .prologue
    .line 40
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/HashTable$HashUtils$class;->improve(Lscala/collection/mutable/HashTable$HashUtils;II)I

    move-result v0

    return v0
.end method

.method public final index(I)I
    .locals 1
    .param p1, "hcode"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->index(Lscala/collection/mutable/HashTable;I)I

    move-result v0

    return v0
.end method

.method public initWithContents(Lscala/collection/mutable/HashTable$Contents;)V
    .locals 0
    .param p1, "c"    # Lscala/collection/mutable/HashTable$Contents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashTable$Contents",
            "<TA;",
            "Lscala/collection/mutable/DefaultEntry",
            "<TA;TB;>;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->initWithContents(Lscala/collection/mutable/HashTable;Lscala/collection/mutable/HashTable$Contents;)V

    return-void
.end method

.method public initialSize()I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->initialSize(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 2
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
    .line 97
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->entriesIterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/HashMap$$anonfun$iterator$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/HashMap$$anonfun$iterator$1;-><init>(Lscala/collection/mutable/HashMap;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public nnSizeMapAdd(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapAdd(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapRemove(I)V
    .locals 0
    .param p1, "h"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapRemove(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public nnSizeMapReset(I)V
    .locals 0
    .param p1, "tableLength"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->nnSizeMapReset(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/HashMap;->findOrAddEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/DefaultEntry;

    .line 77
    .local v0, "e":Lscala/collection/mutable/DefaultEntry;
    if-nez v0, :cond_0

    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    .line 75
    :goto_0
    return-object v2

    .line 78
    :cond_0
    invoke-virtual {v0}, Lscala/collection/mutable/DefaultEntry;->value()Ljava/lang/Object;

    move-result-object v1

    .local v1, "v":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lscala/collection/mutable/DefaultEntry;->value_$eq(Ljava/lang/Object;)V

    new-instance v2, Lscala/Some;

    invoke-direct {v2, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeEntry(Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->removeEntry(Lscala/collection/mutable/HashTable;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public seedvalue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lscala/collection/mutable/HashMap;->seedvalue:I

    return v0
.end method

.method public seedvalue_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 40
    iput p1, p0, Lscala/collection/mutable/HashMap;->seedvalue:I

    return-void
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->tableSize()I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketBitSize()I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketBitSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public final sizeMapBucketSize()I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$HashUtils$class;->sizeMapBucketSize(Lscala/collection/mutable/HashTable$HashUtils;)I

    move-result v0

    return v0
.end method

.method public sizeMapInit(I)V
    .locals 0
    .param p1, "tableLength"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lscala/collection/mutable/HashTable$class;->sizeMapInit(Lscala/collection/mutable/HashTable;I)V

    return-void
.end method

.method public sizeMapInitAndRebuild()V
    .locals 0

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->sizeMapInitAndRebuild(Lscala/collection/mutable/HashTable;)V

    return-void
.end method

.method public sizemap()[I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lscala/collection/mutable/HashMap;->sizemap:[I

    return-object v0
.end method

.method public sizemap_$eq([I)V
    .locals 0
    .param p1, "x$1"    # [I

    .prologue
    .line 40
    iput-object p1, p0, Lscala/collection/mutable/HashMap;->sizemap:[I

    return-void
.end method

.method public table()[Lscala/collection/mutable/HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/HashEntry",
            "<TA;",
            "Lscala/collection/mutable/DefaultEntry",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lscala/collection/mutable/HashMap;->table:[Lscala/collection/mutable/HashEntry;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lscala/collection/mutable/HashMap;->tableSize:I

    return v0
.end method

.method public tableSizeSeed()I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->tableSizeSeed(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public tableSize_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 40
    iput p1, p0, Lscala/collection/mutable/HashMap;->tableSize:I

    return-void
.end method

.method public table_$eq([Lscala/collection/mutable/HashEntry;)V
    .locals 0
    .param p1, "x$1"    # [Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/mutable/HashEntry",
            "<TA;",
            "Lscala/collection/mutable/DefaultEntry",
            "<TA;TB;>;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p1, p0, Lscala/collection/mutable/HashMap;->table:[Lscala/collection/mutable/HashEntry;

    return-void
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lscala/collection/mutable/HashMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public threshold()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lscala/collection/mutable/HashMap;->threshold:I

    return v0
.end method

.method public threshold_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 40
    iput p1, p0, Lscala/collection/mutable/HashMap;->threshold:I

    return-void
.end method

.method public final totalSizeMapBuckets()I
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lscala/collection/mutable/HashTable$class;->totalSizeMapBuckets(Lscala/collection/mutable/HashTable;)I

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    return-void
.end method
