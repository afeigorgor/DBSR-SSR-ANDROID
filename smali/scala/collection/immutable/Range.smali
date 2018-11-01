.class public Lscala/collection/immutable/Range;
.super Lscala/collection/AbstractSeq;
.source "Range.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/collection/immutable/IndexedSeq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/Range$Inclusive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractSeq",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;",
        "Lscala/collection/CustomParallelizable",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/immutable/IndexedSeq",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final end:I

.field private final isEmpty:Z

.field private final lastElement:I

.field private final numRangeElements:I

.field private final start:I

.field private final step:I

.field private final terminalElement:I


# direct methods
.method public constructor <init>(III)V
    .locals 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "step"    # I

    .prologue
    const/4 v4, 0x0

    .line 61
    iput p1, p0, Lscala/collection/immutable/Range;->start:I

    iput p2, p0, Lscala/collection/immutable/Range;->end:I

    iput p3, p0, Lscala/collection/immutable/Range;->step:I

    .line 62
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->$init$(Lscala/collection/immutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    .line 80
    if-le p1, p2, :cond_0

    if-gtz p3, :cond_2

    .line 81
    :cond_0
    if-ge p1, p2, :cond_1

    if-ltz p3, :cond_2

    .line 82
    :cond_1
    if-ne p1, p2, :cond_3

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lscala/collection/immutable/Range;->isEmpty:Z

    .line 86
    if-nez p3, :cond_4

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "step cannot be 0."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    move v3, v4

    .line 82
    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 85
    :goto_1
    iput v4, p0, Lscala/collection/immutable/Range;->numRangeElements:I

    .line 96
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    sub-int p2, p1, p3

    .line 95
    .end local p2    # "end":I
    :cond_5
    :goto_2
    iput p2, p0, Lscala/collection/immutable/Range;->lastElement:I

    .line 108
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->lastElement()I

    move-result v3

    add-int/2addr v3, p3

    iput v3, p0, Lscala/collection/immutable/Range;->terminalElement:I

    return-void

    .line 89
    .restart local p2    # "end":I
    :cond_6
    invoke-direct {p0}, Lscala/collection/immutable/Range;->longLength()J

    move-result-wide v0

    .line 90
    .local v0, "len":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_7

    const/4 v4, -0x1

    goto :goto_1

    .line 91
    :cond_7
    long-to-int v4, v0

    goto :goto_1

    .line 97
    .end local v0    # "len":J
    :cond_8
    packed-switch p3, :pswitch_data_0

    .line 101
    :pswitch_0
    invoke-direct {p0}, Lscala/collection/immutable/Range;->gap()J

    move-result-wide v4

    int-to-long v6, p3

    rem-long/2addr v4, v6

    long-to-int v2, v4

    .line 102
    .local v2, "remainder":I
    if-eqz v2, :cond_9

    sub-int/2addr p2, v2

    goto :goto_2

    .line 103
    :cond_9
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result v3

    if-nez v3, :cond_5

    .line 104
    sub-int/2addr p2, p3

    goto :goto_2

    .line 99
    .end local v2    # "remainder":I
    :pswitch_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 98
    :pswitch_2
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result v3

    if-nez v3, :cond_5

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    .line 97
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private description()Ljava/lang/String;
    .locals 5

    .prologue
    .line 142
    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v0, "%d %s %d by %s"

    invoke-direct {v1, v0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "to"

    :goto_0
    aput-object v0, v3, v4

    const/4 v0, 0x2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v4

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "until"

    goto :goto_0
.end method

.method private fail()Lscala/runtime/Nothing$;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-direct {p0}, Lscala/collection/immutable/Range;->description()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, ": seqs cannot contain more than Int.MaxValue elements."

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private gap()J
    .locals 4

    .prologue
    .line 69
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private hasStub()Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isInclusive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/immutable/Range;->isExact()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isExact()Z
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Lscala/collection/immutable/Range;->gap()J

    move-result-wide v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private locationAfterN(I)I
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 241
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private longLength()J
    .locals 4

    .prologue
    .line 72
    invoke-direct {p0}, Lscala/collection/immutable/Range;->gap()J

    move-result-wide v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    int-to-long v2, v2

    div-long v2, v0, v2

    invoke-direct {p0}, Lscala/collection/immutable/Range;->hasStub()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newEmptyRange(I)Lscala/collection/immutable/Range;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 247
    new-instance v0, Lscala/collection/immutable/Range;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    invoke-direct {v0, p1, p1, v1}, Lscala/collection/immutable/Range;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public final apply(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->apply$mcII$sp(I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->apply(I)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Range;->apply(I)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcII$sp(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 150
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->scala$collection$immutable$Range$$validateMaxLength()V

    .line 151
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    .line 149
    return v0
.end method

.method public by(I)Lscala/collection/immutable/Range;
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 135
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lscala/collection/immutable/Range;->copy(III)Lscala/collection/immutable/Range;

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
            "Lscala/collection/immutable/IndexedSeq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->companion(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public copy(III)Lscala/collection/immutable/Range;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "step"    # I

    .prologue
    .line 128
    new-instance v0, Lscala/collection/immutable/Range;

    invoke-direct {v0, p1, p2, p3}, Lscala/collection/immutable/Range;-><init>(III)V

    return-object v0
.end method

.method public final bridge synthetic drop(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->drop(I)Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public final drop(I)Lscala/collection/immutable/Range;
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 193
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0    # "this":Lscala/collection/immutable/Range;
    :cond_0
    :goto_0
    return-object p0

    .line 194
    .restart local p0    # "this":Lscala/collection/immutable/Range;
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/Range;->newEmptyRange(I)Lscala/collection/immutable/Range;

    move-result-object p0

    goto :goto_0

    .line 198
    :cond_2
    invoke-direct {p0, p1}, Lscala/collection/immutable/Range;->locationAfterN(I)I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->end()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lscala/collection/immutable/Range;->copy(III)Lscala/collection/immutable/Range;

    move-result-object p0

    goto :goto_0
.end method

.method public end()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lscala/collection/immutable/Range;->end:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 368
    instance-of v3, p1, Lscala/collection/immutable/Range;

    if-eqz v3, :cond_5

    check-cast p1, Lscala/collection/immutable/Range;

    .line 370
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lscala/collection/immutable/Range;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 371
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v3

    .line 373
    :goto_0
    if-eqz v3, :cond_4

    .line 367
    :goto_1
    return v1

    .line 373
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/Range;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/Range;->start()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 374
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v0

    .line 375
    .local v0, "l0":I
    invoke-virtual {p1}, Lscala/collection/immutable/Range;->last()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 376
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v3

    if-eq v3, v0, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/Range;->step()I

    move-result v4

    if-ne v3, v4, :cond_2

    :cond_1
    move v3, v1

    .line 375
    :goto_2
    if-eqz v3, :cond_3

    move v3, v1

    .line 373
    goto :goto_0

    :cond_2
    move v3, v2

    .line 375
    goto :goto_2

    .end local v0    # "l0":I
    :cond_3
    move v3, v2

    .line 373
    goto :goto_0

    :cond_4
    move v1, v2

    .line 370
    goto :goto_1

    .line 381
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_5
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->equals(Lscala/collection/GenSeqLike;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1
.end method

.method public final foreach(Lscala/Function1;)V
    .locals 2
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<",
            "Ljava/lang/Object;",
            "TU;>;)V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    .line 161
    .local v0, "i":I
    :goto_0
    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->lastElement()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final foreach$mVc$sp(Lscala/Function1;)V
    .locals 2
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Ljava/lang/Object;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    .line 161
    .local v0, "i":I
    :goto_0
    invoke-interface {p1, v0}, Lscala/Function1;->apply$mcVI$sp(I)V

    .line 162
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->lastElement()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 163
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()I
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0}, Lscala/collection/immutable/Nil$;->head()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    return v0
.end method

.method public bridge synthetic head()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->head()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Range;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lscala/collection/immutable/Range;->isEmpty:Z

    return v0
.end method

.method public isInclusive()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()I
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0}, Lscala/collection/immutable/Nil$;->last()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->lastElement()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final lastElement()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lscala/collection/immutable/Range;->lastElement:I

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-gez v0, :cond_0

    invoke-direct {p0}, Lscala/collection/immutable/Range;->fail()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    return v0
.end method

.method public final numRangeElements()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lscala/collection/immutable/Range;->numRangeElements:I

    return v0
.end method

.method public final bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->reverse()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public final reverse()Lscala/collection/immutable/Range;
    .locals 4

    .prologue
    .line 320
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lscala/collection/immutable/Range;
    :goto_0
    return-object p0

    .line 321
    .restart local p0    # "this":Lscala/collection/immutable/Range;
    :cond_0
    new-instance v0, Lscala/collection/immutable/Range$Inclusive;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v3

    neg-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    move-object p0, v0

    goto :goto_0
.end method

.method public scala$collection$immutable$Range$$validateMaxLength()V
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-gez v0, :cond_0

    .line 146
    invoke-direct {p0}, Lscala/collection/immutable/Range;->fail()Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0

    .line 145
    :cond_0
    return-void
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/IndexedSeq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->seq(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->length()I

    move-result v0

    return v0
.end method

.method public start()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lscala/collection/immutable/Range;->start:I

    return v0
.end method

.method public step()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lscala/collection/immutable/Range;->step:I

    return v0
.end method

.method public final sum(Lscala/math/Numeric;)I
    .locals 8
    .param p1, "num"    # Lscala/math/Numeric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric",
            "<TB;>;)I"
        }
    .end annotation

    .prologue
    .line 342
    sget-object v2, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    if-ne p1, v2, :cond_2

    .line 344
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 355
    :goto_0
    return v2

    .line 345
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->head()I

    move-result v2

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->head()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->last()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    long-to-int v2, v2

    goto :goto_0

    .line 349
    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lscala/math/Numeric;->toInt(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 351
    :cond_3
    invoke-interface {p1}, Lscala/math/Numeric;->zero()Ljava/lang/Object;

    move-result-object v0

    .line 352
    .local v0, "acc":Ljava/lang/Object;
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->head()I

    move-result v1

    .line 354
    .local v1, "i":I
    :goto_1
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lscala/math/Numeric;->plus(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->lastElement()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-interface {p1, v0}, Lscala/math/Numeric;->toInt(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 356
    :cond_4
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1
.end method

.method public final bridge synthetic sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 1
    .param p1, "num"    # Lscala/math/Numeric;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->sum(Lscala/math/Numeric;)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->tail()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public final tail()Lscala/collection/immutable/Range;
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-virtual {v0}, Lscala/collection/immutable/Nil$;->tail()Lscala/collection/immutable/List;

    .line 225
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lscala/collection/immutable/Range;->drop(I)Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0

    .line 222
    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public final bridge synthetic take(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->take(I)Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public final take(I)Lscala/collection/immutable/Range;
    .locals 4
    .param p1, "n"    # I

    .prologue
    .line 176
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v0

    invoke-direct {p0, v0}, Lscala/collection/immutable/Range;->newEmptyRange(I)Lscala/collection/immutable/Range;

    move-result-object p0

    .end local p0    # "this":Lscala/collection/immutable/Range;
    :cond_1
    :goto_0
    return-object p0

    .line 177
    .restart local p0    # "this":Lscala/collection/immutable/Range;
    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-lt p1, v0, :cond_3

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v0

    if-gez v0, :cond_1

    .line 181
    :cond_3
    new-instance v0, Lscala/collection/immutable/Range$Inclusive;

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->start()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lscala/collection/immutable/Range;->locationAfterN(I)I

    move-result v2

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->step()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    move-object p0, v0

    goto :goto_0
.end method

.method public thisCollection()Lscala/collection/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/IndexedSeq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->thisCollection(Lscala/collection/IndexedSeqLike;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->thisCollection()Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->thisCollection()Lscala/collection/IndexedSeq;

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
    .line 61
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqLike$class;->toCollection(Lscala/collection/IndexedSeqLike;Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Range;->toCollection(Ljava/lang/Object;)Lscala/collection/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->toSeq()Lscala/collection/immutable/Range;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/immutable/Range;
    .locals 0

    .prologue
    .line 365
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 389
    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v1

    sget-object v2, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v2}, Lscala/collection/immutable/Range$;->MAX_PRINT()I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lscala/collection/immutable/Range;->numRangeElements()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    const-string v0, ", ... )"

    .line 390
    .local v0, "endStr":Ljava/lang/String;
    :goto_0
    sget-object v1, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    invoke-virtual {v1}, Lscala/collection/immutable/Range$;->MAX_PRINT()I

    move-result v1

    invoke-virtual {p0, v1}, Lscala/collection/immutable/Range;->take(I)Lscala/collection/immutable/Range;

    move-result-object v1

    const-string v2, "Range("

    const-string v3, ", "

    invoke-virtual {v1, v2, v3, v0}, Lscala/collection/immutable/Range;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 389
    .end local v0    # "endStr":Ljava/lang/String;
    :cond_1
    const-string v0, ")"

    goto :goto_0
.end method
