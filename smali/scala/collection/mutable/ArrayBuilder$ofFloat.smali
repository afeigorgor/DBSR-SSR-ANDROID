.class public Lscala/collection/mutable/ArrayBuilder$ofFloat;
.super Lscala/collection/mutable/ArrayBuilder;
.source "ArrayBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofFloat"
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

.field private elems:[F

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 446
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder;-><init>()V

    .line 449
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofFloat;->capacity:I

    .line 450
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size:I

    return-void
.end method

.method private capacity()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofFloat;->capacity:I

    return v0
.end method

.method private capacity_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 449
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofFloat;->capacity:I

    return-void
.end method

.method private elems()[F
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuilder$ofFloat;->elems:[F

    return-object v0
.end method

.method private elems_$eq([F)V
    .locals 0
    .param p1, "x$1"    # [F

    .prologue
    .line 448
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuilder$ofFloat;->elems:[F

    return-void
.end method

.method private ensureSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 468
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->capacity()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->capacity()I

    move-result v1

    if-nez v1, :cond_3

    .line 469
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->capacity()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x10

    .line 470
    .local v0, "newsize":I
    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 469
    .end local v0    # "newsize":I
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->capacity()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 471
    .restart local v0    # "newsize":I
    :cond_2
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->resize(I)V

    .line 468
    .end local v0    # "newsize":I
    :cond_3
    return-void
.end method

.method private mkArray(I)[F
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 453
    new-array v3, p1, [F

    .line 454
    .local v3, "newelems":[F
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->elems()[F

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    :cond_0
    return-object v3
.end method

.method private resize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 459
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->mkArray(I)[F

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->elems_$eq([F)V

    .line 460
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->capacity_$eq(I)V

    return-void
.end method

.method private size()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size:I

    return v0
.end method

.method private size_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 450
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 446
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->$plus$eq(F)Lscala/collection/mutable/ArrayBuilder$ofFloat;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(F)Lscala/collection/mutable/ArrayBuilder$ofFloat;
    .locals 2
    .param p1, "elem"    # F

    .prologue
    .line 476
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->ensureSize(I)V

    .line 477
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->elems()[F

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v1

    aput p1, v0, v1

    .line 478
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size_$eq(I)V

    .line 479
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 446
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->$plus$eq(F)Lscala/collection/mutable/ArrayBuilder$ofFloat;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofFloat;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofFloat;
    .locals 6
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/ArrayBuilder$ofFloat;"
        }
    .end annotation

    .prologue
    .line 483
    instance-of v0, p1, Lscala/collection/mutable/WrappedArray$ofFloat;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/WrappedArray$ofFloat;

    .line 484
    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofFloat;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->ensureSize(I)V

    .line 485
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofFloat;->array()[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->elems()[F

    move-result-object v3

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v4

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofFloat;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofFloat;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size_$eq(I)V

    .line 482
    .end local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofFloat;
    :goto_0
    return-object p0

    .line 489
    .restart local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofFloat;
    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuilder$ofFloat;

    move-object p0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 502
    instance-of v1, p1, Lscala/collection/mutable/ArrayBuilder$ofFloat;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofFloat;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->elems()[F

    move-result-object v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->elems()[F

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 501
    :cond_0
    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 446
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->result()[F

    move-result-object v0

    return-object v0
.end method

.method public result()[F
    .locals 2

    .prologue
    .line 497
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->capacity()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->elems()[F

    move-result-object v0

    :goto_0
    return-object v0

    .line 498
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->mkArray(I)[F

    move-result-object v0

    goto :goto_0
.end method

.method public sizeHint(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 464
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofFloat;->resize(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    const-string v0, "ArrayBuilder.ofFloat"

    return-object v0
.end method
