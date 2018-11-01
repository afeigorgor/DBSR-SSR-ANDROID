.class public abstract Lscala/collection/AbstractTraversable;
.super Ljava/lang/Object;
.source "Traversable.scala"

# interfaces
.implements Lscala/collection/Traversable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/Traversable",
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
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Parallelizable$class;->$init$(Lscala/collection/Parallelizable;)V

    invoke-static {p0}, Lscala/collection/TraversableLike$class;->$init$(Lscala/collection/TraversableLike;)V

    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->$init$(Lscala/collection/generic/GenericTraversableTemplate;)V

    invoke-static {p0}, Lscala/collection/GenTraversable$class;->$init$(Lscala/collection/GenTraversable;)V

    invoke-static {p0}, Lscala/collection/Traversable$class;->$init$(Lscala/collection/Traversable;)V

    return-void
.end method


# virtual methods
.method public $div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;",
            "Lscala/Function2",
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
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
            "Lscala/collection/Traversable",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .param p1, "b"    # Lscala/collection/mutable/StringBuilder;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "sep"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public collectFirst(Lscala/PartialFunction;)Lscala/Option;
    .locals 1
    .param p1, "pf"    # Lscala/PartialFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/PartialFunction",
            "<TA;TB;>;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

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
            "Lscala/collection/Traversable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/Traversable$class;->companion(Lscala/collection/Traversable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public copyToArray(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->copyToArray(Lscala/collection/TraversableOnce;Ljava/lang/Object;I)V

    return-void
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
    .line 104
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->copyToArray(Lscala/collection/TraversableLike;Ljava/lang/Object;II)V

    return-void
.end method

.method public copyToBuffer(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .param p1, "dest"    # Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/Buffer",
            "<TB;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->drop(Lscala/collection/TraversableLike;I)Ljava/lang/Object;

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
            "<TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->exists(Lscala/collection/TraversableLike;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->filter(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->filterNot(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->foldLeft(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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
            "<TA;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->forall(Lscala/collection/TraversableLike;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public genericBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder",
            "<TB;",
            "Lscala/collection/Traversable",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->genericBuilder(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->head(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->isEmpty(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->isTraversableAgain(Lscala/collection/TraversableLike;)Z

    move-result v0

    return v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "f"    # Lscala/Function1;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/Traversable",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder",
            "<TA;",
            "Lscala/collection/Traversable",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/generic/GenericTraversableTemplate$class;->newBuilder(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->nonEmpty(Lscala/collection/TraversableOnce;)Z

    move-result v0

    return v0
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
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reduceLeftOption(Lscala/Function2;)Lscala/Option;
    .locals 1
    .param p1, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TB;TA;TB;>;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeftOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public reduceOption(Lscala/Function2;)Lscala/Option;
    .locals 1
    .param p1, "op"    # Lscala/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function2",
            "<TA1;TA1;TA1;>;)",
            "Lscala/Option",
            "<TA1;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public repr()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->repr(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/Traversable$class;->seq(Lscala/collection/Traversable;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lscala/collection/AbstractTraversable;->seq()Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->size(Lscala/collection/TraversableOnce;)I

    move-result v0

    return v0
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->slice(Lscala/collection/TraversableLike;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sliceWithKnownBound(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 104
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->sliceWithKnownBound(Lscala/collection/TraversableLike;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sliceWithKnownDelta(III)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I
    .param p3, "delta"    # I

    .prologue
    .line 104
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->sliceWithKnownDelta(Lscala/collection/TraversableLike;III)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->stringPrefix(Lscala/collection/TraversableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sum(Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 1
    .param p1, "num"    # Lscala/math/Numeric;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/math/Numeric",
            "<TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->take(Lscala/collection/TraversableLike;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->thisCollection(Lscala/collection/TraversableLike;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "cbf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Col:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/runtime/Nothing$;",
            "TA;TCol;>;)TCol;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->to(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toBuffer(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
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
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toIterator(Lscala/collection/TraversableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toList(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 1
    .param p1, "ev"    # Lscala/Predef$$less$colon$less;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less",
            "<TA;",
            "Lscala/Tuple2",
            "<TT;TU;>;>;)",
            "Lscala/collection/immutable/Map",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toMap(Lscala/collection/TraversableOnce;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

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
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSeq(Lscala/collection/TraversableOnce;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toSet()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/immutable/Set",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toSet(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toStream(Lscala/collection/TraversableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toString(Lscala/collection/TraversableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toTraversable(Lscala/collection/TraversableLike;)Lscala/collection/Traversable;

    move-result-object v0

    return-object v0
.end method

.method public toVector()Lscala/collection/immutable/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Vector",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method
