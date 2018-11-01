.class public Lscala/collection/mutable/ArrayBuilder$ofLong;
.super Lscala/collection/mutable/ArrayBuilder;
.source "ArrayBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofLong"
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

.field private elems:[J

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 381
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder;-><init>()V

    .line 384
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofLong;->capacity:I

    .line 385
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofLong;->size:I

    return-void
.end method

.method private capacity()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofLong;->capacity:I

    return v0
.end method

.method private capacity_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 384
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofLong;->capacity:I

    return-void
.end method

.method private elems()[J
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuilder$ofLong;->elems:[J

    return-object v0
.end method

.method private elems_$eq([J)V
    .locals 0
    .param p1, "x$1"    # [J

    .prologue
    .line 383
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuilder$ofLong;->elems:[J

    return-void
.end method

.method private ensureSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 403
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->capacity()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->capacity()I

    move-result v1

    if-nez v1, :cond_3

    .line 404
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->capacity()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x10

    .line 405
    .local v0, "newsize":I
    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 404
    .end local v0    # "newsize":I
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->capacity()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 406
    .restart local v0    # "newsize":I
    :cond_2
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->resize(I)V

    .line 403
    .end local v0    # "newsize":I
    :cond_3
    return-void
.end method

.method private mkArray(I)[J
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 388
    new-array v3, p1, [J

    .line 389
    .local v3, "newelems":[J
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->elems()[J

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    :cond_0
    return-object v3
.end method

.method private resize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 394
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofLong;->mkArray(I)[J

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->elems_$eq([J)V

    .line 395
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofLong;->capacity_$eq(I)V

    return-void
.end method

.method private size()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofLong;->size:I

    return v0
.end method

.method private size_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 385
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofLong;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 381
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/ArrayBuilder$ofLong;->$plus$eq(J)Lscala/collection/mutable/ArrayBuilder$ofLong;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(J)Lscala/collection/mutable/ArrayBuilder$ofLong;
    .locals 3
    .param p1, "elem"    # J

    .prologue
    .line 411
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->ensureSize(I)V

    .line 412
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->elems()[J

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v1

    aput-wide p1, v0, v1

    .line 413
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size_$eq(I)V

    .line 414
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 2
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 381
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/mutable/ArrayBuilder$ofLong;->$plus$eq(J)Lscala/collection/mutable/ArrayBuilder$ofLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofLong;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofLong;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofLong;
    .locals 6
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/ArrayBuilder$ofLong;"
        }
    .end annotation

    .prologue
    .line 418
    instance-of v0, p1, Lscala/collection/mutable/WrappedArray$ofLong;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/WrappedArray$ofLong;

    .line 419
    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofLong;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->ensureSize(I)V

    .line 420
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofLong;->array()[J

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->elems()[J

    move-result-object v3

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v4

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofLong;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofLong;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size_$eq(I)V

    .line 417
    .end local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofLong;
    :goto_0
    return-object p0

    .line 424
    .restart local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofLong;
    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuilder$ofLong;

    move-object p0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 437
    instance-of v1, p1, Lscala/collection/mutable/ArrayBuilder$ofLong;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofLong;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->elems()[J

    move-result-object v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofLong;->elems()[J

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 436
    :cond_0
    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->result()[J

    move-result-object v0

    return-object v0
.end method

.method public result()[J
    .locals 2

    .prologue
    .line 432
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->capacity()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->elems()[J

    move-result-object v0

    :goto_0
    return-object v0

    .line 433
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->mkArray(I)[J

    move-result-object v0

    goto :goto_0
.end method

.method public sizeHint(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 399
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofLong;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofLong;->resize(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    const-string v0, "ArrayBuilder.ofLong"

    return-object v0
.end method
