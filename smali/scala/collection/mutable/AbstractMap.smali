.class public abstract Lscala/collection/mutable/AbstractMap;
.super Lscala/collection/AbstractMap;
.source "Map.scala"

# interfaces
.implements Lscala/collection/mutable/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractMap",
        "<TA;TB;>;",
        "Lscala/collection/mutable/Map",
        "<TA;TB;>;"
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
    .line 80
    invoke-direct {p0}, Lscala/collection/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/Traversable$class;->$init$(Lscala/collection/mutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->$init$(Lscala/collection/mutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/collection/generic/Shrinkable$class;->$init$(Lscala/collection/generic/Shrinkable;)V

    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->$init$(Lscala/collection/mutable/Cloneable;)V

    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->$init$(Lscala/collection/mutable/MapLike;)V

    invoke-static {p0}, Lscala/collection/mutable/Map$class;->$init$(Lscala/collection/mutable/Map;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->$minus(Lscala/collection/mutable/MapLike;Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2",
            "<TA;TB1;>;)",
            "Lscala/collection/mutable/Map",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/MapLike$class;->$plus(Lscala/collection/mutable/MapLike;Lscala/Tuple2;)Lscala/collection/mutable/Map;

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
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;>;)",
            "Lscala/collection/generic/Growable",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->clone(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Map;

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
            "Lscala/collection/mutable/Iterable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->companion(Lscala/collection/mutable/Iterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->empty()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lscala/collection/mutable/Map$class;->empty(Lscala/collection/mutable/Map;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lscala/collection/mutable/AbstractMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

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
            "Lscala/collection/mutable/Map",
            "<TA;TB;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;TNewTo;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

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
            "Lscala/Tuple2",
            "<TA;TB;>;",
            "Lscala/collection/mutable/Map",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->newBuilder(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/MapLike$class;->put(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lscala/collection/mutable/MapLike$class;->result(Lscala/collection/mutable/MapLike;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$mutable$Cloneable$$super$clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0}, Lscala/collection/mutable/Map$class;->seq(Lscala/collection/mutable/Map;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 80
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
    .line 80
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
    .line 80
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
    .line 80
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/MapLike$class;->update(Lscala/collection/mutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
