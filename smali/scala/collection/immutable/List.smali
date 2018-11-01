.class public abstract Lscala/collection/immutable/List;
.super Lscala/collection/AbstractSeq;
.source "List.scala"

# interfaces
.implements Ljava/io/Serializable;
.implements Lscala/Product;
.implements Lscala/collection/LinearSeqOptimized;
.implements Lscala/collection/immutable/LinearSeq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq",
        "<TA;>;",
        "Ljava/io/Serializable;",
        "Lscala/Product;",
        "Lscala/collection/LinearSeqOptimized",
        "<TA;",
        "Lscala/collection/immutable/List",
        "<TA;>;>;",
        "Lscala/collection/immutable/LinearSeq",
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
    .line 84
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->$init$(Lscala/collection/immutable/Seq;)V

    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->$init$(Lscala/collection/LinearSeqLike;)V

    invoke-static {p0}, Lscala/collection/LinearSeq$class;->$init$(Lscala/collection/LinearSeq;)V

    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->$init$(Lscala/collection/immutable/LinearSeq;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->$init$(Lscala/collection/LinearSeqOptimized;)V

    return-void
.end method


# virtual methods
.method public $colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/collection/immutable/List",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lscala/collection/immutable/$colon$colon;

    invoke-direct {v0, p1, p0}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    return-object v0
.end method

.method public $colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;
    .locals 1
    .param p1, "prefix"    # Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/immutable/List",
            "<TB;>;)",
            "Lscala/collection/immutable/List",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "prefix":Lscala/collection/immutable/List;
    :goto_0
    return-object p1

    .line 127
    .restart local p1    # "prefix":Lscala/collection/immutable/List;
    :cond_0
    invoke-virtual {p1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 128
    :cond_1
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lscala/collection/mutable/ListBuffer;->prependToList(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object p1

    goto :goto_0
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
            "Lscala/collection/immutable/List",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 199
    instance-of v0, p2, Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 200
    :cond_0
    invoke-static {p0, p1, p2}, Lscala/collection/SeqLike$class;->$plus$colon(Lscala/collection/SeqLike;Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
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
            "Lscala/collection/immutable/List",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 195
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v0}, Lscala/collection/immutable/List$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v0

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Lscala/collection/GenTraversableOnce;->seq()Lscala/collection/TraversableOnce;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/TraversableOnce;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0, p0}, Lscala/collection/immutable/List;->$colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 196
    :cond_0
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->$plus$plus(Lscala/collection/TraversableLike;Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TA;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->apply(Lscala/collection/LinearSeqOptimized;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/List;->apply(I)Ljava/lang/Object;

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
            "Lscala/collection/immutable/List;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    sget-object v0, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

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
    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->contains(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final corresponds(Lscala/collection/GenSeq;Lscala/Function2;)Z
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
    .line 84
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqLike$class;->corresponds(Lscala/collection/LinearSeqLike;Lscala/collection/GenSeq;Lscala/Function2;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic drop(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->drop(I)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic drop(I)Lscala/collection/LinearSeqOptimized;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->drop(I)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public drop(I)Lscala/collection/immutable/List;
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 221
    move-object v1, p0

    .line 222
    .local v1, "these":Lscala/collection/immutable/List;
    move v0, p1

    .line 223
    .local v0, "count":I
    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v0, :cond_0

    .line 224
    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "these":Lscala/collection/immutable/List;
    check-cast v1, Lscala/collection/immutable/List;

    .line 225
    .restart local v1    # "these":Lscala/collection/immutable/List;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 227
    :cond_0
    return-object v1
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
    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->exists(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z

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
            "<TB;TA;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->foldLeft(Lscala/collection/LinearSeqOptimized;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

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
    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->forall(Lscala/collection/LinearSeqOptimized;Lscala/Function1;)Z

    move-result v0

    return v0
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
            "<TA;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 379
    move-object v0, p0

    .line 380
    .local v0, "these":Lscala/collection/immutable/List;
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    invoke-virtual {v0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    invoke-virtual {v0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "these":Lscala/collection/immutable/List;
    check-cast v0, Lscala/collection/immutable/List;

    .restart local v0    # "these":Lscala/collection/immutable/List;
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->hashCode(Lscala/collection/LinearSeqLike;)I

    move-result v0

    return v0
.end method

.method public abstract head()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation
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
    .line 84
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->indexWhere(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public isDefinedAt(I)Z
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->isDefinedAt(Lscala/collection/LinearSeqOptimized;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 84
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/immutable/List;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public abstract isEmpty()Z
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->iterator(Lscala/collection/LinearSeqLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->last(Lscala/collection/LinearSeqOptimized;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lscala/collection/LinearSeqOptimized$class;->length(Lscala/collection/LinearSeqOptimized;)I

    move-result v0

    return v0
.end method

.method public lengthCompare(I)I
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->lengthCompare(Lscala/collection/LinearSeqOptimized;I)I

    move-result v0

    return v0
.end method

.method public final map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 6
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
            "Lscala/collection/immutable/List",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 271
    sget-object v4, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v4}, Lscala/collection/immutable/List$;->ReusableCBF()Lscala/collection/generic/GenTraversableFactory$GenericCanBuildFrom;

    move-result-object v4

    if-ne p2, v4, :cond_2

    .line 272
    sget-object v4, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-ne p0, v4, :cond_1

    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    .line 271
    :cond_0
    :goto_0
    return-object v0

    .line 273
    :cond_1
    new-instance v0, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v0, v4, v5}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 274
    .local v0, "h":Lscala/collection/immutable/$colon$colon;
    move-object v3, v0

    .line 275
    .local v3, "t":Lscala/collection/immutable/$colon$colon;
    invoke-virtual {p0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/List;

    .line 276
    .local v2, "rest":Lscala/collection/immutable/List;
    :goto_1
    sget-object v4, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    if-eq v2, v4, :cond_0

    .line 277
    new-instance v1, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v2}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v1, v4, v5}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 278
    .local v1, "nx":Lscala/collection/immutable/$colon$colon;
    invoke-virtual {v3, v1}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 279
    move-object v3, v1

    .line 280
    invoke-virtual {v2}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "rest":Lscala/collection/immutable/List;
    check-cast v2, Lscala/collection/immutable/List;

    .restart local v2    # "rest":Lscala/collection/immutable/List;
    goto :goto_1

    .line 285
    .end local v0    # "h":Lscala/collection/immutable/$colon$colon;
    .end local v1    # "nx":Lscala/collection/immutable/$colon$colon;
    .end local v2    # "rest":Lscala/collection/immutable/List;
    .end local v3    # "t":Lscala/collection/immutable/$colon$colon;
    :cond_2
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public productIterator()Lscala/collection/Iterator;
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
    .line 84
    invoke-static {p0}, Lscala/Product$class;->productIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-static {p0}, Lscala/Product$class;->productPrefix(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reduceLeft(Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p1, "f"    # Lscala/Function2;
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
    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->reduceLeft(Lscala/collection/LinearSeqOptimized;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->reverse()Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lscala/collection/immutable/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 387
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    .line 388
    .local v0, "result":Lscala/collection/immutable/List;
    move-object v1, p0

    .line 389
    .end local v0    # "result":Lscala/collection/immutable/List;
    :goto_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    return-object v0

    .line 390
    :cond_0
    invoke-virtual {v1}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/immutable/List;->$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/List;

    move-result-object v0

    .line 391
    invoke-virtual {v1}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/List;

    move-object v1, v2

    goto :goto_0
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
    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqOptimized$class;->sameElements(Lscala/collection/LinearSeqOptimized;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$LinearSeqOptimized$$super$sameElements(Lscala/collection/GenIterable;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
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
    .line 84
    invoke-static {p0, p1, p2}, Lscala/collection/LinearSeqOptimized$class;->segmentLength(Lscala/collection/LinearSeqOptimized;Lscala/Function1;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/LinearSeq;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->seq()Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/LinearSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/LinearSeq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lscala/collection/immutable/LinearSeq$class;->seq(Lscala/collection/immutable/LinearSeq;)Lscala/collection/immutable/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic slice(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/List;->slice(II)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lscala/collection/immutable/List;
    .locals 3
    .param p1, "from"    # I
    .param p2, "until"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 241
    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lscala/math/package$;->max(II)I

    move-result v0

    .line 242
    .local v0, "lo":I
    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    .line 240
    :goto_0
    return-object v1

    .line 243
    :cond_1
    invoke-virtual {p0, v0}, Lscala/collection/immutable/List;->drop(I)Lscala/collection/immutable/List;

    move-result-object v1

    sub-int v2, p2, v0

    invoke-virtual {v1, v2}, Lscala/collection/immutable/List;->take(I)Lscala/collection/immutable/List;

    move-result-object v1

    goto :goto_0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    const-string v0, "List"

    return-object v0
.end method

.method public bridge synthetic tail()Lscala/collection/immutable/List;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    return-object v0
.end method

.method public bridge synthetic take(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->take(I)Lscala/collection/immutable/List;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Lscala/collection/immutable/List;
    .locals 7
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 205
    invoke-virtual {p0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    if-gtz p1, :cond_3

    :cond_0
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    :cond_1
    move-object p0, v0

    .line 210
    .end local p0    # "this":Lscala/collection/immutable/List;
    :cond_2
    return-object p0

    .line 206
    .restart local p0    # "this":Lscala/collection/immutable/List;
    :cond_3
    new-instance v0, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {p0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v0, v5, v6}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 207
    .local v0, "h":Lscala/collection/immutable/$colon$colon;
    move-object v4, v0

    .line 208
    .local v4, "t":Lscala/collection/immutable/$colon$colon;
    invoke-virtual {p0}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/immutable/List;

    .line 209
    .local v3, "rest":Lscala/collection/immutable/List;
    const/4 v1, 0x1

    .line 210
    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    if-ge v1, p1, :cond_4

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_1

    .line 211
    add-int/lit8 v1, v1, 0x1

    .line 212
    new-instance v2, Lscala/collection/immutable/$colon$colon;

    invoke-virtual {v3}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-direct {v2, v5, v6}, Lscala/collection/immutable/$colon$colon;-><init>(Ljava/lang/Object;Lscala/collection/immutable/List;)V

    .line 213
    .local v2, "nx":Lscala/collection/immutable/$colon$colon;
    invoke-virtual {v4, v2}, Lscala/collection/immutable/$colon$colon;->tl_$eq(Lscala/collection/immutable/List;)V

    .line 214
    move-object v4, v2

    .line 215
    invoke-virtual {v3}, Lscala/collection/immutable/List;->tail()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "rest":Lscala/collection/immutable/List;
    check-cast v3, Lscala/collection/immutable/List;

    .restart local v3    # "rest":Lscala/collection/immutable/List;
    goto :goto_0

    .line 210
    .end local v2    # "nx":Lscala/collection/immutable/$colon$colon;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/LinearSeq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/LinearSeq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0}, Lscala/collection/LinearSeqLike$class;->thisCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->thisCollection()Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;
    .locals 1
    .param p1, "repr"    # Lscala/collection/LinearSeqLike;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lscala/collection/LinearSeqLike$class;->toCollection(Lscala/collection/LinearSeqLike;Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toCollection(Ljava/lang/Object;)Lscala/collection/Seq;
    .locals 1
    .param p1, "repr"    # Ljava/lang/Object;

    .prologue
    .line 84
    check-cast p1, Lscala/collection/LinearSeqLike;

    .end local p1    # "repr":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/immutable/List;->toCollection(Lscala/collection/LinearSeqLike;)Lscala/collection/LinearSeq;

    move-result-object v0

    return-object v0
.end method

.method public toList()Lscala/collection/immutable/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 203
    return-object p0
.end method

.method public bridge synthetic toSeq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lscala/collection/immutable/List;->toSeq()Lscala/collection/immutable/Seq;

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
    .line 84
    invoke-static {p0}, Lscala/collection/immutable/Seq$class;->toSeq(Lscala/collection/immutable/Seq;)Lscala/collection/immutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    :goto_0
    return-object v0

    .line 403
    :cond_0
    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-virtual {p0}, Lscala/collection/immutable/List;->head()Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/List$$anonfun$toStream$1;

    invoke-direct {v2, p0}, Lscala/collection/immutable/List$$anonfun$toStream$1;-><init>(Lscala/collection/immutable/List;)V

    invoke-direct {v0, v1, v2}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0
.end method
