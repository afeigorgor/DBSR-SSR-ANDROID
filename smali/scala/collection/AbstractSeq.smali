.class public abstract Lscala/collection/AbstractSeq;
.super Lscala/collection/AbstractIterable;
.source "Seq.scala"

# interfaces
.implements Lscala/collection/Seq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterable",
        "<TA;>;",
        "Lscala/collection/Seq",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lscala/collection/AbstractIterable;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/PartialFunction$class;->$init$(Lscala/PartialFunction;)V

    invoke-static {p0}, Lscala/collection/GenSeqLike$class;->$init$(Lscala/collection/GenSeqLike;)V

    invoke-static {p0}, Lscala/collection/GenSeq$class;->$init$(Lscala/collection/GenSeq;)V

    invoke-static {p0}, Lscala/collection/SeqLike$class;->$init$(Lscala/collection/SeqLike;)V

    invoke-static {p0}, Lscala/collection/Seq$class;->$init$(Lscala/collection/Seq;)V

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
            "Lscala/collection/Seq",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$colon$plus(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
            "Lscala/collection/Seq",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcDI$sp(I)D
    .locals 2
    .param p1, "v1"    # I

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcDI$sp(Lscala/Function1;I)D

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcFI$sp(I)F
    .locals 1
    .param p1, "v1"    # I

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcFI$sp(Lscala/Function1;I)F

    move-result v0

    return v0
.end method

.method public apply$mcII$sp(I)I
    .locals 1
    .param p1, "v1"    # I

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcII$sp(Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public apply$mcJI$sp(I)J
    .locals 2
    .param p1, "v1"    # I

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcJI$sp(Lscala/Function1;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public apply$mcVI$sp(I)V
    .locals 0
    .param p1, "v1"    # I

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public apply$mcZI$sp(I)Z
    .locals 1
    .param p1, "v1"    # I

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcZI$sp(Lscala/Function1;I)Z

    move-result v0

    return v0
.end method

.method public applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "default"    # Lscala/Function1;

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lscala/PartialFunction$class;->applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

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
            "Lscala/collection/Seq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/Seq$class;->companion(Lscala/collection/Seq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(TA1;)Z"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->contains(Lscala/collection/SeqLike;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenSeq;
    .param p2, "p"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenSeq",
            "<TB;>;",
            "Lscala/Function2",
            "<TA;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->corresponds(Lscala/collection/SeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result v0

    return v0
.end method

.method public distinct()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->distinct(Lscala/collection/SeqLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->equals(Lscala/collection/GenSeqLike;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/GenSeqLike$class;->hashCode(Lscala/collection/GenSeqLike;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)I"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->indexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;I)I"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/GenSeqLike$class;->indexOf(Lscala/collection/GenSeqLike;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->indexWhere(Lscala/collection/SeqLike;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public isDefinedAt(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->isDefinedAt(Lscala/collection/GenSeqLike;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/AbstractSeq;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->isEmpty(Lscala/collection/SeqLike;)Z

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->lengthCompare(Lscala/collection/SeqLike;I)I

    move-result v0

    return v0
.end method

.method public reverse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->reverse(Lscala/collection/SeqLike;)Ljava/lang/Object;

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
    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->reverseIterator(Lscala/collection/SeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public runWith(Lscala/Function1;)Lscala/Function1;
    .locals 1
    .param p1, "action"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TU;>;)",
            "Lscala/Function1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->runWith(Lscala/PartialFunction;Lscala/Function1;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public segmentLength(Lscala/Function1;I)I
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->segmentLength(Lscala/collection/SeqLike;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->seq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/Seq$class;->seq(Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->seq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->seq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->size(Lscala/collection/SeqLike;)I

    move-result v0

    return v0
.end method

.method public sortWith(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "lt"    # Lscala/Function2;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->sortWith(Lscala/collection/SeqLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sorted(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 1
    .param p1, "ord"    # Lscala/math/Ordering;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->sorted(Lscala/collection/SeqLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->thisCollection(Lscala/collection/SeqLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lscala/collection/AbstractSeq;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->toCollection(Lscala/collection/SeqLike;Ljava/lang/Object;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->toSeq(Lscala/collection/SeqLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/SeqLike$class;->toString(Lscala/collection/SeqLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
