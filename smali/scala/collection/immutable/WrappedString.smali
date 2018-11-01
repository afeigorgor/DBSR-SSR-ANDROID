.class public Lscala/collection/immutable/WrappedString;
.super Lscala/collection/AbstractSeq;
.source "WrappedString.scala"

# interfaces
.implements Lscala/collection/immutable/IndexedSeq;
.implements Lscala/collection/immutable/StringLike;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/AbstractSeq",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/immutable/IndexedSeq",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/collection/immutable/StringLike",
        "<",
        "Lscala/collection/immutable/WrappedString;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final self:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "self"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lscala/collection/immutable/WrappedString;->self:Ljava/lang/String;

    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->$init$(Lscala/collection/immutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->$init$(Lscala/collection/IndexedSeqOptimized;)V

    invoke-static {p0}, Lscala/math/Ordered$class;->$init$(Lscala/math/Ordered;)V

    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->$init$(Lscala/collection/immutable/StringLike;)V

    return-void
.end method


# virtual methods
.method public apply(I)C
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->apply(Lscala/collection/immutable/StringLike;I)C

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->apply(I)C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/WrappedString;->apply(I)C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

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
    .line 33
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->companion(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Ljava/lang/String;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->compare(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->compare(Lscala/collection/immutable/StringLike;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 33
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
    .line 33
    invoke-static {p0, p1, p2, p3}, Lscala/collection/IndexedSeqOptimized$class;->copyToArray(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;II)V

    return-void
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 33
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
    .line 33
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
    .line 33
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
    .line 33
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
    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->foreach(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
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
    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/WrappedString;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 33
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
    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->self()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 33
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
    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->linesWithSeparators(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lscala/collection/immutable/StringLike$class;->mkString(Lscala/collection/immutable/StringLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder",
            "<",
            "Ljava/lang/Object;",
            "Lscala/collection/immutable/WrappedString;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lscala/collection/immutable/WrappedString$;->MODULE$:Lscala/collection/immutable/WrappedString$;

    invoke-virtual {v0}, Lscala/collection/immutable/WrappedString$;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

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
    .line 33
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
    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->reverse(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

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
    .line 33
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
    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "op"    # Lscala/Function2;

    .prologue
    .line 33
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;

    .prologue
    .line 33
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 33
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
    .line 33
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public self()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lscala/collection/immutable/WrappedString;->self:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->seq()Lscala/collection/immutable/IndexedSeq;

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
    .line 33
    invoke-static {p0}, Lscala/collection/immutable/IndexedSeq$class;->seq(Lscala/collection/immutable/IndexedSeq;)Lscala/collection/immutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/WrappedString;->slice(II)Lscala/collection/immutable/WrappedString;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lscala/collection/immutable/WrappedString;
    .locals 5
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 42
    if-gez p1, :cond_1

    const/4 v1, 0x0

    .line 43
    .local v1, "start":I
    :goto_0
    if-le p2, v1, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->repr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/WrappedString;

    invoke-virtual {v2}, Lscala/collection/immutable/WrappedString;->length()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 44
    :cond_0
    new-instance v2, Lscala/collection/immutable/WrappedString;

    const-string v3, ""

    invoke-direct {v2, v3}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    .line 47
    :goto_1
    return-object v2

    .end local v1    # "start":I
    :cond_1
    move v1, p1

    .line 42
    goto :goto_0

    .line 46
    .restart local v1    # "start":I
    :cond_2
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->length()I

    move-result v2

    if-le p2, v2, :cond_3

    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->length()I

    move-result v0

    .line 47
    .local v0, "end":I
    :goto_2
    new-instance v3, Lscala/collection/immutable/WrappedString;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->repr()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/WrappedString;

    invoke-virtual {v4, v2}, Lscala/Predef$;->unwrapString(Lscala/collection/immutable/WrappedString;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lscala/collection/immutable/WrappedString;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_1

    .end local v0    # "end":I
    :cond_3
    move v0, p2

    .line 46
    goto :goto_2
.end method

.method public stripMargin(C)Ljava/lang/String;
    .locals 1
    .param p1, "marginChar"    # C

    .prologue
    .line 33
    invoke-static {p0, p1}, Lscala/collection/immutable/StringLike$class;->stripMargin(Lscala/collection/immutable/StringLike;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->thisCollection()Lscala/collection/immutable/WrappedString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->thisCollection()Lscala/collection/immutable/WrappedString;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->thisCollection()Lscala/collection/immutable/WrappedString;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/immutable/WrappedString;
    .locals 0

    .prologue
    .line 35
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
    .line 33
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
    .line 33
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Lscala/collection/immutable/WrappedString;

    .end local p1    # "repr":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/immutable/WrappedString;->toCollection(Lscala/collection/immutable/WrappedString;)Lscala/collection/immutable/WrappedString;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Lscala/collection/immutable/WrappedString;)Lscala/collection/immutable/WrappedString;
    .locals 0
    .param p1, "repr"    # Lscala/collection/immutable/WrappedString;

    .prologue
    .line 36
    return-object p1
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->toSeq()Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/immutable/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Seq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lscala/collection/immutable/WrappedString;->self()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
            "Lscala/collection/immutable/WrappedString;",
            "Lscala/Tuple2",
            "<TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 33
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
            "Lscala/collection/immutable/WrappedString;",
            "Lscala/Tuple2",
            "<TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
