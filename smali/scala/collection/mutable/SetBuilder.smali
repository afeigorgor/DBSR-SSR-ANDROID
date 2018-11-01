.class public Lscala/collection/mutable/SetBuilder;
.super Ljava/lang/Object;
.source "SetBuilder.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Coll::",
        "Lscala/collection/Set",
        "<TA;>;:",
        "Lscala/collection/SetLike",
        "<TA;TColl;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder",
        "<TA;TColl;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private elems:Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TColl;"
        }
    .end annotation
.end field

.field private final empty:Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TColl;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/Set;)V
    .locals 0
    .param p1, "empty"    # Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TColl;)V"
        }
    .end annotation

    .prologue
    .line 20
    iput-object p1, p0, Lscala/collection/mutable/SetBuilder;->empty:Lscala/collection/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 21
    iput-object p1, p0, Lscala/collection/mutable/SetBuilder;->elems:Lscala/collection/Set;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lscala/collection/mutable/SetBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lscala/collection/mutable/SetBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetBuilder;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/SetBuilder;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/mutable/SetBuilder",
            "<TA;TColl;>;"
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lscala/collection/mutable/SetBuilder;->elems()Lscala/collection/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/SetBuilder;->elems_$eq(Lscala/collection/Set;)V

    return-object p0
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
    .line 20
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public elems()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TColl;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lscala/collection/mutable/SetBuilder;->elems:Lscala/collection/Set;

    return-object v0
.end method

.method public elems_$eq(Lscala/collection/Set;)V
    .locals 0
    .param p1, "x$1"    # Lscala/collection/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TColl;)V"
        }
    .end annotation

    .prologue
    .line 21
    iput-object p1, p0, Lscala/collection/mutable/SetBuilder;->elems:Lscala/collection/Set;

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
            "<TA;TNewTo;>;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lscala/collection/mutable/SetBuilder;->result()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TColl;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lscala/collection/mutable/SetBuilder;->elems()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 20
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
    .line 20
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
    .line 20
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
    .line 20
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
