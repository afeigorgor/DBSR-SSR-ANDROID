.class public Lscala/collection/mutable/ArrayBuilder$ofShort;
.super Lscala/collection/mutable/ArrayBuilder;
.source "ArrayBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofShort"
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

.field private elems:[S

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder;-><init>()V

    .line 189
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofShort;->capacity:I

    .line 190
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofShort;->size:I

    return-void
.end method

.method private capacity()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofShort;->capacity:I

    return v0
.end method

.method private capacity_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 189
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofShort;->capacity:I

    return-void
.end method

.method private elems()[S
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuilder$ofShort;->elems:[S

    return-object v0
.end method

.method private elems_$eq([S)V
    .locals 0
    .param p1, "x$1"    # [S

    .prologue
    .line 188
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuilder$ofShort;->elems:[S

    return-void
.end method

.method private ensureSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 208
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->capacity()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->capacity()I

    move-result v1

    if-nez v1, :cond_3

    .line 209
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->capacity()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x10

    .line 210
    .local v0, "newsize":I
    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 209
    .end local v0    # "newsize":I
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->capacity()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 211
    .restart local v0    # "newsize":I
    :cond_2
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->resize(I)V

    .line 208
    .end local v0    # "newsize":I
    :cond_3
    return-void
.end method

.method private mkArray(I)[S
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 193
    new-array v3, p1, [S

    .line 194
    .local v3, "newelems":[S
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->elems()[S

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    :cond_0
    return-object v3
.end method

.method private resize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofShort;->mkArray(I)[S

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->elems_$eq([S)V

    .line 200
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofShort;->capacity_$eq(I)V

    return-void
.end method

.method private size()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofShort;->size:I

    return v0
.end method

.method private size_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 190
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofShort;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 186
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->$plus$eq(S)Lscala/collection/mutable/ArrayBuilder$ofShort;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(S)Lscala/collection/mutable/ArrayBuilder$ofShort;
    .locals 2
    .param p1, "elem"    # S

    .prologue
    .line 216
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->ensureSize(I)V

    .line 217
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->elems()[S

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v1

    aput-short p1, v0, v1

    .line 218
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size_$eq(I)V

    .line 219
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 186
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->$plus$eq(S)Lscala/collection/mutable/ArrayBuilder$ofShort;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofShort;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofShort;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofShort;
    .locals 6
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/ArrayBuilder$ofShort;"
        }
    .end annotation

    .prologue
    .line 223
    instance-of v0, p1, Lscala/collection/mutable/WrappedArray$ofShort;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/WrappedArray$ofShort;

    .line 224
    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofShort;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->ensureSize(I)V

    .line 225
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofShort;->array()[S

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->elems()[S

    move-result-object v3

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v4

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofShort;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofShort;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size_$eq(I)V

    .line 222
    .end local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofShort;
    :goto_0
    return-object p0

    .line 229
    .restart local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofShort;
    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuilder$ofShort;

    move-object p0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 242
    instance-of v1, p1, Lscala/collection/mutable/ArrayBuilder$ofShort;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofShort;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->elems()[S

    move-result-object v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofShort;->elems()[S

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 241
    :cond_0
    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->result()[S

    move-result-object v0

    return-object v0
.end method

.method public result()[S
    .locals 2

    .prologue
    .line 237
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->capacity()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->elems()[S

    move-result-object v0

    :goto_0
    return-object v0

    .line 238
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->mkArray(I)[S

    move-result-object v0

    goto :goto_0
.end method

.method public sizeHint(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 204
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofShort;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofShort;->resize(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string v0, "ArrayBuilder.ofShort"

    return-object v0
.end method
