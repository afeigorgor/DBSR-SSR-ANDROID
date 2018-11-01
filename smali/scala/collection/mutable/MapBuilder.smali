.class public Lscala/collection/mutable/MapBuilder;
.super Ljava/lang/Object;
.source "MapBuilder.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "Coll::",
        "Lscala/collection/GenMap",
        "<TA;TB;>;:",
        "Lscala/collection/GenMapLike",
        "<TA;TB;TColl;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder",
        "<",
        "Lscala/Tuple2",
        "<TA;TB;>;TColl;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private elems:Lscala/collection/GenMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TColl;"
        }
    .end annotation
.end field

.field private final empty:Lscala/collection/GenMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TColl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/GenMap;)V
    .locals 0
    .param p1, "empty"    # Lscala/collection/GenMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TColl;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lscala/collection/mutable/MapBuilder;->empty:Lscala/collection/GenMap;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 27
    iput-object p1, p0, Lscala/collection/mutable/MapBuilder;->elems:Lscala/collection/GenMap;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MapBuilder;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/mutable/MapBuilder;->$plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapBuilder;
    .locals 1
    .param p1, "x"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<TA;TB;>;)",
            "Lscala/collection/mutable/MapBuilder",
            "<TA;TB;TColl;>;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lscala/collection/mutable/MapBuilder;->elems()Lscala/collection/GenMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/GenMap;->$plus(Lscala/Tuple2;)Lscala/collection/GenMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/MapBuilder;->elems_$eq(Lscala/collection/GenMap;)V

    .line 33
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
            "Lscala/Tuple2",
            "<TA;TB;>;>;)",
            "Lscala/collection/generic/Growable",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public elems()Lscala/collection/GenMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TColl;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lscala/collection/mutable/MapBuilder;->elems:Lscala/collection/GenMap;

    return-object v0
.end method

.method public elems_$eq(Lscala/collection/GenMap;)V
    .locals 0
    .param p1, "x$1"    # Lscala/collection/GenMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TColl;)V"
        }
    .end annotation

    .prologue
    .line 27
    iput-object p1, p0, Lscala/collection/mutable/MapBuilder;->elems:Lscala/collection/GenMap;

    return-void
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
            "<TColl;TNewTo;>;)",
            "Lscala/collection/mutable/Builder",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;TNewTo;>;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lscala/collection/mutable/MapBuilder;->result()Lscala/collection/GenMap;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/GenMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TColl;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lscala/collection/mutable/MapBuilder;->elems()Lscala/collection/GenMap;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 25
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
    .line 25
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
    .line 25
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
    .line 25
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
