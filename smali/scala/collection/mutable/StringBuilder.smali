.class public final Lscala/collection/mutable/StringBuilder;
.super Lscala/collection/mutable/AbstractSeq;
.source "StringBuilder.scala"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Lscala/Serializable;
.implements Lscala/collection/immutable/StringLike;
.implements Lscala/collection/mutable/Builder;
.implements Lscala/collection/mutable/IndexedSeq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/AbstractSeq",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/CharSequence;",
        "Lscala/Serializable;",
        "Lscala/collection/immutable/StringLike",
        "<",
        "Lscala/collection/mutable/StringBuilder;",
        ">;",
        "Lscala/collection/mutable/Builder",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/collection/mutable/IndexedSeq",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final underlying:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    const/16 v0, 0x10

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lscala/collection/mutable/StringBuilder;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "initCapacity"    # I
    .param p2, "initValue"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v0}, Lscala/collection/mutable/StringBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0
    .param p1, "underlying"    # Ljava/lang/StringBuilder;

    .prologue
    .line 31
    iput-object p1, p0, Lscala/collection/mutable/StringBuilder;->underlying:Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->$init$(Lscala/collection/mutable/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->$init$(Lscala/collection/mutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->$init$(Lscala/collection/IndexedSeqOptimized;)V

    invoke-static {p0}, Lscala/math/Ordered$class;->$init$(Lscala/math/Ordered;)V

    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->$init$(Lscala/collection/immutable/StringLike;)V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    return-void
.end method

.method private underlying()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lscala/collection/mutable/StringBuilder;->underlying:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->$plus$eq(C)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->$plus$eq(C)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(C)Lscala/collection/mutable/StringBuilder;
    .locals 0
    .param p1, "x"    # C

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->append(C)Lscala/collection/mutable/StringBuilder;

    return-object p0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/generic/Growable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .param p1, "x"    # C

    .prologue
    .line 267
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(I)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 263
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(J)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .param p1, "x"    # J

    .prologue
    .line 264
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;
    .locals 2
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 200
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    return-object p0
.end method

.method public appendAll([CII)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .param p1, "xs"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 249
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 250
    return-object p0
.end method

.method public apply(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->apply(I)C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->apply(I)C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 113
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->setLength(I)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->clone()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/StringBuilder;
    .locals 3

    .prologue
    .line 412
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v0, v1}, Lscala/collection/mutable/StringBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion",
            "<",
            "Lscala/collection/mutable/IndexedSeq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->companion(Lscala/collection/mutable/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Ljava/lang/String;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->compare(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->compare(Lscala/collection/immutable/StringLike;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/math/Ordered$class;->compareTo(Lscala/math/Ordered;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3}, Lscala/collection/IndexedSeqOptimized$class;->copyToArray(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;II)V

    return-void
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->drop(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public exists(Lscala/Function1;)Z
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->exists(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2",
            "<TB;",
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->foldLeft(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forall(Lscala/Function1;)Z
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->forall(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
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
    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->foreach(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->head(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexWhere(Lscala/Function1;I)I
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .param p2, "from"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/StringBuilder;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->isEmpty(Lscala/collection/IndexedSeqOptimized;)Z

    move-result v0

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
    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I

    move-result v0

    return v0
.end method

.method public linesWithSeparators()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->linesWithSeparators(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
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
            "Ljava/lang/String;",
            "TNewTo;>;)",
            "Lscala/collection/mutable/Builder",
            "<",
            "Ljava/lang/Object;",
            "TNewTo;>;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->newBuilder()Lscala/collection/mutable/GrowingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/GrowingBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/GrowingBuilder",
            "<",
            "Ljava/lang/Object;",
            "Lscala/collection/mutable/StringBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lscala/collection/mutable/GrowingBuilder;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-direct {v0, v1}, Lscala/collection/mutable/GrowingBuilder;-><init>(Lscala/collection/generic/Growable;)V

    return-object v0
.end method

.method public r(Lscala/collection/Seq;)Lscala/util/matching/Regex;
    .locals 1
    .param p1, "groupNames"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/util/matching/Regex;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->r(Lscala/collection/immutable/StringLike;Lscala/collection/Seq;)Lscala/util/matching/Regex;

    move-result-object v0

    return-object v0
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TB;",
            "Ljava/lang/Object;",
            "TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->result()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public result()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->reverse()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lscala/collection/mutable/StringBuilder;
    .locals 3

    .prologue
    .line 410
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/StringBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method public reverseIterator()Lscala/collection/Iterator;
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
    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverseIterator(Lscala/collection/IndexedSeqOptimized;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public sameElements(Lscala/collection/GenIterable;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable",
            "<TB;>;)Z"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "op"    # Lscala/Function2;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

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
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->seq(Lscala/collection/mutable/IndexedSeq;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Seq;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public setCharAt(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .prologue
    .line 137
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    return-void
.end method

.method public setLength(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public sizeHint(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 31
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
    .line 31
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
    .line 31
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
    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/StringLike$class;->slice(Lscala/collection/immutable/StringLike;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public stripMargin(C)Ljava/lang/String;
    .locals 1
    .param p1, "marginChar"    # C

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->stripMargin(Lscala/collection/immutable/StringLike;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 166
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->thisCollection()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->thisCollection()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->thisCollection()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/mutable/IndexedSeq;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lscala/collection/mutable/StringBuilder;->thisCollection()Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/mutable/StringBuilder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1
    .param p1, "evidence$1"    # Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag",
            "<TB;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->toArray(Lscala/collection/immutable/StringLike;Lscala/reflect/ClassTag;)Ljava/lang/Object;

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
    .line 31
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, Lscala/collection/mutable/StringBuilder;

    .end local p1    # "repr":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/mutable/StringBuilder;->toCollection(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Lscala/collection/mutable/StringBuilder;)Lscala/collection/mutable/StringBuilder;
    .locals 0
    .param p1, "repr"    # Lscala/collection/mutable/StringBuilder;

    .prologue
    .line 40
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Lscala/collection/mutable/StringBuilder;->underlying()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(IC)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "c"    # C

    .prologue
    .line 141
    invoke-virtual {p0, p1, p2}, Lscala/collection/mutable/StringBuilder;->setCharAt(IC)V

    return-void
.end method

.method public bridge synthetic update(ILjava/lang/Object;)V
    .locals 1
    .param p1, "idx"    # I
    .param p2, "elem"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    invoke-virtual {p0, p1, v0}, Lscala/collection/mutable/StringBuilder;->update(IC)V

    return-void
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable",
            "<TB;>;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/mutable/StringBuilder;",
            "Lscala/Tuple2",
            "<TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->zip(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/mutable/StringBuilder;",
            "Lscala/Tuple2",
            "<TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
