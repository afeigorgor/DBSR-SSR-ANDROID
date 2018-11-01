.class public final Lscala/collection/immutable/VectorBuilder;
.super Ljava/lang/Object;
.source "Vector.scala"

# interfaces
.implements Lscala/collection/immutable/VectorPointer;
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/immutable/VectorPointer",
        "<TA;>;",
        "Lscala/collection/mutable/Builder",
        "<TA;",
        "Lscala/collection/immutable/Vector",
        "<TA;>;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private blockIndex:I

.field private depth:I

.field private display0:[Ljava/lang/Object;

.field private display1:[Ljava/lang/Object;

.field private display2:[Ljava/lang/Object;

.field private display3:[Ljava/lang/Object;

.field private display4:[Ljava/lang/Object;

.field private display5:[Ljava/lang/Object;

.field private lo:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/immutable/VectorPointer$class;->$init$(Lscala/collection/immutable/VectorPointer;)V

    .line 713
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lscala/collection/immutable/VectorBuilder;->display0_$eq([Ljava/lang/Object;)V

    .line 714
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/immutable/VectorBuilder;->depth_$eq(I)V

    .line 716
    iput v1, p0, Lscala/collection/immutable/VectorBuilder;->blockIndex:I

    .line 717
    iput v1, p0, Lscala/collection/immutable/VectorBuilder;->lo:I

    return-void
.end method

.method private blockIndex()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lscala/collection/immutable/VectorBuilder;->blockIndex:I

    return v0
.end method

.method private blockIndex_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 716
    iput p1, p0, Lscala/collection/immutable/VectorBuilder;->blockIndex:I

    return-void
.end method

.method private lo()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lscala/collection/immutable/VectorBuilder;->lo:I

    return v0
.end method

.method private lo_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 717
    iput p1, p0, Lscala/collection/immutable/VectorBuilder;->lo:I

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lscala/collection/immutable/VectorBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/immutable/VectorBuilder;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/immutable/VectorBuilder;
    .locals 3
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/VectorBuilder",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 720
    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->lo()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/VectorBuilder;->display0()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 721
    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->blockIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x20

    .line 722
    .local v0, "newBlockIndex":I
    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->blockIndex()I

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/immutable/VectorBuilder;->gotoNextBlockStartWritable(II)V

    .line 723
    invoke-direct {p0, v0}, Lscala/collection/immutable/VectorBuilder;->blockIndex_$eq(I)V

    .line 724
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lscala/collection/immutable/VectorBuilder;->lo_$eq(I)V

    .line 726
    .end local v0    # "newBlockIndex":I
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/VectorBuilder;->display0()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->lo()I

    move-result v2

    aput-object p1, v1, v2

    .line 727
    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->lo()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lscala/collection/immutable/VectorBuilder;->lo_$eq(I)V

    .line 728
    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lscala/collection/immutable/VectorBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/immutable/VectorBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lscala/collection/immutable/VectorBuilder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/VectorBuilder;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/VectorBuilder;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)",
            "Lscala/collection/immutable/VectorBuilder",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 732
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/VectorBuilder;

    return-object v0
.end method

.method public final copyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 708
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->copyOf(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public depth()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lscala/collection/immutable/VectorBuilder;->depth:I

    return v0
.end method

.method public depth_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 708
    iput p1, p0, Lscala/collection/immutable/VectorBuilder;->depth:I

    return-void
.end method

.method public display0()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display0:[Ljava/lang/Object;

    return-object v0
.end method

.method public display0_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display0:[Ljava/lang/Object;

    return-void
.end method

.method public display1()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display1:[Ljava/lang/Object;

    return-object v0
.end method

.method public display1_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display1:[Ljava/lang/Object;

    return-void
.end method

.method public display2()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display2:[Ljava/lang/Object;

    return-object v0
.end method

.method public display2_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display2:[Ljava/lang/Object;

    return-void
.end method

.method public display3()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display3:[Ljava/lang/Object;

    return-object v0
.end method

.method public display3_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display3:[Ljava/lang/Object;

    return-void
.end method

.method public display4()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display4:[Ljava/lang/Object;

    return-object v0
.end method

.method public display4_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display4:[Ljava/lang/Object;

    return-void
.end method

.method public display5()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lscala/collection/immutable/VectorBuilder;->display5:[Ljava/lang/Object;

    return-object v0
.end method

.method public display5_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 708
    iput-object p1, p0, Lscala/collection/immutable/VectorBuilder;->display5:[Ljava/lang/Object;

    return-void
.end method

.method public final gotoFreshPosWritable0(III)V
    .locals 0
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "xor"    # I

    .prologue
    .line 708
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoFreshPosWritable0(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public final gotoNextBlockStartWritable(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "xor"    # I

    .prologue
    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoNextBlockStartWritable(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final initFrom(Lscala/collection/immutable/VectorPointer;I)V
    .locals 0
    .param p1, "that"    # Lscala/collection/immutable/VectorPointer;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/VectorPointer",
            "<TU;>;I)V"
        }
    .end annotation

    .prologue
    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;I)V

    return-void
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
            "Lscala/collection/immutable/Vector",
            "<TA;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder",
            "<TA;TNewTo;>;"
        }
    .end annotation

    .prologue
    .line 708
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public final nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->nullSlotAndCopy(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 708
    invoke-virtual {p0}, Lscala/collection/immutable/VectorBuilder;->result()Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/immutable/Vector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector",
            "<TA;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 735
    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->blockIndex()I

    move-result v2

    invoke-direct {p0}, Lscala/collection/immutable/VectorBuilder;->lo()I

    move-result v3

    add-int v1, v2, v3

    .line 736
    .local v1, "size":I
    if-nez v1, :cond_1

    .line 737
    sget-object v2, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v2}, Lscala/collection/immutable/Vector$;->empty()Lscala/collection/immutable/Vector;

    move-result-object v0

    .line 741
    :cond_0
    :goto_0
    return-object v0

    .line 738
    :cond_1
    new-instance v0, Lscala/collection/immutable/Vector;

    invoke-direct {v0, v4, v1, v4}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 739
    .local v0, "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v0, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 740
    invoke-virtual {p0}, Lscala/collection/immutable/VectorBuilder;->depth()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v4, v2}, Lscala/collection/immutable/Vector;->gotoPos(II)V

    goto :goto_0
.end method

.method public sizeHint(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 708
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;I)V

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
    .line 708
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
    .line 708
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
    .line 708
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public final stabilize(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 708
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->stabilize(Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method
