.class public abstract Lscala/collection/mutable/AbstractBuffer;
.super Lscala/collection/mutable/AbstractSeq;
.source "Buffer.scala"

# interfaces
.implements Lscala/collection/mutable/Buffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/AbstractSeq",
        "<TA;>;",
        "Lscala/collection/mutable/Buffer",
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
    .line 49
    invoke-direct {p0}, Lscala/collection/mutable/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/generic/Shrinkable$class;->$init$(Lscala/collection/generic/Shrinkable;)V

    invoke-static {p0}, Lscala/collection/generic/Subtractable$class;->$init$(Lscala/collection/generic/Subtractable;)V

    invoke-static {p0}, Lscala/collection/mutable/BufferLike$class;->$init$(Lscala/collection/mutable/Buffer;)V

    invoke-static {p0}, Lscala/collection/mutable/Buffer$class;->$init$(Lscala/collection/mutable/Buffer;)V

    return-void
.end method


# virtual methods
.method public $plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem1"    # Ljava/lang/Object;
    .param p2, "elem2"    # Ljava/lang/Object;
    .param p3, "elems"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;",
            "Lscala/collection/Seq",
            "<TA;>;)",
            "Lscala/collection/generic/Growable",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0, p1, p2, p3}, Lscala/collection/generic/Growable$class;->$plus$eq(Lscala/collection/generic/Growable;Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 1
    .param p1, "xs"    # Lscala/collection/GenTraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce",
            "<TA;>;)",
            "Lscala/collection/mutable/Buffer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->$plus$plus(Lscala/collection/mutable/Buffer;Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)",
            "Lscala/collection/generic/Growable",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq$colon(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->$plus$plus$eq$colon(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public append(Lscala/collection/Seq;)V
    .locals 0
    .param p1, "elems"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->append(Lscala/collection/mutable/Buffer;Lscala/collection/Seq;)V

    return-void
.end method

.method public appendAll(Lscala/collection/TraversableOnce;)V
    .locals 0
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->appendAll(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->clone()Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Buffer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0}, Lscala/collection/mutable/BufferLike$class;->clone(Lscala/collection/mutable/Buffer;)Lscala/collection/mutable/Buffer;

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
            "Lscala/collection/mutable/Buffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0}, Lscala/collection/mutable/Buffer$class;->companion(Lscala/collection/mutable/Buffer;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILscala/collection/Seq;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "elems"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/Seq",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/BufferLike$class;->insert(Lscala/collection/mutable/Buffer;ILscala/collection/Seq;)V

    return-void
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 49
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/AbstractBuffer;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public prepend(Lscala/collection/Seq;)V
    .locals 0
    .param p1, "elems"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->prepend(Lscala/collection/mutable/Buffer;Lscala/collection/Seq;)V

    return-void
.end method

.method public prependAll(Lscala/collection/TraversableOnce;)V
    .locals 0
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0, p1}, Lscala/collection/mutable/BufferLike$class;->prependAll(Lscala/collection/mutable/Buffer;Lscala/collection/TraversableOnce;)V

    return-void
.end method

.method public remove(II)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "count"    # I

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/BufferLike$class;->remove(Lscala/collection/mutable/Buffer;II)V

    return-void
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lscala/collection/mutable/BufferLike$class;->stringPrefix(Lscala/collection/mutable/Buffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractBuffer;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method
