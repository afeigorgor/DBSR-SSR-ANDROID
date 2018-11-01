.class public abstract Lscala/collection/mutable/LazyBuilder;
.super Ljava/lang/Object;
.source "LazyBuilder.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Elem:",
        "Ljava/lang/Object;",
        "To:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder",
        "<TElem;TTo;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private parts:Lscala/collection/mutable/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/ListBuffer",
            "<",
            "Lscala/collection/TraversableOnce",
            "<TElem;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 23
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    iput-object v0, p0, Lscala/collection/mutable/LazyBuilder;->parts:Lscala/collection/mutable/ListBuffer;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LazyBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LazyBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LazyBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LazyBuilder;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/LazyBuilder;
    .locals 5
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElem;)",
            "Lscala/collection/mutable/LazyBuilder",
            "<TElem;TTo;>;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Lscala/collection/mutable/LazyBuilder;->parts()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/immutable/List$;->apply(Lscala/collection/Seq;)Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    return-object p0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lscala/collection/mutable/LazyBuilder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/LazyBuilder;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/LazyBuilder;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TElem;>;)",
            "Lscala/collection/mutable/LazyBuilder",
            "<TElem;TTo;>;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lscala/collection/mutable/LazyBuilder;->parts()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    return-object p0
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
    .line 21
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public parts()Lscala/collection/mutable/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ListBuffer",
            "<",
            "Lscala/collection/TraversableOnce",
            "<TElem;>;>;"
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lscala/collection/mutable/LazyBuilder;->parts:Lscala/collection/mutable/ListBuffer;

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 21
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
    .line 21
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
    .line 21
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
    .line 21
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
