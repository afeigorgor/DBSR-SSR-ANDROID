.class public Lscala/collection/mutable/ArrayBuilder$ofDouble;
.super Lscala/collection/mutable/ArrayBuilder;
.source "ArrayBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/ArrayBuilder",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private elems:[D

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 511
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder;-><init>()V

    .line 514
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofDouble;->capacity:I

    .line 515
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size:I

    return-void
.end method

.method private capacity()I
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofDouble;->capacity:I

    return v0
.end method

.method private capacity_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 514
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofDouble;->capacity:I

    return-void
.end method

.method private elems()[D
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuilder$ofDouble;->elems:[D

    return-object v0
.end method

.method private elems_$eq([D)V
    .locals 0
    .param p1, "x$1"    # [D

    .prologue
    .line 513
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuilder$ofDouble;->elems:[D

    return-void
.end method

.method private ensureSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 533
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->capacity()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->capacity()I

    move-result v1

    if-nez v1, :cond_3

    .line 534
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->capacity()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x10

    .line 535
    .local v0, "newsize":I
    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 534
    .end local v0    # "newsize":I
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->capacity()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 536
    .restart local v0    # "newsize":I
    :cond_2
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->resize(I)V

    .line 533
    .end local v0    # "newsize":I
    :cond_3
    return-void
.end method

.method private mkArray(I)[D
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 518
    new-array v3, p1, [D

    .line 519
    .local v3, "newelems":[D
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->elems()[D

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 520
    :cond_0
    return-object v3
.end method

.method private resize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->mkArray(I)[D

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->elems_$eq([D)V

    .line 525
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->capacity_$eq(I)V

    return-void
.end method

.method private size()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size:I

    return v0
.end method

.method private size_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 515
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 511
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->$plus$eq(D)Lscala/collection/mutable/ArrayBuilder$ofDouble;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(D)Lscala/collection/mutable/ArrayBuilder$ofDouble;
    .locals 3
    .param p1, "elem"    # D

    .prologue
    .line 541
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->ensureSize(I)V

    .line 542
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->elems()[D

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v1

    aput-wide p1, v0, v1

    .line 543
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size_$eq(I)V

    .line 544
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 511
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->$plus$eq(D)Lscala/collection/mutable/ArrayBuilder$ofDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofDouble;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofDouble;
    .locals 6
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/ArrayBuilder$ofDouble;"
        }
    .end annotation

    .prologue
    .line 548
    instance-of v0, p1, Lscala/collection/mutable/WrappedArray$ofDouble;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/WrappedArray$ofDouble;

    .line 549
    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofDouble;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->ensureSize(I)V

    .line 550
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofDouble;->array()[D

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->elems()[D

    move-result-object v3

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v4

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofDouble;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofDouble;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size_$eq(I)V

    .line 547
    .end local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofDouble;
    :goto_0
    return-object p0

    .line 554
    .restart local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofDouble;
    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuilder$ofDouble;

    move-object p0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 567
    instance-of v1, p1, Lscala/collection/mutable/ArrayBuilder$ofDouble;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofDouble;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->elems()[D

    move-result-object v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->elems()[D

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 566
    :cond_0
    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 511
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->result()[D

    move-result-object v0

    return-object v0
.end method

.method public result()[D
    .locals 2

    .prologue
    .line 562
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->capacity()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->elems()[D

    move-result-object v0

    :goto_0
    return-object v0

    .line 563
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->mkArray(I)[D

    move-result-object v0

    goto :goto_0
.end method

.method public sizeHint(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 529
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofDouble;->resize(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 571
    const-string v0, "ArrayBuilder.ofDouble"

    return-object v0
.end method
