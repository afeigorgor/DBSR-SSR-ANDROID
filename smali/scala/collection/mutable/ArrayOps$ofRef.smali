.class public final Lscala/collection/mutable/ArrayOps$ofRef;
.super Ljava/lang/Object;
.source "ArrayOps.scala"

# interfaces
.implements Lscala/collection/mutable/ArrayOps;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/ArrayOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ofRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/ArrayOps",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final repr:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "repr"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lscala/collection/mutable/ArrayOps$ofRef;->repr:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->$init$(Lscala/collection/TraversableOnce;)V

    invoke-static {p0}, Lscala/collection/Parallelizable$class;->$init$(Lscala/collection/Parallelizable;)V

    invoke-static {p0}, Lscala/collection/TraversableLike$class;->$init$(Lscala/collection/TraversableLike;)V

    invoke-static {p0}, Lscala/collection/IterableLike$class;->$init$(Lscala/collection/IterableLike;)V

    invoke-static {p0}, Lscala/collection/GenSeqLike$class;->$init$(Lscala/collection/GenSeqLike;)V

    invoke-static {p0}, Lscala/collection/SeqLike$class;->$init$(Lscala/collection/SeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->$init$(Lscala/collection/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/IndexedSeqLike$class;->$init$(Lscala/collection/mutable/IndexedSeqLike;)V

    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->$init$(Lscala/collection/IndexedSeqOptimized;)V

    invoke-static {p0}, Lscala/collection/mutable/ArrayLike$class;->$init$(Lscala/collection/mutable/ArrayLike;)V

    invoke-static {p0}, Lscala/collection/CustomParallelizable$class;->$init$(Lscala/collection/CustomParallelizable;)V

    invoke-static {p0}, Lscala/collection/mutable/ArrayOps$class;->$init$(Lscala/collection/mutable/ArrayOps;)V

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
            "<TB;TT;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableOnce$class;->$div$colon(Lscala/collection/TraversableOnce;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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
    .line 186
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/TraversableOnce$class;->addString(Lscala/collection/TraversableOnce;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 193
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/ArrayOps$ofRef$;->apply$extension([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->canEqual(Lscala/collection/IterableLike;Ljava/lang/Object;)Z

    move-result v0

    return v0
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
            "<TT;TB;>;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->collectFirst(Lscala/collection/TraversableOnce;Lscala/PartialFunction;)Lscala/Option;

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
    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->contains(Lscala/collection/SeqLike;Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 186
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
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/mutable/ArrayOps$class;->copyToArray(Lscala/collection/mutable/ArrayOps;Ljava/lang/Object;II)V

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
    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->copyToBuffer(Lscala/collection/TraversableOnce;Lscala/collection/mutable/Buffer;)V

    return-void
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
            "<TT;TB;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->corresponds(Lscala/collection/SeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result v0

    return v0
.end method

.method public distinct()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/SeqLike$class;->distinct(Lscala/collection/SeqLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->drop(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$1"    # Ljava/lang/Object;

    .prologue
    .line 186
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/ArrayOps$ofRef$;->equals$extension([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->exists(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public filter(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->filter(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->filterNot(Lscala/collection/TraversableLike;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public flatten(Lscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1
    .param p1, "asTrav"    # Lscala/Function1;
    .param p2, "m"    # Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TT;",
            "Lscala/collection/Traversable",
            "<TU;>;>;",
            "Lscala/reflect/ClassTag",
            "<TU;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/ArrayOps$class;->flatten(Lscala/collection/mutable/ArrayOps;Lscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

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
            "<TB;TT;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 186
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
    .line 186
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
    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->foreach(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->hashCode$extension([Ljava/lang/Object;)I

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
    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->head(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 186
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
    .line 186
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
            "<TT;",
            "Ljava/lang/Object;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->indexWhere(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public isDefinedAt(I)Z
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/GenSeqLike$class;->isDefinedAt(Lscala/collection/GenSeqLike;I)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->isEmpty(Lscala/collection/IndexedSeqOptimized;)Z

    move-result v0

    return v0
.end method

.method public final isTraversableAgain()Z
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->isTraversableAgain(Lscala/collection/TraversableLike;)Z

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
    .line 186
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
    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->last(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->length$extension([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->lengthCompare(Lscala/collection/IndexedSeqOptimized;I)I

    move-result v0

    return v0
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
            "<TT;TB;>;",
            "Lscala/collection/generic/CanBuildFrom",
            "<[TT;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mkString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mkString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 186
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
    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableOnce$class;->mkString(Lscala/collection/TraversableOnce;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilder()Lscala/collection/mutable/Builder;
    .locals 2

    .prologue
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->newBuilder$extension([Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;

    move-result-object v0

    return-object v0
.end method

.method public nonEmpty()Z
    .locals 1

    .prologue
    .line 186
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
            "<TB;TT;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->reduceLeft(Lscala/collection/IndexedSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

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
            "<TB;TT;TB;>;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 186
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
    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceOption(Lscala/collection/TraversableOnce;Lscala/Function2;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic repr()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public repr()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lscala/collection/mutable/ArrayOps$ofRef;->repr:[Ljava/lang/Object;

    return-object v0
.end method

.method public reverse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
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
    .line 186
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
    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->sameElements(Lscala/collection/IndexedSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$head()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->last(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "op"    # Lscala/Function2;

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->reduceLeft(Lscala/collection/TraversableOnce;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->tail(Lscala/collection/TraversableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$IndexedSeqOptimized$$super$zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$mutable$ArrayOps$$super$toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1
    .param p1, "evidence$1"    # Lscala/reflect/ClassTag;

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->toArray(Lscala/collection/TraversableOnce;Lscala/reflect/ClassTag;)Ljava/lang/Object;

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
    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->segmentLength(Lscala/collection/IndexedSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic seq()Lscala/collection/IndexedSeq;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->seq()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->seq()Lscala/collection/mutable/IndexedSeq;

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
    .line 186
    invoke-static {p0}, Lscala/collection/mutable/ArrayOps$class;->seq(Lscala/collection/mutable/ArrayOps;)Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/SeqLike$class;->size(Lscala/collection/SeqLike;)I

    move-result v0

    return v0
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 186
    invoke-static {p0, p1, p2}, Lscala/collection/IndexedSeqOptimized$class;->slice(Lscala/collection/IndexedSeqOptimized;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sliceWithKnownBound(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 186
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
    .line 186
    invoke-static {p0, p1, p2, p3}, Lscala/collection/TraversableLike$class;->sliceWithKnownDelta(Lscala/collection/TraversableLike;III)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sortWith(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "lt"    # Lscala/Function2;

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->sortWith(Lscala/collection/SeqLike;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public sorted(Lscala/math/Ordering;)Ljava/lang/Object;
    .locals 1
    .param p1, "ord"    # Lscala/math/Ordering;

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/SeqLike$class;->sorted(Lscala/collection/SeqLike;Lscala/math/Ordering;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
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
    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableOnce$class;->sum(Lscala/collection/TraversableOnce;Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public tail()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqOptimized$class;->tail(Lscala/collection/IndexedSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/IndexedSeqOptimized$class;->take(Lscala/collection/IndexedSeqOptimized;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 2

    .prologue
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->thisCollection$extension([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 2

    .prologue
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->thisCollection$extension([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/mutable/IndexedSeq;
    .locals 2

    .prologue
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayOps$ofRef$;->thisCollection$extension([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

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
            "TT;TCol;>;)TCol;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p1}, Lscala/collection/TraversableLike$class;->to(Lscala/collection/TraversableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1
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
    .line 186
    invoke-static {p0, p1}, Lscala/collection/mutable/ArrayOps$class;->toArray(Lscala/collection/mutable/ArrayOps;Lscala/reflect/ClassTag;)Ljava/lang/Object;

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
    .line 186
    invoke-static {p0}, Lscala/collection/IndexedSeqLike$class;->toBuffer(Lscala/collection/IndexedSeqLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 2
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    sget-object v0, Lscala/collection/mutable/ArrayOps$ofRef$;->MODULE$:Lscala/collection/mutable/ArrayOps$ofRef$;

    .line 186
    invoke-virtual {p0}, Lscala/collection/mutable/ArrayOps$ofRef;->repr()[Ljava/lang/Object;

    move-result-object v1

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "repr":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lscala/collection/mutable/ArrayOps$ofRef$;->toCollection$extension([Ljava/lang/Object;[Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toIterator(Lscala/collection/IterableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
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
            "<TT;",
            "Lscala/Tuple2",
            "<TT;TU;>;>;)",
            "Lscala/collection/immutable/Map",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 186
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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/SeqLike$class;->toSeq(Lscala/collection/SeqLike;)Lscala/collection/Seq;

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
    .line 186
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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toStream(Lscala/collection/IterableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/SeqLike$class;->toString(Lscala/collection/SeqLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toTraversable()Lscala/collection/Traversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Traversable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
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
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0}, Lscala/collection/TraversableOnce$class;->toVector(Lscala/collection/TraversableOnce;)Lscala/collection/immutable/Vector;

    move-result-object v0

    return-object v0
.end method
