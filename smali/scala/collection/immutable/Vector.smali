.class public final Lscala/collection/immutable/Vector;
.super Lscala/collection/AbstractSeq;
.source "Vector.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/collection/immutable/IndexedSeq;
.implements Lscala/collection/immutable/VectorPointer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq",
        "<TA;>;",
        "Lscala/Serializable;",
        "Lscala/collection/CustomParallelizable",
        "<TA;",
        "Ljava/lang/Object",
        "<TA;>;>;",
        "Lscala/collection/immutable/IndexedSeq",
        "<TA;>;",
        "Lscala/collection/immutable/VectorPointer",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private depth:I

.field private dirty:Z

.field private display0:[Ljava/lang/Object;

.field private display1:[Ljava/lang/Object;

.field private display2:[Ljava/lang/Object;

.field private display3:[Ljava/lang/Object;

.field private display4:[Ljava/lang/Object;

.field private display5:[Ljava/lang/Object;

.field private final endIndex:I

.field private final focus:I

.field private final startIndex:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "focus"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 62
    iput p1, p0, Lscala/collection/immutable/Vector;->startIndex:I

    iput p2, p0, Lscala/collection/immutable/Vector;->endIndex:I

    iput p3, p0, Lscala/collection/immutable/Vector;->focus:I

    .line 63
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->$init$(Lscala/collection/immutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/VectorPointer$class;->$init$(Lscala/collection/immutable/VectorPointer;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lscala/collection/immutable/Vector;->dirty:Z

    return-void
.end method

.method private checkRangeConvert(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 128
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    add-int v0, p1, v1

    .line 129
    .local v0, "idx":I
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 127
    return v0

    .line 132
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private cleanLeftEdge(I)V
    .locals 2
    .param p1, "cutIndex"    # I

    .prologue
    .line 516
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    .line 516
    :goto_0
    return-void

    .line 519
    :cond_0
    const/16 v0, 0x400

    if-ge p1, v0, :cond_1

    .line 520
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    .line 521
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x5

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 523
    :cond_1
    const v0, 0x8000

    if-ge p1, v0, :cond_2

    .line 524
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    .line 525
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 526
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 528
    :cond_2
    const/high16 v0, 0x100000

    if-ge p1, v0, :cond_3

    .line 529
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    .line 530
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 531
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 532
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xf

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 534
    :cond_3
    const/high16 v0, 0x2000000

    if-ge p1, v0, :cond_4

    .line 535
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    .line 536
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 537
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 538
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 539
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display4()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x14

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 541
    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p1, v0, :cond_5

    .line 542
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroLeft([Ljava/lang/Object;I)V

    .line 543
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 544
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 545
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 546
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display4()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 547
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display5()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x19

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 549
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private cleanRightEdge(I)V
    .locals 2
    .param p1, "cutIndex"    # I

    .prologue
    .line 559
    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    .line 559
    :goto_0
    return-void

    .line 562
    :cond_0
    const/16 v0, 0x400

    if-gt p1, v0, :cond_1

    .line 563
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    .line 564
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x5

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 566
    :cond_1
    const v0, 0x8000

    if-gt p1, v0, :cond_2

    .line 567
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    .line 568
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 569
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xa

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 571
    :cond_2
    const/high16 v0, 0x100000

    if-gt p1, v0, :cond_3

    .line 572
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    .line 573
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 574
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0xf

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 577
    :cond_3
    const/high16 v0, 0x2000000

    if-gt p1, v0, :cond_4

    .line 578
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    .line 579
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 580
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 581
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0xf

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 582
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display4()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x14

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 584
    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_5

    .line 585
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->zeroRight([Ljava/lang/Object;I)V

    .line 586
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 587
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 588
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0xf

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 589
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display4()[Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    ushr-int/lit8 v1, v1, 0x14

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 590
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display5()[Ljava/lang/Object;

    move-result-object v0

    ushr-int/lit8 v1, p1, 0x19

    invoke-direct {p0, v0, v1}, Lscala/collection/immutable/Vector;->copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 592
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private copyLeft([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "right"    # I

    .prologue
    const/4 v2, 0x0

    .line 477
    array-length v1, p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 478
    .local v0, "a2":[Ljava/lang/Object;
    sget-object v1, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    return-object v0
.end method

.method private copyRight([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "left"    # I

    .prologue
    .line 482
    array-length v1, p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 483
    .local v0, "a2":[Ljava/lang/Object;
    sget-object v1, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    array-length v1, v0

    sub-int/2addr v1, p2

    invoke-static {p1, p2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    return-object v0
.end method

.method private dropBack0(I)Lscala/collection/immutable/Vector;
    .locals 8
    .param p1, "cutIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Vector",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 637
    add-int/lit8 v5, p1, -0x1

    and-int/lit8 v0, v5, -0x20

    .line 638
    .local v0, "blockIndex":I
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v5

    add-int/lit8 v6, p1, -0x1

    xor-int v4, v5, v6

    .line 639
    .local v4, "xor":I
    invoke-direct {p0, v4}, Lscala/collection/immutable/Vector;->requiredDepth(I)I

    move-result v1

    .line 640
    .local v1, "d":I
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v5

    const/4 v6, 0x1

    mul-int/lit8 v7, v1, 0x5

    shl-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int v3, v5, v6

    .line 647
    .local v3, "shift":I
    new-instance v2, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v6, p1, v3

    sub-int v7, v0, v3

    invoke-direct {v2, v5, v6, v7}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 648
    .local v2, "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v2, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 649
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v5

    invoke-virtual {v2, v5}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 650
    iget v5, p0, Lscala/collection/immutable/Vector;->focus:I

    iget v6, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int/2addr v6, v0

    invoke-direct {v2, v5, v0, v6}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 651
    invoke-direct {v2, v1}, Lscala/collection/immutable/Vector;->preClean(I)V

    .line 652
    sub-int v5, p1, v3

    invoke-direct {v2, v5}, Lscala/collection/immutable/Vector;->cleanRightEdge(I)V

    .line 653
    return-object v2
.end method

.method private dropFront0(I)Lscala/collection/immutable/Vector;
    .locals 8
    .param p1, "cutIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Vector",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 607
    and-int/lit8 v0, p1, -0x20

    .line 608
    .local v0, "blockIndex":I
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    xor-int v4, p1, v5

    .line 609
    .local v4, "xor":I
    invoke-direct {p0, v4}, Lscala/collection/immutable/Vector;->requiredDepth(I)I

    move-result v1

    .line 610
    .local v1, "d":I
    const/4 v5, 0x1

    mul-int/lit8 v6, v1, 0x5

    shl-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int v3, p1, v5

    .line 627
    .local v3, "shift":I
    new-instance v2, Lscala/collection/immutable/Vector;

    sub-int v5, p1, v3

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v6

    sub-int/2addr v6, v3

    sub-int v7, v0, v3

    invoke-direct {v2, v5, v6, v7}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 628
    .local v2, "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v2, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 629
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v5

    invoke-virtual {v2, v5}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 630
    iget v5, p0, Lscala/collection/immutable/Vector;->focus:I

    iget v6, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int/2addr v6, v0

    invoke-direct {v2, v5, v0, v6}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 631
    invoke-direct {v2, v1}, Lscala/collection/immutable/Vector;->preClean(I)V

    .line 632
    sub-int v5, p1, v3

    invoke-direct {v2, v5}, Lscala/collection/immutable/Vector;->cleanLeftEdge(I)V

    .line 633
    return-object v2
.end method

.method private gotoFreshPosWritable(III)V
    .locals 1
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "xor"    # I

    .prologue
    .line 266
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable1(III)V

    .line 266
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable0(III)V

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    goto :goto_0
.end method

.method private gotoPosWritable(III)V
    .locals 1
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "xor"    # I

    .prologue
    .line 259
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0, p1, p2, p3}, Lscala/collection/immutable/Vector;->gotoPosWritable1(III)V

    .line 259
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0, p2, p3}, Lscala/collection/immutable/Vector;->gotoPosWritable0(II)V

    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    goto :goto_0
.end method

.method private preClean(I)V
    .locals 2
    .param p1, "depth"    # I

    .prologue
    const/4 v1, 0x0

    .line 488
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->depth_$eq(I)V

    .line 489
    add-int/lit8 v0, p1, -0x1

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lscala/MatchError;

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 509
    :pswitch_0
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    .line 487
    :goto_0
    :pswitch_1
    return-void

    .line 506
    :pswitch_2
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 507
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 502
    :pswitch_3
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 504
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 497
    :pswitch_4
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 498
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 499
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 500
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 491
    :pswitch_5
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    .line 492
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    .line 493
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    .line 494
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    .line 495
    invoke-virtual {p0, v1}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private requiredDepth(I)I
    .locals 1
    .param p1, "xor"    # I

    .prologue
    .line 597
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 598
    :cond_0
    const/16 v0, 0x400

    if-ge p1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 599
    :cond_1
    const v0, 0x8000

    if-ge p1, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 600
    :cond_2
    const/high16 v0, 0x100000

    if-ge p1, v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 601
    :cond_3
    const/high16 v0, 0x2000000

    if-ge p1, v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    .line 602
    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p1, v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    .line 603
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private shiftTopLevel(II)V
    .locals 2
    .param p1, "oldLeft"    # I
    .param p2, "newLeft"    # I

    .prologue
    .line 451
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lscala/MatchError;

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 463
    :pswitch_0
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display5()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display5_$eq([Ljava/lang/Object;)V

    .line 451
    :goto_0
    return-void

    .line 461
    :pswitch_1
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display4_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 459
    :pswitch_2
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display3_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 457
    :pswitch_3
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display2_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 455
    :pswitch_4
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display1_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 453
    :pswitch_5
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lscala/collection/immutable/Vector;->copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private zeroLeft([Ljava/lang/Object;I)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 467
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 466
    :cond_0
    return-void
.end method

.method private zeroRight([Ljava/lang/Object;I)V
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 471
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_0
    return-void
.end method


# virtual methods
.method public $colon$plus(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/immutable/Vector",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 152
    sget-object v0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p2, v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    invoke-virtual {v0}, Lscala/collection/immutable/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p2, v0, :cond_0

    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->appendBack(Ljava/lang/Object;)Lscala/collection/immutable/Vector;

    move-result-object v0

    .line 152
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$colon$plus(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public $plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/immutable/Vector",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 147
    sget-object v0, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v0}, Lscala/collection/immutable/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p2, v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    invoke-virtual {v0}, Lscala/collection/immutable/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-eq p2, v0, :cond_0

    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0}, Lscala/collection/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->appendFront(Ljava/lang/Object;)Lscala/collection/immutable/Vector;

    move-result-object v0

    .line 147
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 5
    .param p1, "that"    # Lscala/collection/GenTraversableOnce;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversableOnce",
            "<TB;>;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/immutable/Vector",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 220
    sget-object v3, Lscala/collection/immutable/IndexedSeq$;->MODULE$:Lscala/collection/immutable/IndexedSeq$;

    invoke-virtual {v3}, Lscala/collection/immutable/IndexedSeq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v3

    if-eq p2, v3, :cond_0

    sget-object v3, Lscala/collection/immutable/Seq$;->MODULE$:Lscala/collection/immutable/Seq$;

    invoke-virtual {v3}, Lscala/collection/immutable/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v3

    if-eq p2, v3, :cond_0

    sget-object v3, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v3}, Lscala/collection/Seq$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v3

    if-ne p2, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_8

    .line 223
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    .end local p0    # "this":Lscala/collection/immutable/Vector;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lscala/collection/immutable/Vector;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 225
    :cond_2
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->isTraversableAgain()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v0

    .line 226
    .local v0, "again":Lscala/collection/TraversableOnce;
    :goto_2
    invoke-interface {v0}, Lscala/collection/TraversableOnce;->size()I

    move-result v3

    .line 228
    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->size()I

    move-result v4

    shr-int/lit8 v4, v4, 0x5

    if-ge v3, v4, :cond_5

    .line 229
    :cond_3
    invoke-static {p0}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v2

    .line 230
    .local v2, "v":Lscala/runtime/ObjectRef;
    new-instance v3, Lscala/collection/immutable/Vector$$anonfun$$plus$plus$1;

    invoke-direct {v3, p0, v2}, Lscala/collection/immutable/Vector$$anonfun$$plus$plus$1;-><init>(Lscala/collection/immutable/Vector;Lscala/runtime/ObjectRef;)V

    invoke-interface {v0, v3}, Lscala/collection/TraversableOnce;->foreach(Lscala/Function1;)V

    .line 231
    iget-object v3, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lscala/collection/immutable/Vector;

    move-object p0, v3

    goto :goto_1

    .line 225
    .end local v0    # "again":Lscala/collection/TraversableOnce;
    .end local v2    # "v":Lscala/runtime/ObjectRef;
    :cond_4
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->toVector()Lscala/collection/immutable/Vector;

    move-result-object v0

    goto :goto_2

    .line 232
    .restart local v0    # "again":Lscala/collection/TraversableOnce;
    :cond_5
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->size()I

    move-result v4

    shr-int/lit8 v3, v3, 0x5

    if-ge v4, v3, :cond_7

    instance-of v3, v0, Lscala/collection/immutable/Vector;

    if-eqz v3, :cond_7

    move-object v2, v0

    .line 233
    check-cast v2, Lscala/collection/immutable/Vector;

    .line 234
    .local v2, "v":Lscala/collection/immutable/Vector;
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->reverseIterator()Lscala/collection/Iterator;

    move-result-object v1

    .line 235
    .local v1, "ri":Lscala/collection/Iterator;
    :goto_3
    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v4}, Lscala/collection/immutable/Vector$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscala/collection/immutable/Vector;->$plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "v":Lscala/collection/immutable/Vector;
    check-cast v2, Lscala/collection/immutable/Vector;

    .restart local v2    # "v":Lscala/collection/immutable/Vector;
    goto :goto_3

    :cond_6
    move-object p0, v2

    .line 236
    goto :goto_1

    .line 237
    .end local v1    # "ri":Lscala/collection/Iterator;
    .end local v2    # "v":Lscala/collection/immutable/Vector;
    :cond_7
    invoke-static {p0, v0, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 241
    .end local v0    # "again":Lscala/collection/TraversableOnce;
    :cond_8
    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1
.end method

.method public appendBack(Ljava/lang/Object;)Lscala/collection/immutable/Vector;
    .locals 12
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/collection/immutable/Vector",
            "<TB;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 371
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v8

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 372
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v8

    and-int/lit8 v0, v8, -0x20

    .line 373
    .local v0, "blockIndex":I
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v8

    and-int/lit8 v2, v8, 0x1f

    .line 375
    .local v2, "lo":I
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v8

    if-eq v8, v0, :cond_1

    .line 377
    new-instance v5, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v8

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v5, v8, v9, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 378
    .local v5, "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v5, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 379
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v8

    invoke-virtual {v5, v8}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 380
    iget v8, p0, Lscala/collection/immutable/Vector;->focus:I

    iget v9, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int/2addr v9, v0

    invoke-direct {v5, v8, v0, v9}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 381
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v8

    aput-object p1, v8, v2

    .line 371
    .end local v0    # "blockIndex":I
    .end local v2    # "lo":I
    :cond_0
    :goto_0
    return-object v5

    .line 384
    .end local v5    # "s":Lscala/collection/immutable/Vector;
    .restart local v0    # "blockIndex":I
    .restart local v2    # "lo":I
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v8

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x5

    shl-int v9, v11, v9

    add-int/lit8 v9, v9, -0x1

    xor-int/lit8 v9, v9, -0x1

    and-int v6, v8, v9

    .line 385
    .local v6, "shift":I
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v8

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    mul-int/lit8 v9, v9, 0x5

    ushr-int v7, v8, v9

    .line 389
    .local v7, "shiftBlocks":I
    if-eqz v6, :cond_3

    .line 390
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->debug()V

    .line 392
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v8

    if-le v8, v11, :cond_2

    .line 393
    sub-int v3, v0, v6

    .line 394
    .local v3, "newBlockIndex":I
    iget v8, p0, Lscala/collection/immutable/Vector;->focus:I

    sub-int v4, v8, v6

    .line 395
    .local v4, "newFocus":I
    new-instance v5, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    sub-int/2addr v9, v6

    invoke-direct {v5, v8, v9, v3}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 396
    .restart local v5    # "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v5, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 397
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v8

    invoke-virtual {v5, v8}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 398
    invoke-direct {v5, v7, v10}, Lscala/collection/immutable/Vector;->shiftTopLevel(II)V

    .line 399
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->debug()V

    .line 400
    xor-int v8, v4, v3

    invoke-direct {v5, v4, v3, v8}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable(III)V

    .line 401
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v8

    aput-object p1, v8, v2

    .line 402
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->debug()V

    goto :goto_0

    .line 406
    .end local v3    # "newBlockIndex":I
    .end local v4    # "newFocus":I
    .end local v5    # "s":Lscala/collection/immutable/Vector;
    :cond_2
    add-int/lit8 v3, v0, -0x20

    .line 407
    .restart local v3    # "newBlockIndex":I
    iget v4, p0, Lscala/collection/immutable/Vector;->focus:I

    .line 412
    .restart local v4    # "newFocus":I
    new-instance v5, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    sub-int/2addr v9, v6

    invoke-direct {v5, v8, v9, v3}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 413
    .restart local v5    # "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v5, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 414
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v8

    invoke-virtual {v5, v8}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 415
    invoke-direct {v5, v7, v10}, Lscala/collection/immutable/Vector;->shiftTopLevel(II)V

    .line 416
    xor-int v8, v4, v3

    invoke-direct {v5, v4, v3, v8}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 417
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v8

    rsub-int/lit8 v9, v6, 0x20

    aput-object p1, v8, v9

    .line 418
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->debug()V

    goto/16 :goto_0

    .line 423
    .end local v3    # "newBlockIndex":I
    .end local v4    # "newFocus":I
    .end local v5    # "s":Lscala/collection/immutable/Vector;
    :cond_3
    iget v4, p0, Lscala/collection/immutable/Vector;->focus:I

    .line 425
    .restart local v4    # "newFocus":I
    new-instance v5, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v8

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v5, v8, v9, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 426
    .restart local v5    # "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v5, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 427
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v8

    invoke-virtual {v5, v8}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 428
    xor-int v8, v4, v0

    invoke-direct {v5, v4, v0, v8}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable(III)V

    .line 429
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v8

    aput-object p1, v8, v2

    .line 431
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->depth()I

    move-result v8

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    if-ne v8, v9, :cond_0

    .line 433
    invoke-virtual {v5}, Lscala/collection/immutable/Vector;->debug()V

    goto/16 :goto_0

    .line 439
    .end local v0    # "blockIndex":I
    .end local v2    # "lo":I
    .end local v4    # "newFocus":I
    .end local v5    # "s":Lscala/collection/immutable/Vector;
    .end local v6    # "shift":I
    .end local v7    # "shiftBlocks":I
    :cond_4
    const/16 v8, 0x20

    new-array v1, v8, [Ljava/lang/Object;

    .line 440
    .local v1, "elems":[Ljava/lang/Object;
    aput-object p1, v1, v10

    .line 441
    new-instance v5, Lscala/collection/immutable/Vector;

    invoke-direct {v5, v10, v11, v10}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 442
    .restart local v5    # "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v5, v11}, Lscala/collection/immutable/Vector;->depth_$eq(I)V

    .line 443
    invoke-virtual {v5, v1}, Lscala/collection/immutable/Vector;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public appendFront(Ljava/lang/Object;)Lscala/collection/immutable/Vector;
    .locals 13
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/collection/immutable/Vector",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v10

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v11

    if-eq v10, v11, :cond_4

    .line 275
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    and-int/lit8 v0, v10, -0x20

    .line 276
    .local v0, "blockIndex":I
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    and-int/lit8 v3, v10, 0x1f

    .line 278
    .local v3, "lo":I
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v10

    add-int/lit8 v11, v0, 0x20

    if-eq v10, v11, :cond_0

    .line 279
    new-instance v7, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v11

    invoke-direct {v7, v10, v11, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 280
    .local v7, "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v7, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 281
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v10

    invoke-virtual {v7, v10}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 282
    iget v10, p0, Lscala/collection/immutable/Vector;->focus:I

    iget v11, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int/2addr v11, v0

    invoke-direct {v7, v10, v0, v11}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 283
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v10

    aput-object p1, v10, v3

    .line 274
    .end local v0    # "blockIndex":I
    .end local v3    # "lo":I
    :goto_0
    return-object v7

    .line 287
    .end local v7    # "s":Lscala/collection/immutable/Vector;
    .restart local v0    # "blockIndex":I
    .restart local v3    # "lo":I
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v11

    mul-int/lit8 v11, v11, 0x5

    shl-int/2addr v10, v11

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v11

    sub-int v2, v10, v11

    .line 288
    .local v2, "freeSpace":I
    const/4 v10, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v11, v11, 0x5

    shl-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    xor-int/lit8 v10, v10, -0x1

    and-int v8, v2, v10

    .line 289
    .local v8, "shift":I
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    mul-int/lit8 v10, v10, 0x5

    ushr-int v9, v2, v10

    .line 292
    .local v9, "shiftBlocks":I
    if-eqz v8, :cond_2

    .line 294
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->debug()V

    .line 297
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 298
    add-int v5, v0, v8

    .line 299
    .local v5, "newBlockIndex":I
    iget v10, p0, Lscala/collection/immutable/Vector;->focus:I

    add-int v6, v10, v8

    .line 300
    .local v6, "newFocus":I
    new-instance v7, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v10, v8

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v11

    add-int/2addr v11, v8

    invoke-direct {v7, v10, v11, v5}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 301
    .restart local v7    # "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v7, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 302
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v10

    invoke-virtual {v7, v10}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 303
    const/4 v10, 0x0

    invoke-direct {v7, v10, v9}, Lscala/collection/immutable/Vector;->shiftTopLevel(II)V

    .line 304
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->debug()V

    .line 305
    xor-int v10, v6, v5

    invoke-direct {v7, v6, v5, v10}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable(III)V

    .line 306
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v10

    aput-object p1, v10, v3

    goto :goto_0

    .line 310
    .end local v5    # "newBlockIndex":I
    .end local v6    # "newFocus":I
    .end local v7    # "s":Lscala/collection/immutable/Vector;
    :cond_1
    add-int/lit8 v5, v0, 0x20

    .line 311
    .restart local v5    # "newBlockIndex":I
    iget v6, p0, Lscala/collection/immutable/Vector;->focus:I

    .line 316
    .restart local v6    # "newFocus":I
    new-instance v7, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v10, v8

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v11

    add-int/2addr v11, v8

    invoke-direct {v7, v10, v11, v5}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 317
    .restart local v7    # "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v7, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 318
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v10

    invoke-virtual {v7, v10}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 319
    const/4 v10, 0x0

    invoke-direct {v7, v10, v9}, Lscala/collection/immutable/Vector;->shiftTopLevel(II)V

    .line 320
    xor-int v10, v6, v5

    invoke-direct {v7, v6, v5, v10}, Lscala/collection/immutable/Vector;->gotoPosWritable(III)V

    .line 321
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v8, -0x1

    aput-object p1, v10, v11

    .line 322
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->debug()V

    goto/16 :goto_0

    .line 325
    .end local v5    # "newBlockIndex":I
    .end local v6    # "newFocus":I
    .end local v7    # "s":Lscala/collection/immutable/Vector;
    :cond_2
    if-gez v0, :cond_3

    .line 327
    const/4 v10, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    mul-int/lit8 v11, v11, 0x5

    shl-int/2addr v10, v11

    const/4 v11, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->depth()I

    move-result v12

    mul-int/lit8 v12, v12, 0x5

    shl-int/2addr v11, v12

    sub-int v4, v10, v11

    .line 330
    .local v4, "move":I
    add-int v5, v0, v4

    .line 331
    .restart local v5    # "newBlockIndex":I
    iget v10, p0, Lscala/collection/immutable/Vector;->focus:I

    add-int v6, v10, v4

    .line 334
    .restart local v6    # "newFocus":I
    new-instance v7, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v10, v4

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v11

    add-int/2addr v11, v4

    invoke-direct {v7, v10, v11, v5}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 335
    .restart local v7    # "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v7, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 336
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v10

    invoke-virtual {v7, v10}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 337
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->debug()V

    .line 338
    xor-int v10, v6, v5

    invoke-direct {v7, v6, v5, v10}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable(III)V

    .line 339
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v10

    aput-object p1, v10, v3

    .line 340
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->debug()V

    goto/16 :goto_0

    .line 345
    .end local v4    # "move":I
    .end local v5    # "newBlockIndex":I
    .end local v6    # "newFocus":I
    .end local v7    # "s":Lscala/collection/immutable/Vector;
    :cond_3
    iget v6, p0, Lscala/collection/immutable/Vector;->focus:I

    .line 347
    .restart local v6    # "newFocus":I
    new-instance v7, Lscala/collection/immutable/Vector;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v11

    invoke-direct {v7, v10, v11, v0}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 348
    .restart local v7    # "s":Lscala/collection/immutable/Vector;
    invoke-virtual {v7, p0}, Lscala/collection/immutable/Vector;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 349
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v10

    invoke-virtual {v7, v10}, Lscala/collection/immutable/Vector;->dirty_$eq(Z)V

    .line 350
    xor-int v10, v6, v0

    invoke-direct {v7, v6, v0, v10}, Lscala/collection/immutable/Vector;->gotoFreshPosWritable(III)V

    .line 351
    invoke-virtual {v7}, Lscala/collection/immutable/Vector;->display0()[Ljava/lang/Object;

    move-result-object v10

    aput-object p1, v10, v3

    goto/16 :goto_0

    .line 359
    .end local v0    # "blockIndex":I
    .end local v2    # "freeSpace":I
    .end local v3    # "lo":I
    .end local v6    # "newFocus":I
    .end local v7    # "s":Lscala/collection/immutable/Vector;
    .end local v8    # "shift":I
    .end local v9    # "shiftBlocks":I
    :cond_4
    const/16 v10, 0x20

    new-array v1, v10, [Ljava/lang/Object;

    .line 360
    .local v1, "elems":[Ljava/lang/Object;
    const/16 v10, 0x1f

    aput-object p1, v1, v10

    .line 361
    new-instance v7, Lscala/collection/immutable/Vector;

    const/16 v10, 0x1f

    const/16 v11, 0x20

    const/4 v12, 0x0

    invoke-direct {v7, v10, v11, v12}, Lscala/collection/immutable/Vector;-><init>(III)V

    .line 362
    .restart local v7    # "s":Lscala/collection/immutable/Vector;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lscala/collection/immutable/Vector;->depth_$eq(I)V

    .line 363
    invoke-virtual {v7, v1}, Lscala/collection/immutable/Vector;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lscala/collection/immutable/Vector;->checkRangeConvert(I)I

    move-result v0

    .line 124
    .local v0, "idx":I
    iget v1, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/immutable/Vector;->getElem(II)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion",
            "<",
            "Lscala/collection/immutable/Vector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    return-object v0
.end method

.method public final copyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->copyOf(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final copyRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "oldLeft"    # I
    .param p3, "newLeft"    # I

    .prologue
    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->copyRange(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public debug()V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0}, Lscala/collection/immutable/VectorPointer$class;->debug(Lscala/collection/immutable/VectorPointer;)V

    return-void
.end method

.method public depth()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lscala/collection/immutable/Vector;->depth:I

    return v0
.end method

.method public depth_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 62
    iput p1, p0, Lscala/collection/immutable/Vector;->depth:I

    return-void
.end method

.method public dirty()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lscala/collection/immutable/Vector;->dirty:Z

    return v0
.end method

.method public dirty_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lscala/collection/immutable/Vector;->dirty:Z

    return-void
.end method

.method public display0()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display0:[Ljava/lang/Object;

    return-object v0
.end method

.method public display0_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display0:[Ljava/lang/Object;

    return-void
.end method

.method public display1()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display1:[Ljava/lang/Object;

    return-object v0
.end method

.method public display1_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display1:[Ljava/lang/Object;

    return-void
.end method

.method public display2()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display2:[Ljava/lang/Object;

    return-object v0
.end method

.method public display2_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display2:[Ljava/lang/Object;

    return-void
.end method

.method public display3()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display3:[Ljava/lang/Object;

    return-object v0
.end method

.method public display3_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display3:[Ljava/lang/Object;

    return-void
.end method

.method public display4()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display4:[Ljava/lang/Object;

    return-object v0
.end method

.method public display4_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display4:[Ljava/lang/Object;

    return-void
.end method

.method public display5()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lscala/collection/immutable/Vector;->display5:[Ljava/lang/Object;

    return-object v0
.end method

.method public display5_$eq([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x$1"    # [Ljava/lang/Object;

    .prologue
    .line 62
    iput-object p1, p0, Lscala/collection/immutable/Vector;->display5:[Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->drop(I)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public drop(I)Lscala/collection/immutable/Vector;
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Vector",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 166
    if-gtz p1, :cond_0

    .end local p0    # "this":Lscala/collection/immutable/Vector;
    :goto_0
    return-object p0

    .line 168
    .restart local p0    # "this":Lscala/collection/immutable/Vector;
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v1

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 169
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lscala/collection/immutable/Vector;->dropFront0(I)Lscala/collection/immutable/Vector;

    move-result-object p0

    goto :goto_0

    .line 171
    :cond_1
    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0}, Lscala/collection/immutable/Vector$;->empty()Lscala/collection/immutable/Vector;

    move-result-object p0

    goto :goto_0
.end method

.method public endIndex()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lscala/collection/immutable/Vector;->endIndex:I

    return v0
.end method

.method public final getElem(II)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "xor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TA;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->getElem(Lscala/collection/immutable/VectorPointer;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final gotoFreshPosWritable0(III)V
    .locals 0
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "xor"    # I

    .prologue
    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoFreshPosWritable0(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public final gotoFreshPosWritable1(III)V
    .locals 0
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "xor"    # I

    .prologue
    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoFreshPosWritable1(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public final gotoPos(II)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "xor"    # I

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoPos(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPosWritable0(II)V
    .locals 0
    .param p1, "newIndex"    # I
    .param p2, "xor"    # I

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->gotoPosWritable0(Lscala/collection/immutable/VectorPointer;II)V

    return-void
.end method

.method public final gotoPosWritable1(III)V
    .locals 0
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "xor"    # I

    .prologue
    .line 62
    invoke-static {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer$class;->gotoPosWritable1(Lscala/collection/immutable/VectorPointer;III)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "empty.head"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 62
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
    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method

.method public final initIterator(Lscala/collection/immutable/VectorIterator;)V
    .locals 3
    .param p1, "s"    # Lscala/collection/immutable/VectorIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/VectorIterator",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1, p0}, Lscala/collection/immutable/VectorIterator;->initFrom(Lscala/collection/immutable/VectorPointer;)V

    .line 91
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->dirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lscala/collection/immutable/Vector;->focus:I

    invoke-virtual {p1, v0}, Lscala/collection/immutable/VectorIterator;->stabilize(I)V

    .line 92
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/VectorIterator;->depth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    iget v2, p0, Lscala/collection/immutable/Vector;->focus:I

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lscala/collection/immutable/VectorIterator;->gotoPos(II)V

    .line 89
    :cond_1
    return-void
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Lscala/collection/Iterator;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->iterator()Lscala/collection/immutable/VectorIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lscala/collection/immutable/VectorIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/VectorIterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lscala/collection/immutable/VectorIterator;

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/VectorIterator;-><init>(II)V

    .line 97
    .local v0, "s":Lscala/collection/immutable/VectorIterator;
    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->initIterator(Lscala/collection/immutable/VectorIterator;)V

    .line 98
    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "empty.last"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->apply(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public lengthCompare(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 87
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->length()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method

.method public final nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/VectorPointer$class;->nullSlotAndCopy(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lscala/collection/immutable/Vector$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/Vector$$anon$1;-><init>(Lscala/collection/immutable/Vector;)V

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->seq(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/Vector;->slice(II)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lscala/collection/immutable/Vector;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/immutable/Vector",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0, p2}, Lscala/collection/immutable/Vector;->take(I)Lscala/collection/immutable/Vector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/Vector;->drop(I)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public final stabilize(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 62
    invoke-static {p0, p1}, Lscala/collection/immutable/VectorPointer$class;->stabilize(Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method

.method public startIndex()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lscala/collection/immutable/Vector;->startIndex:I

    return v0
.end method

.method public bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->tail()Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public tail()Lscala/collection/immutable/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "empty.tail"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Vector;->drop(I)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->take(I)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Lscala/collection/immutable/Vector;
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/Vector",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 157
    if-gtz p1, :cond_1

    .line 158
    sget-object v0, Lscala/collection/immutable/Vector$;->MODULE$:Lscala/collection/immutable/Vector$;

    invoke-virtual {v0}, Lscala/collection/immutable/Vector$;->empty()Lscala/collection/immutable/Vector;

    move-result-object p0

    .line 157
    .end local p0    # "this":Lscala/collection/immutable/Vector;
    :cond_0
    :goto_0
    return-object p0

    .line 159
    .restart local p0    # "this":Lscala/collection/immutable/Vector;
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->endIndex()I

    move-result v1

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->startIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lscala/collection/immutable/Vector;->dropBack0(I)Lscala/collection/immutable/Vector;

    move-result-object p0

    goto :goto_0
.end method

.method public thisCollection()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->thisCollection(Lscala/collection/IndexedSeqLike;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer",
            "<TA1;>;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqLike$class;->toCollection(Lscala/collection/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Vector;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lscala/collection/immutable/Vector;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/immutable/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 85
    return-object p0
.end method
