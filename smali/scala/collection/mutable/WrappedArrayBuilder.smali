.class public Lscala/collection/mutable/WrappedArrayBuilder;
.super Ljava/lang/Object;
.source "WrappedArrayBuilder.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder",
        "<TA;",
        "Lscala/collection/mutable/WrappedArray",
        "<TA;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private capacity:I

.field private elems:Lscala/collection/mutable/WrappedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/WrappedArray",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final manifest:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<TA;>;"
        }
    .end annotation
.end field

.field private size:I

.field private final tag:Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/reflect/ClassTag",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/reflect/ClassTag;)V
    .locals 1
    .param p1, "tag"    # Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/reflect/ClassTag",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 25
    iput-object p1, p0, Lscala/collection/mutable/WrappedArrayBuilder;->tag:Lscala/reflect/ClassTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 28
    iput-object p1, p0, Lscala/collection/mutable/WrappedArrayBuilder;->manifest:Lscala/reflect/ClassTag;

    .line 31
    iput v0, p0, Lscala/collection/mutable/WrappedArrayBuilder;->capacity:I

    .line 32
    iput v0, p0, Lscala/collection/mutable/WrappedArrayBuilder;->size:I

    return-void
.end method

.method private capacity()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lscala/collection/mutable/WrappedArrayBuilder;->capacity:I

    return v0
.end method

.method private capacity_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 31
    iput p1, p0, Lscala/collection/mutable/WrappedArrayBuilder;->capacity:I

    return-void
.end method

.method private elems()Lscala/collection/mutable/WrappedArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/WrappedArray",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lscala/collection/mutable/WrappedArrayBuilder;->elems:Lscala/collection/mutable/WrappedArray;

    return-object v0
.end method

.method private elems_$eq(Lscala/collection/mutable/WrappedArray;)V
    .locals 0
    .param p1, "x$1"    # Lscala/collection/mutable/WrappedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/WrappedArray",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lscala/collection/mutable/WrappedArrayBuilder;->elems:Lscala/collection/mutable/WrappedArray;

    return-void
.end method

.method private ensureSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->capacity()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 63
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->capacity()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x10

    .line 64
    .local v0, "newsize":I
    :goto_0
    if-ge v0, p1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 63
    .end local v0    # "newsize":I
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->capacity()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 65
    .restart local v0    # "newsize":I
    :cond_1
    invoke-direct {p0, v0}, Lscala/collection/mutable/WrappedArrayBuilder;->resize(I)V

    .line 62
    .end local v0    # "newsize":I
    :cond_2
    return-void
.end method

.method private mkArray(I)Lscala/collection/mutable/WrappedArray;
    .locals 8
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/mutable/WrappedArray",
            "<TA;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 35
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    iget-object v1, p0, Lscala/collection/mutable/WrappedArrayBuilder;->tag:Lscala/reflect/ClassTag;

    invoke-virtual {v0, v1}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v6

    .line 37
    .local v6, "runtimeClass":Ljava/lang/Class;
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_a

    if-eqz v6, :cond_b

    .line 38
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_c

    if-eqz v6, :cond_d

    .line 39
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_e

    if-eqz v6, :cond_f

    .line 40
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_10

    if-eqz v6, :cond_11

    .line 41
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_12

    if-eqz v6, :cond_13

    .line 42
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_14

    if-eqz v6, :cond_15

    .line 43
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_16

    if-eqz v6, :cond_17

    .line 44
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_18

    if-eqz v6, :cond_19

    .line 45
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-nez v0, :cond_1a

    if-eqz v6, :cond_1b

    .line 46
    :cond_8
    new-instance v1, Lscala/collection/mutable/WrappedArray$ofRef;

    iget-object v0, p0, Lscala/collection/mutable/WrappedArrayBuilder;->tag:Lscala/reflect/ClassTag;

    invoke-interface {v0, p1}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {v1, v0}, Lscala/collection/mutable/WrappedArray$ofRef;-><init>([Ljava/lang/Object;)V

    move-object v7, v1

    .line 48
    :goto_0
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->size()I

    move-result v0

    if-lez v0, :cond_9

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->elems()Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/WrappedArray;->array()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7}, Lscala/collection/mutable/WrappedArray;->array()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->size()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    :cond_9
    return-object v7

    .line 37
    :cond_a
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_b
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofByte;

    new-array v1, p1, [B

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArray$ofByte;-><init>([B)V

    move-object v7, v0

    goto :goto_0

    .line 38
    :cond_c
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_d
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofShort;

    new-array v1, p1, [S

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArray$ofShort;-><init>([S)V

    move-object v7, v0

    goto :goto_0

    .line 39
    :cond_e
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_f
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofChar;

    new-array v1, p1, [C

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArray$ofChar;-><init>([C)V

    move-object v7, v0

    goto :goto_0

    .line 40
    :cond_10
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_11
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofInt;

    new-array v1, p1, [I

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArray$ofInt;-><init>([I)V

    move-object v7, v0

    goto :goto_0

    .line 41
    :cond_12
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_13
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofLong;

    new-array v1, p1, [J

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArray$ofLong;-><init>([J)V

    move-object v7, v0

    goto :goto_0

    .line 42
    :cond_14
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_15
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofFloat;

    new-array v1, p1, [F

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArray$ofFloat;-><init>([F)V

    move-object v7, v0

    goto :goto_0

    .line 43
    :cond_16
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_17
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofDouble;

    new-array v1, p1, [D

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArray$ofDouble;-><init>([D)V

    move-object v7, v0

    goto/16 :goto_0

    .line 44
    :cond_18
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_19
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofBoolean;

    new-array v1, p1, [Z

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArray$ofBoolean;-><init>([Z)V

    move-object v7, v0

    goto/16 :goto_0

    .line 45
    :cond_1a
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1b
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofUnit;

    new-array v1, p1, [Lscala/runtime/BoxedUnit;

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArray$ofUnit;-><init>([Lscala/runtime/BoxedUnit;)V

    move-object v7, v0

    goto/16 :goto_0
.end method

.method private resize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lscala/collection/mutable/WrappedArrayBuilder;->mkArray(I)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/WrappedArrayBuilder;->elems_$eq(Lscala/collection/mutable/WrappedArray;)V

    .line 54
    invoke-direct {p0, p1}, Lscala/collection/mutable/WrappedArrayBuilder;->capacity_$eq(I)V

    return-void
.end method

.method private size()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lscala/collection/mutable/WrappedArrayBuilder;->size:I

    return v0
.end method

.method private size_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 32
    iput p1, p0, Lscala/collection/mutable/WrappedArrayBuilder;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArrayBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArrayBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArrayBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArrayBuilder;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArrayBuilder;
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/WrappedArrayBuilder",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/WrappedArrayBuilder;->ensureSize(I)V

    .line 71
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->elems()Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/WrappedArray;->update(ILjava/lang/Object;)V

    .line 72
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/WrappedArrayBuilder;->size_$eq(I)V

    .line 73
    return-object p0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)",
            "Lscala/collection/generic/Growable",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
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
            "Lscala/collection/mutable/WrappedArray",
            "<TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder",
            "<TA;TNewTo;>;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->result()Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/WrappedArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/WrappedArray",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->capacity()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->elems()Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/WrappedArrayBuilder;->mkArray(I)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public sizeHint(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArrayBuilder;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/WrappedArrayBuilder;->resize(I)V

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
    .line 25
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
    .line 25
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
    .line 25
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
