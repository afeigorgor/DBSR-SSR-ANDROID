.class public Lscala/collection/mutable/ArrayBuffer;
.super Lscala/collection/mutable/AbstractBuffer;
.source "ArrayBuffer.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/collection/mutable/Builder;
.implements Lscala/collection/mutable/ResizableArray;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractBuffer",
        "<TA;>;",
        "Lscala/Serializable;",
        "Lscala/collection/CustomParallelizable",
        "<TA;",
        "Ljava/lang/Object",
        "<TA;>;>;",
        "Lscala/collection/mutable/Builder",
        "<TA;",
        "Lscala/collection/mutable/ArrayBuffer",
        "<TA;>;>;",
        "Lscala/collection/mutable/ResizableArray",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private final initialSize:I

.field private size0:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "initialSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 48
    iput p1, p0, Lscala/collection/mutable/ArrayBuffer;->initialSize:I

    .line 49
    invoke-direct {p0}, Lscala/collection/mutable/AbstractBuffer;-><init>()V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->$init$(Lscala/collection/mutable/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->$init$(Lscala/collection/IndexedSeqOptimized;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->$init$(Lscala/collection/mutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/ResizableArray$class;->$init$(Lscala/collection/mutable/ResizableArray;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/ArrayBuffer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuffer;->ensureSize(I)V

    .line 85
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v1

    aput-object p1, v0, v1

    .line 86
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuffer;->size0_$eq(I)V

    .line 87
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;
    .locals 3
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)",
            "Lscala/collection/mutable/ArrayBuffer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 97
    instance-of v1, p1, Lscala/collection/IndexedSeqLike;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/collection/IndexedSeqLike;

    .line 98
    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    invoke-interface {p1}, Lscala/collection/IndexedSeqLike;->length()I

    move-result v0

    .line 99
    .local v0, "n":I
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lscala/collection/mutable/ArrayBuffer;->ensureSize(I)V

    .line 100
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v2

    invoke-interface {p1, v1, v2, v0}, Lscala/collection/IndexedSeqLike;->copyToArray(Ljava/lang/Object;II)V

    .line 101
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lscala/collection/mutable/ArrayBuffer;->size0_$eq(I)V

    .line 96
    .end local v0    # "n":I
    .end local p0    # "this":Lscala/collection/mutable/ArrayBuffer;
    :goto_0
    return-object p0

    .line 104
    .restart local p0    # "this":Lscala/collection/mutable/ArrayBuffer;
    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/ArrayBuffer;

    move-object p0, v1

    goto :goto_0
.end method

.method public $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;
    .locals 2
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)",
            "Lscala/collection/mutable/ArrayBuffer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-interface {p1}, Lscala/collection/TraversableOnce;->toTraversable()Lscala/collection/Traversable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/ArrayBuffer;->insertAll(ILscala/collection/Traversable;)V

    return-object p0
.end method

.method public bridge synthetic $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/ResizableArray$class;->apply(Lscala/collection/mutable/ResizableArray;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public array()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuffer;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public array_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 48
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuffer;->array:[Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuffer;->reduceToSize(I)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->clone()Lscala/collection/mutable/Buffer;

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
            "Lscala/collection/mutable/ArrayBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    return-object v0
.end method

.method public copy(III)V
    .locals 0
    .param p1, "m"    # I
    .param p2, "n"    # I
    .param p3, "len"    # I

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/ResizableArray$class;->copy(Lscala/collection/mutable/ResizableArray;III)V

    return-void
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/ResizableArray$class;->copyToArray(Lscala/collection/mutable/ResizableArray;Ljava/lang/Object;II)V

    return-void
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->drop(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ensureSize(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/ResizableArray$class;->ensureSize(Lscala/collection/mutable/ResizableArray;I)V

    return-void
.end method

.method public exists(Lscala/Function1;)Z
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->exists(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2",
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldLeft(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forall(Lscala/Function1;)Z
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->forall(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result v0

    return v0
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
    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/ResizableArray$class;->foreach(Lscala/collection/mutable/ResizableArray;Lscala/Function1;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->head(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public initialSize()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lscala/collection/mutable/ArrayBuffer;->initialSize:I

    return v0
.end method

.method public insertAll(ILscala/collection/Traversable;)V
    .locals 4
    .param p1, "n"    # I
    .param p2, "seq"    # Lscala/collection/Traversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Traversable",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v2

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_1
    invoke-interface {p2}, Lscala/collection/Traversable;->size()I

    move-result v0

    .line 141
    .local v0, "len":I
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v2

    add-int v1, v2, v0

    .line 142
    .local v1, "newSize":I
    invoke-virtual {p0, v1}, Lscala/collection/mutable/ArrayBuffer;->ensureSize(I)V

    .line 144
    add-int v2, p1, v0

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {p0, p1, v2, v3}, Lscala/collection/mutable/ArrayBuffer;->copy(III)V

    .line 145
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2, p1}, Lscala/collection/Traversable;->copyToArray(Ljava/lang/Object;I)V

    .line 146
    invoke-virtual {p0, v1}, Lscala/collection/mutable/ArrayBuffer;->size0_$eq(I)V

    return-void
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuffer;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->isEmpty(Lscala/collection/IndexedSeqOptimized;)Z

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
    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/mutable/ResizableArray$class;->length(Lscala/collection/mutable/ResizableArray;)I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I

    move-result v0

    return v0
.end method

.method public mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NewTo:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<",
            "Lscala/collection/mutable/ArrayBuffer",
            "<TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder",
            "<TA;TNewTo;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceToSize(I)V
    .locals 0
    .param p1, "sz"    # I

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/ResizableArray$class;->reduceToSize(Lscala/collection/mutable/ResizableArray;I)V

    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, "result":Ljava/lang/Object;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lscala/collection/mutable/ArrayBuffer;->remove(II)V

    .line 171
    return-object v0
.end method

.method public remove(II)V
    .locals 3
    .param p1, "n"    # I
    .param p2, "count"    # I

    .prologue
    .line 157
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    if-ltz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 158
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v0

    sub-int/2addr v0, p2

    if-le p1, v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_2
    add-int v0, p1, p2

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v1

    add-int v2, p1, p2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, p1, v1}, Lscala/collection/mutable/ArrayBuffer;->copy(III)V

    .line 160
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuffer;->reduceToSize(I)V

    return-void

    .line 157
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "requirement failed: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, "removing negative number of elements"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->result()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/ArrayBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuffer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 174
    return-object p0
.end method

.method public reverse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverse(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverseIterator(Lscala/collection/IndexedSeqOptimized;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable",
            "<TB;>;)Z"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "op"    # Lscala/Function2;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->seq(Lscala/collection/mutable/IndexedSeq;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Seq;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public size0()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lscala/collection/mutable/ArrayBuffer;->size0:I

    return v0
.end method

.method public size0_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 48
    iput p1, p0, Lscala/collection/mutable/ArrayBuffer;->size0:I

    return-void
.end method

.method public sizeHint(I)V
    .locals 4
    .param p1, "len"    # I

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size()I

    move-result v1

    if-le p1, v1, :cond_0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    .line 69
    new-array v0, p1, [Ljava/lang/Object;

    .line 70
    .local v0, "newarray":[Ljava/lang/Object;
    sget-object v1, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->array()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->size0()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuffer;->array_$eq([Ljava/lang/Object;)V

    .line 68
    .end local v0    # "newarray":[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;)V
    .locals 0
    .param p1, "coll"    # Lscala/collection/TraversableLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;)V

    return-void
.end method

.method public sizeHint(Lscala/collection/TraversableLike;I)V
    .locals 0
    .param p1, "coll"    # Lscala/collection/TraversableLike;
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<**>;I)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V

    return-void
.end method

.method public sizeHintBounded(ILscala/collection/TraversableLike;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "boundingColl"    # Lscala/collection/TraversableLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->slice(Lscala/collection/IndexedSeqOptimized;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string v0, "ArrayBuffer"

    return-object v0
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuffer;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->thisCollection(Lscala/collection/mutable/IndexedSeqLike;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer",
            "<TA1;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuffer;->toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/mutable/IndexedSeqLike$class;->toCollection(Lscala/collection/mutable/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public update(ILjava/lang/Object;)V
    .locals 0
    .param p1, "idx"    # I
    .param p2, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/ResizableArray$class;->update(Lscala/collection/mutable/ResizableArray;ILjava/lang/Object;)V

    return-void
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable",
            "<TB;>;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/mutable/ArrayBuffer",
            "<TA;>;",
            "Lscala/Tuple2",
            "<TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->zip(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/mutable/ArrayBuffer",
            "<TA;>;",
            "Lscala/Tuple2",
            "<TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
