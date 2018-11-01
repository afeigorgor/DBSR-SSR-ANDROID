.class public Lscala/collection/mutable/ArrayBuilder$ofInt;
.super Lscala/collection/mutable/ArrayBuilder;
.source "ArrayBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofInt"
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

.field private elems:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 316
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder;-><init>()V

    .line 319
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity:I

    .line 320
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->size:I

    return-void
.end method

.method private capacity()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity:I

    return v0
.end method

.method private capacity_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 319
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity:I

    return-void
.end method

.method private elems()[I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems:[I

    return-object v0
.end method

.method private elems_$eq([I)V
    .locals 0
    .param p1, "x$1"    # [I

    .prologue
    .line 318
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems:[I

    return-void
.end method

.method private ensureSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 338
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v1

    if-nez v1, :cond_3

    .line 339
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x10

    .line 340
    .local v0, "newsize":I
    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 339
    .end local v0    # "newsize":I
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 341
    .restart local v0    # "newsize":I
    :cond_2
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->resize(I)V

    .line 338
    .end local v0    # "newsize":I
    :cond_3
    return-void
.end method

.method private mkArray(I)[I
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 323
    new-array v3, p1, [I

    .line 324
    .local v3, "newelems":[I
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    :cond_0
    return-object v3
.end method

.method private resize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->mkArray(I)[I

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems_$eq([I)V

    .line 330
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity_$eq(I)V

    return-void
.end method

.method private size()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->size:I

    return v0
.end method

.method private size_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 320
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofInt;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 316
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->$plus$eq(I)Lscala/collection/mutable/ArrayBuilder$ofInt;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(I)Lscala/collection/mutable/ArrayBuilder$ofInt;
    .locals 2
    .param p1, "elem"    # I

    .prologue
    .line 346
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->ensureSize(I)V

    .line 347
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v1

    aput p1, v0, v1

    .line 348
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size_$eq(I)V

    .line 349
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 316
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->$plus$eq(I)Lscala/collection/mutable/ArrayBuilder$ofInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofInt;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofInt;
    .locals 6
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/ArrayBuilder$ofInt;"
        }
    .end annotation

    .prologue
    .line 353
    instance-of v0, p1, Lscala/collection/mutable/WrappedArray$ofInt;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/WrappedArray$ofInt;

    .line 354
    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofInt;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->ensureSize(I)V

    .line 355
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofInt;->array()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object v3

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v4

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofInt;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofInt;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size_$eq(I)V

    .line 352
    .end local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofInt;
    :goto_0
    return-object p0

    .line 359
    .restart local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofInt;
    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuilder$ofInt;

    move-object p0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 372
    instance-of v1, p1, Lscala/collection/mutable/ArrayBuilder$ofInt;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofInt;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 371
    :cond_0
    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->result()[I

    move-result-object v0

    return-object v0
.end method

.method public result()[I
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->elems()[I

    move-result-object v0

    :goto_0
    return-object v0

    .line 368
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->mkArray(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public sizeHint(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 334
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofInt;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofInt;->resize(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    const-string v0, "ArrayBuilder.ofInt"

    return-object v0
.end method
