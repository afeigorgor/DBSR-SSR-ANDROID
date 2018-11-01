.class public Lscala/collection/mutable/GrowingBuilder;
.super Ljava/lang/Object;
.source "GrowingBuilder.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Elem:",
        "Ljava/lang/Object;",
        "To::",
        "Lscala/collection/generic/Growable",
        "<TElem;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder",
        "<TElem;TTo;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private elems:Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTo;"
        }
    .end annotation
.end field

.field private final empty:Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTo;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/generic/Growable;)V
    .locals 0
    .param p1, "empty"    # Lscala/collection/generic/Growable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTo;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p1, p0, Lscala/collection/mutable/GrowingBuilder;->empty:Lscala/collection/generic/Growable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 26
    iput-object p1, p0, Lscala/collection/mutable/GrowingBuilder;->elems:Lscala/collection/generic/Growable;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lscala/collection/mutable/GrowingBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/GrowingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lscala/collection/mutable/GrowingBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/GrowingBuilder;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/GrowingBuilder;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElem;)",
            "Lscala/collection/mutable/GrowingBuilder",
            "<TElem;TTo;>;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lscala/collection/mutable/GrowingBuilder;->elems()Lscala/collection/generic/Growable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/generic/Growable;->$plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;

    return-object p0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TElem;>;)",
            "Lscala/collection/generic/Growable",
            "<TElem;>;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public elems()Lscala/collection/generic/Growable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lscala/collection/mutable/GrowingBuilder;->elems:Lscala/collection/generic/Growable;

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
            "<TTo;TNewTo;>;)",
            "Lscala/collection/mutable/Builder",
            "<TElem;TNewTo;>;"
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
    invoke-virtual {p0}, Lscala/collection/mutable/GrowingBuilder;->result()Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/generic/Growable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTo;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lscala/collection/mutable/GrowingBuilder;->elems()Lscala/collection/generic/Growable;

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
