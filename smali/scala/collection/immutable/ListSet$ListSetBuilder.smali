.class public Lscala/collection/immutable/ListSet$ListSetBuilder;
.super Ljava/lang/Object;
.source "ListSet.scala"

# interfaces
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/ListSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListSetBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Elem:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/Builder",
        "<TElem;",
        "Lscala/collection/immutable/ListSet",
        "<TElem;>;>;"
    }
.end annotation


# instance fields
.field private final elems:Lscala/collection/mutable/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/ListBuffer",
            "<TElem;>;"
        }
    .end annotation
.end field

.field private final seen:Lscala/collection/mutable/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/HashSet",
            "<TElem;>;"
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
    .line 37
    sget-object v0, Lscala/collection/immutable/ListSet$;->MODULE$:Lscala/collection/immutable/ListSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/ListSet;

    invoke-direct {p0, v0}, Lscala/collection/immutable/ListSet$ListSetBuilder;-><init>(Lscala/collection/immutable/ListSet;)V

    return-void
.end method

.method public constructor <init>(Lscala/collection/immutable/ListSet;)V
    .locals 1
    .param p1, "initial"    # Lscala/collection/immutable/ListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/ListSet",
            "<TElem;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    .line 38
    new-instance v0, Lscala/collection/mutable/ListBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ListBuffer;-><init>()V

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ListBuffer;->reverse()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ListBuffer;

    iput-object v0, p0, Lscala/collection/immutable/ListSet$ListSetBuilder;->elems:Lscala/collection/mutable/ListBuffer;

    .line 39
    new-instance v0, Lscala/collection/mutable/HashSet;

    invoke-direct {v0}, Lscala/collection/mutable/HashSet;-><init>()V

    invoke-virtual {v0, p1}, Lscala/collection/mutable/HashSet;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/HashSet;

    iput-object v0, p0, Lscala/collection/immutable/ListSet$ListSetBuilder;->seen:Lscala/collection/mutable/HashSet;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet$ListSetBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/immutable/ListSet$ListSetBuilder;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/immutable/ListSet$ListSetBuilder;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElem;)",
            "Lscala/collection/immutable/ListSet$ListSetBuilder",
            "<TElem;>;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$ListSetBuilder;->seen()Lscala/collection/mutable/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/HashSet;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 46
    :goto_0
    return-object p0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$ListSetBuilder;->elems()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ListBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ListBuffer;

    .line 44
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$ListSetBuilder;->seen()Lscala/collection/mutable/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/HashSet;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/HashSet;

    goto :goto_0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListSet$ListSetBuilder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/immutable/ListSet$ListSetBuilder;

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
            "<TElem;>;)",
            "Lscala/collection/generic/Growable",
            "<TElem;>;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0, p1}, Lscala/collection/generic/Growable$class;->$plus$plus$eq(Lscala/collection/generic/Growable;Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    return-object v0
.end method

.method public elems()Lscala/collection/mutable/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ListBuffer",
            "<TElem;>;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lscala/collection/immutable/ListSet$ListSetBuilder;->elems:Lscala/collection/mutable/ListBuffer;

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
            "Lscala/collection/immutable/ListSet",
            "<TElem;>;TNewTo;>;)",
            "Lscala/collection/mutable/Builder",
            "<TElem;TNewTo;>;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$ListSetBuilder;->result()Lscala/collection/immutable/ListSet;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/immutable/ListSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListSet",
            "<TElem;>;"
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lscala/collection/immutable/ListSet$ListSetBuilder;->elems()Lscala/collection/mutable/ListBuffer;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/ListSet$;->MODULE$:Lscala/collection/immutable/ListSet$;

    sget-object v1, Lscala/collection/immutable/ListSet$EmptyListSet$;->MODULE$:Lscala/collection/immutable/ListSet$EmptyListSet$;

    new-instance v2, Lscala/collection/immutable/ListSet$ListSetBuilder$$anonfun$result$1;

    invoke-direct {v2, p0}, Lscala/collection/immutable/ListSet$ListSetBuilder$$anonfun$result$1;-><init>(Lscala/collection/immutable/ListSet$ListSetBuilder;)V

    invoke-static {v0, v1, v2}, Lscala/collection/generic/TraversableForwarder$class;->foldLeft(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/ListSet;

    return-object v0
.end method

.method public seen()Lscala/collection/mutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashSet",
            "<TElem;>;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lscala/collection/immutable/ListSet$ListSetBuilder;->seen:Lscala/collection/mutable/HashSet;

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 36
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
    .line 36
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
    .line 36
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
    .line 36
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHintBounded(Lscala/collection/mutable/Builder;ILscala/collection/TraversableLike;)V

    return-void
.end method
