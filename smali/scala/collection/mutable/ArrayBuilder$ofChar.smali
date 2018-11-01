.class public Lscala/collection/mutable/ArrayBuilder$ofChar;
.super Lscala/collection/mutable/ArrayBuilder;
.source "ArrayBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofChar"
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

.field private elems:[C

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder;-><init>()V

    .line 254
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofChar;->capacity:I

    .line 255
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofChar;->size:I

    return-void
.end method

.method private capacity()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofChar;->capacity:I

    return v0
.end method

.method private capacity_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 254
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofChar;->capacity:I

    return-void
.end method

.method private elems()[C
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuilder$ofChar;->elems:[C

    return-object v0
.end method

.method private elems_$eq([C)V
    .locals 0
    .param p1, "x$1"    # [C

    .prologue
    .line 253
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuilder$ofChar;->elems:[C

    return-void
.end method

.method private ensureSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 273
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->capacity()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->capacity()I

    move-result v1

    if-nez v1, :cond_3

    .line 274
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->capacity()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x10

    .line 275
    .local v0, "newsize":I
    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 274
    .end local v0    # "newsize":I
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->capacity()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 276
    .restart local v0    # "newsize":I
    :cond_2
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->resize(I)V

    .line 273
    .end local v0    # "newsize":I
    :cond_3
    return-void
.end method

.method private mkArray(I)[C
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 258
    new-array v3, p1, [C

    .line 259
    .local v3, "newelems":[C
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->elems()[C

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    :cond_0
    return-object v3
.end method

.method private resize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofChar;->mkArray(I)[C

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->elems_$eq([C)V

    .line 265
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofChar;->capacity_$eq(I)V

    return-void
.end method

.method private size()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofChar;->size:I

    return v0
.end method

.method private size_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 255
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofChar;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 251
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->$plus$eq(C)Lscala/collection/mutable/ArrayBuilder$ofChar;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(C)Lscala/collection/mutable/ArrayBuilder$ofChar;
    .locals 2
    .param p1, "elem"    # C

    .prologue
    .line 281
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->ensureSize(I)V

    .line 282
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->elems()[C

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v1

    aput-char p1, v0, v1

    .line 283
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size_$eq(I)V

    .line 284
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 251
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->$plus$eq(C)Lscala/collection/mutable/ArrayBuilder$ofChar;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofChar;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofChar;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofChar;
    .locals 6
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/ArrayBuilder$ofChar;"
        }
    .end annotation

    .prologue
    .line 288
    instance-of v0, p1, Lscala/collection/mutable/WrappedArray$ofChar;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/WrappedArray$ofChar;

    .line 289
    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofChar;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->ensureSize(I)V

    .line 290
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofChar;->array()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->elems()[C

    move-result-object v3

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v4

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofChar;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofChar;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size_$eq(I)V

    .line 287
    .end local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofChar;
    :goto_0
    return-object p0

    .line 294
    .restart local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofChar;
    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuilder$ofChar;

    move-object p0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 307
    instance-of v1, p1, Lscala/collection/mutable/ArrayBuilder$ofChar;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofChar;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->elems()[C

    move-result-object v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofChar;->elems()[C

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 306
    :cond_0
    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->result()[C

    move-result-object v0

    return-object v0
.end method

.method public result()[C
    .locals 2

    .prologue
    .line 302
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->capacity()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->elems()[C

    move-result-object v0

    :goto_0
    return-object v0

    .line 303
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->mkArray(I)[C

    move-result-object v0

    goto :goto_0
.end method

.method public sizeHint(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 269
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofChar;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofChar;->resize(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    const-string v0, "ArrayBuilder.ofChar"

    return-object v0
.end method
