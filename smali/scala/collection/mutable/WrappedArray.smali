.class public abstract Lscala/collection/mutable/WrappedArray;
.super Lscala/collection/mutable/AbstractSeq;
.source "WrappedArray.scala"

# interfaces
.implements Lscala/collection/CustomParallelizable;
.implements Lscala/collection/mutable/ArrayLike;
.implements Lscala/collection/mutable/IndexedSeq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/WrappedArray$ofRef;,
        Lscala/collection/mutable/WrappedArray$ofInt;,
        Lscala/collection/mutable/WrappedArray$ofByte;,
        Lscala/collection/mutable/WrappedArray$ofChar;,
        Lscala/collection/mutable/WrappedArray$ofLong;,
        Lscala/collection/mutable/WrappedArray$ofUnit;,
        Lscala/collection/mutable/WrappedArray$ofShort;,
        Lscala/collection/mutable/WrappedArray$ofFloat;,
        Lscala/collection/mutable/WrappedArray$ofDouble;,
        Lscala/collection/mutable/WrappedArray$ofBoolean;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractSeq",
        "<TT;>;",
        "Lscala/collection/CustomParallelizable",
        "<TT;",
        "Ljava/lang/Object",
        "<TT;>;>;",
        "Lscala/collection/mutable/ArrayLike",
        "<TT;",
        "Lscala/collection/mutable/WrappedArray",
        "<TT;>;>;",
        "Lscala/collection/mutable/IndexedSeq",
        "<TT;>;"
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
    .line 36
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeq$class;->$init$(Lscala/collection/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->$init$(Lscala/collection/mutable/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->$init$(Lscala/collection/mutable/IndexedSeq;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->$init$(Lscala/collection/IndexedSeqOptimized;)V

    invoke-static {p0}, Lscala/collection/mutable/ArrayLike$class;->$init$(Lscala/collection/mutable/ArrayLike;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    return-void
.end method

.method private elementClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->array()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract array()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->clone()Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/WrappedArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lscala/collection/mutable/WrappedArray$;->MODULE$:Lscala/collection/mutable/WrappedArray$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->array()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/runtime/ScalaRunTime$;->array_clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/WrappedArray$;->make(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

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
            "Lscala/collection/mutable/IndexedSeq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->companion(Lscala/collection/mutable/IndexedSeq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
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
    .line 35
    invoke-static {p0, p1, p2, p3}, Lscala/collection/IndexedSeqOptimized$class;->copyToArray(Lscala/collection/IndexedSeqOptimized;Ljava/lang/Object;II)V

    return-void
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 35
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->drop(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract elemTag()Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/reflect/ClassTag",
            "<TT;>;"
        }
    .end annotation
.end method

.method public exists(Lscala/Function1;)Z
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 35
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
            "<TB;TT;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 35
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
            "<TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 35
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
            "<TT;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->foreach(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->hashCode(Lscala/collection/IndexedSeqLike;)I

    move-result v0

    return v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 35
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
            "<TT;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 35
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/WrappedArray;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 35
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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->iterator(Lscala/collection/IndexedSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lengthCompare(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 35
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I

    move-result v0

    return v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder",
            "<TT;",
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lscala/collection/mutable/WrappedArrayBuilder;

    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->elemTag()Lscala/reflect/ClassTag;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/WrappedArrayBuilder;-><init>(Lscala/reflect/ClassTag;)V

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
            "<TB;TT;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
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
    .line 35
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "op"    # Lscala/Function2;

    .prologue
    .line 35
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;

    .prologue
    .line 35
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 35
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
            "<TT;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/IndexedSeq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0}, Lscala/collection/mutable/IndexedSeq$class;->seq(Lscala/collection/mutable/IndexedSeq;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/mutable/Seq;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->slice(Lscala/collection/IndexedSeqOptimized;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "WrappedArray"

    return-object v0
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 35
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->thisCollection()Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->thisCollection()Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->thisCollection()Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/mutable/IndexedSeq;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->thisCollection()Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/mutable/WrappedArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    return-object p0
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 3
    .param p1, "evidence$1"    # Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag",
            "<TU;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1, p1}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 70
    .local v0, "thatElementClass":Ljava/lang/Class;
    invoke-direct {p0}, Lscala/collection/mutable/WrappedArray;->elementClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lscala/collection/mutable/WrappedArray;->array()Ljava/lang/Object;

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    .line 73
    :cond_0
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
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
    .line 35
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lscala/collection/mutable/WrappedArray;

    .end local p1    # "repr":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/mutable/WrappedArray;->toCollection(Lscala/collection/mutable/WrappedArray;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Lscala/collection/mutable/WrappedArray;)Lscala/collection/mutable/WrappedArray;
    .locals 0
    .param p1, "repr"    # Lscala/collection/mutable/WrappedArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;)",
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    return-object p1
.end method

.method public abstract update(ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation
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
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;",
            "Lscala/Tuple2",
            "<TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 35
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
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;",
            "Lscala/Tuple2",
            "<TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->zipWithIndex(Lscala/collection/IndexedSeqOptimized;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
