.class public Lscala/collection/immutable/VectorIterator;
.super Lscala/collection/AbstractIterator;
.source "Vector.scala"

# interfaces
.implements Lscala/collection/immutable/VectorPointer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterator",
        "<TA;>;",
        "Lscala/collection/immutable/VectorPointer",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private _hasNext:Z

.field private blockIndex:I

.field private depth:I

.field private display0:[Ljava/lang/Object;

.field private display1:[Ljava/lang/Object;

.field private display2:[Ljava/lang/Object;

.field private display3:[Ljava/lang/Object;

.field private display4:[Ljava/lang/Object;

.field private display5:[Ljava/lang/Object;

.field private final endIndex:I

.field private endLo:I

.field private lo:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "_startIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 659
    iput p2, p0, Lscala/collection/immutable/VectorIterator;->endIndex:I

    .line 660
    invoke-direct {p0}, Lscala/collection/AbstractIterator;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/VectorPointer$class;->$init$(Lscala/collection/immutable/VectorPointer;)V

    .line 664
    and-int/lit8 v0, p1, -0x20

    iput v0, p0, Lscala/collection/immutable/VectorIterator;->blockIndex:I

    .line 665
    and-int/lit8 v0, p1, 0x1f

    iput v0, p0, Lscala/collection/immutable/VectorIterator;->lo:I

    .line 667
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v1

    sub-int v1, p2, v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lscala/math/package$;->min(II)I

    move-result v0

    iput v0, p0, Lscala/collection/immutable/VectorIterator;->endLo:I

    .line 671
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v0

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v1

    add-int/2addr v0, v1

    if-ge v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lscala/collection/immutable/VectorIterator;->_hasNext:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _hasNext()Z
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lscala/collection/immutable/VectorIterator;->_hasNext:Z

    return v0
.end method

.method private _hasNext_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 671
    iput-boolean p1, p0, Lscala/collection/immutable/VectorIterator;->_hasNext:Z

    return-void
.end method

.method private blockIndex()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lscala/collection/immutable/VectorIterator;->blockIndex:I

    return v0
.end method

.method private blockIndex_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 664
    iput p1, p0, Lscala/collection/immutable/VectorIterator;->blockIndex:I

    return-void
.end method

.method private endLo()I
    .locals 1

    .prologue
    .line 667
    iget v0, p0, Lscala/collection/immutable/VectorIterator;->endLo:I

    return v0
.end method

.method private endLo_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 667
    iput p1, p0, Lscala/collection/immutable/VectorIterator;->endLo:I

    return-void
.end method

.method private lo()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lscala/collection/immutable/VectorIterator;->lo:I

    return v0
.end method

.method private lo_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 665
    iput p1, p0, Lscala/collection/immutable/VectorIterator;->lo:I

    return-void
.end method


# virtual methods
.method public final copyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 659
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->copyOf(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public depth()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lscala/collection/immutable/VectorIterator;->depth:I

    return v0
.end method

.method public depth_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 659
    iput p1, p0, Lscala/collection/immutable/VectorIterator;->depth:I

    return-void
.end method

.method public display0()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display0:[Ljava/lang/Object;

    return-object v0
.end method

.method public display0_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display0:[Ljava/lang/Object;

    return-void
.end method

.method public display1()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display1:[Ljava/lang/Object;

    return-object v0
.end method

.method public display1_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display1:[Ljava/lang/Object;

    return-void
.end method

.method public display2()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display2:[Ljava/lang/Object;

    return-object v0
.end method

.method public display2_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display2:[Ljava/lang/Object;

    return-void
.end method

.method public display3()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display3:[Ljava/lang/Object;

    return-object v0
.end method

.method public display3_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display3:[Ljava/lang/Object;

    return-void
.end method

.method public display4()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display4:[Ljava/lang/Object;

    return-object v0
.end method

.method public display4_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display4:[Ljava/lang/Object;

    return-void
.end method

.method public display5()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lscala/collection/immutable/VectorIterator;->display5:[Ljava/lang/Object;

    return-object v0
.end method

.method public display5_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 659
    iput-object p1, p0, Lscala/collection/immutable/VectorIterator;->display5:[Ljava/lang/Object;

    return-void
.end method

.method public final gotoFreshPosWritable0(III)V
    .locals 0
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "xor"    # I

    .prologue
    .line 659
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoFreshPosWritable0(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public final gotoNextBlockStart(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "xor"    # I

    .prologue
    .line 659
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoNextBlockStart(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPos(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "xor"    # I

    .prologue
    .line 659
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoPos(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->_hasNext()Z

    move-result v0

    return v0
.end method

.method public final initFrom(Lscala/collection/immutable/VectorPointer;)V
    .locals 0
    .param p1, "that"    # Lscala/collection/immutable/VectorPointer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/VectorPointer",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 659
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;)V

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
    .line 659
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 674
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->_hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 676
    invoke-virtual {p0}, Lscala/collection/immutable/VectorIterator;->display0()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v3

    aget-object v1, v2, v3

    .line 677
    .local v1, "res":Ljava/lang/Object;
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lscala/collection/immutable/VectorIterator;->lo_$eq(I)V

    .line 679
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v2

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->endLo()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 680
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v2

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->lo()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lscala/collection/immutable/VectorIterator;->endIndex:I

    if-ge v2, v3, :cond_1

    .line 681
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v2

    add-int/lit8 v0, v2, 0x20

    .line 682
    .local v0, "newBlockIndex":I
    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v2

    xor-int/2addr v2, v0

    invoke-virtual {p0, v0, v2}, Lscala/collection/immutable/VectorIterator;->gotoNextBlockStart(II)V

    .line 684
    invoke-direct {p0, v0}, Lscala/collection/immutable/VectorIterator;->blockIndex_$eq(I)V

    .line 685
    sget-object v2, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    iget v3, p0, Lscala/collection/immutable/VectorIterator;->endIndex:I

    invoke-direct {p0}, Lscala/collection/immutable/VectorIterator;->blockIndex()I

    move-result v4

    sub-int/2addr v3, v4

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Lscala/math/package$;->min(II)I

    move-result v2

    invoke-direct {p0, v2}, Lscala/collection/immutable/VectorIterator;->endLo_$eq(I)V

    .line 686
    invoke-direct {p0, v5}, Lscala/collection/immutable/VectorIterator;->lo_$eq(I)V

    .line 692
    .end local v0    # "newBlockIndex":I
    :cond_0
    :goto_0
    return-object v1

    .line 688
    :cond_1
    invoke-direct {p0, v5}, Lscala/collection/immutable/VectorIterator;->_hasNext_$eq(Z)V

    goto :goto_0

    .line 674
    .end local v1    # "res":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/util/NoSuchElementException;

    const-string v3, "reached iterator end"

    invoke-direct {v2, v3}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 659
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->nullSlotAndCopy(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final stabilize(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 659
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->stabilize(Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method
