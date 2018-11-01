.class public Lscala/collection/mutable/ArrayBuilder$ofByte;
.super Lscala/collection/mutable/ArrayBuilder;
.source "ArrayBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofByte"
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

.field private elems:[B

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder;-><init>()V

    .line 124
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofByte;->capacity:I

    .line 125
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofByte;->size:I

    return-void
.end method

.method private capacity()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofByte;->capacity:I

    return v0
.end method

.method private capacity_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 124
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofByte;->capacity:I

    return-void
.end method

.method private elems()[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuilder$ofByte;->elems:[B

    return-object v0
.end method

.method private elems_$eq([B)V
    .locals 0
    .param p1, "x$1"    # [B

    .prologue
    .line 123
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuilder$ofByte;->elems:[B

    return-void
.end method

.method private ensureSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 143
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->capacity()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->capacity()I

    move-result v1

    if-nez v1, :cond_3

    .line 144
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->capacity()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x10

    .line 145
    .local v0, "newsize":I
    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 144
    .end local v0    # "newsize":I
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->capacity()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 146
    .restart local v0    # "newsize":I
    :cond_2
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->resize(I)V

    .line 143
    .end local v0    # "newsize":I
    :cond_3
    return-void
.end method

.method private mkArray(I)[B
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 128
    new-array v3, p1, [B

    .line 129
    .local v3, "newelems":[B
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->elems()[B

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    :cond_0
    return-object v3
.end method

.method private resize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofByte;->mkArray(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->elems_$eq([B)V

    .line 135
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofByte;->capacity_$eq(I)V

    return-void
.end method

.method private size()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofByte;->size:I

    return v0
.end method

.method private size_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 125
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofByte;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 121
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->$plus$eq(B)Lscala/collection/mutable/ArrayBuilder$ofByte;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(B)Lscala/collection/mutable/ArrayBuilder$ofByte;
    .locals 2
    .param p1, "elem"    # B

    .prologue
    .line 151
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->ensureSize(I)V

    .line 152
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->elems()[B

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v1

    aput-byte p1, v0, v1

    .line 153
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size_$eq(I)V

    .line 154
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 121
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->$plus$eq(B)Lscala/collection/mutable/ArrayBuilder$ofByte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofByte;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofByte;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofByte;
    .locals 6
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/mutable/ArrayBuilder$ofByte;"
        }
    .end annotation

    .prologue
    .line 158
    instance-of v0, p1, Lscala/collection/mutable/WrappedArray$ofByte;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/WrappedArray$ofByte;

    .line 159
    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofByte;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->ensureSize(I)V

    .line 160
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofByte;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->elems()[B

    move-result-object v3

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v4

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofByte;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofByte;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size_$eq(I)V

    .line 157
    .end local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofByte;
    :goto_0
    return-object p0

    .line 164
    .restart local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofByte;
    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuilder$ofByte;

    move-object p0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 177
    instance-of v1, p1, Lscala/collection/mutable/ArrayBuilder$ofByte;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofByte;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->elems()[B

    move-result-object v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofByte;->elems()[B

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 176
    :cond_0
    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->result()[B

    move-result-object v0

    return-object v0
.end method

.method public result()[B
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->capacity()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->elems()[B

    move-result-object v0

    :goto_0
    return-object v0

    .line 173
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->mkArray(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public sizeHint(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 139
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofByte;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofByte;->resize(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const-string v0, "ArrayBuilder.ofByte"

    return-object v0
.end method
