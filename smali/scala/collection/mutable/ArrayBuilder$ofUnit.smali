.class public Lscala/collection/mutable/ArrayBuilder$ofUnit;
.super Lscala/collection/mutable/ArrayBuilder;
.source "ArrayBuilder.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ofUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/ArrayBuilder",
        "<",
        "Lscala/runtime/BoxedUnit;",
        ">;"
    }
.end annotation


# instance fields
.field private capacity:I

.field private elems:[Lscala/runtime/BoxedUnit;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 640
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder;-><init>()V

    .line 643
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofUnit;->capacity:I

    .line 644
    iput v0, p0, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size:I

    return-void
.end method

.method private capacity()I
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofUnit;->capacity:I

    return v0
.end method

.method private capacity_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 643
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofUnit;->capacity:I

    return-void
.end method

.method private elems()[Lscala/runtime/BoxedUnit;
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lscala/collection/mutable/ArrayBuilder$ofUnit;->elems:[Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method private elems_$eq([Lscala/runtime/BoxedUnit;)V
    .locals 0
    .param p1, "x$1"    # [Lscala/runtime/BoxedUnit;

    .prologue
    .line 642
    iput-object p1, p0, Lscala/collection/mutable/ArrayBuilder$ofUnit;->elems:[Lscala/runtime/BoxedUnit;

    return-void
.end method

.method private ensureSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 662
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->capacity()I

    move-result v1

    if-lt v1, p1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->capacity()I

    move-result v1

    if-nez v1, :cond_3

    .line 663
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->capacity()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x10

    .line 664
    .local v0, "newsize":I
    :goto_0
    if-ge v0, p1, :cond_2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 663
    .end local v0    # "newsize":I
    :cond_1
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->capacity()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 665
    .restart local v0    # "newsize":I
    :cond_2
    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->resize(I)V

    .line 662
    .end local v0    # "newsize":I
    :cond_3
    return-void
.end method

.method private mkArray(I)[Lscala/runtime/BoxedUnit;
    .locals 6
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 647
    new-array v3, p1, [Lscala/runtime/BoxedUnit;

    .line 648
    .local v3, "newelems":[Lscala/runtime/BoxedUnit;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->elems()[Lscala/runtime/BoxedUnit;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    :cond_0
    return-object v3
.end method

.method private resize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 653
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->mkArray(I)[Lscala/runtime/BoxedUnit;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->elems_$eq([Lscala/runtime/BoxedUnit;)V

    .line 654
    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->capacity_$eq(I)V

    return-void
.end method

.method private size()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size:I

    return v0
.end method

.method private size_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 644
    iput p1, p0, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 640
    check-cast p1, Lscala/runtime/BoxedUnit;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->$plus$eq(Lscala/runtime/BoxedUnit;)Lscala/collection/mutable/ArrayBuilder$ofUnit;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Lscala/runtime/BoxedUnit;)Lscala/collection/mutable/ArrayBuilder$ofUnit;
    .locals 2
    .param p1, "elem"    # Lscala/runtime/BoxedUnit;

    .prologue
    .line 670
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->ensureSize(I)V

    .line 671
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->elems()[Lscala/runtime/BoxedUnit;

    move-result-object v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v1

    aput-object p1, v0, v1

    .line 672
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size_$eq(I)V

    .line 673
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 640
    check-cast p1, Lscala/runtime/BoxedUnit;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->$plus$eq(Lscala/runtime/BoxedUnit;)Lscala/collection/mutable/ArrayBuilder$ofUnit;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 640
    invoke-virtual {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofUnit;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuilder$ofUnit;
    .locals 6
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;)",
            "Lscala/collection/mutable/ArrayBuilder$ofUnit;"
        }
    .end annotation

    .prologue
    .line 677
    instance-of v0, p1, Lscala/collection/mutable/WrappedArray$ofUnit;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/collection/mutable/WrappedArray$ofUnit;

    .line 678
    .end local p1    # "xs":Lscala/collection/TraversableOnce;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofUnit;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->ensureSize(I)V

    .line 679
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofUnit;->array()[Lscala/runtime/BoxedUnit;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->elems()[Lscala/runtime/BoxedUnit;

    move-result-object v3

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v4

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofUnit;->length()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 680
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/mutable/WrappedArray$ofUnit;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size_$eq(I)V

    .line 676
    .end local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofUnit;
    :goto_0
    return-object p0

    .line 683
    .restart local p0    # "this":Lscala/collection/mutable/ArrayBuilder$ofUnit;
    .restart local p1    # "xs":Lscala/collection/TraversableOnce;
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuilder$ofUnit;

    move-object p0, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 696
    instance-of v1, p1, Lscala/collection/mutable/ArrayBuilder$ofUnit;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/collection/mutable/ArrayBuilder$ofUnit;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->elems()[Lscala/runtime/BoxedUnit;

    move-result-object v1

    invoke-direct {p1}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->elems()[Lscala/runtime/BoxedUnit;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 695
    :cond_0
    return v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 640
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->result()[Lscala/runtime/BoxedUnit;

    move-result-object v0

    return-object v0
.end method

.method public result()[Lscala/runtime/BoxedUnit;
    .locals 2

    .prologue
    .line 691
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->capacity()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->capacity()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->elems()[Lscala/runtime/BoxedUnit;

    move-result-object v0

    :goto_0
    return-object v0

    .line 692
    :cond_0
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->mkArray(I)[Lscala/runtime/BoxedUnit;

    move-result-object v0

    goto :goto_0
.end method

.method public sizeHint(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 658
    invoke-direct {p0}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-direct {p0, p1}, Lscala/collection/mutable/ArrayBuilder$ofUnit;->resize(I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    const-string v0, "ArrayBuilder.ofUnit"

    return-object v0
.end method
