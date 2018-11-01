.class public final Lscala/collection/mutable/Builder$$anon$1;
.super Ljava/lang/Object;
.source "Builder.scala"

# interfaces
.implements Lscala/Proxy;
.implements Lscala/collection/mutable/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/Builder;->mapResult(Lscala/Function1;)Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lscala/Proxy;",
        "Lscala/collection/mutable/Builder",
        "<TElem;TNewTo;>;"
    }
.end annotation


# instance fields
.field private final f$1:Lscala/Function1;

.field private final self:Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Builder",
            "<TElem;TTo;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lscala/collection/mutable/Builder;Lscala/Function1;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/mutable/Builder;
    .param p2, "f$1"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/Builder",
            "<TElem;TTo;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    iput-object p2, p0, Lscala/collection/mutable/Builder$$anon$1;->f$1:Lscala/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/collection/generic/Growable$class;->$init$(Lscala/collection/generic/Growable;)V

    invoke-static {p0}, Lscala/collection/mutable/Builder$class;->$init$(Lscala/collection/mutable/Builder;)V

    invoke-static {p0}, Lscala/Proxy$class;->$init$(Lscala/Proxy;)V

    .line 118
    iput-object p1, p0, Lscala/collection/mutable/Builder$$anon$1;->self:Lscala/collection/mutable/Builder;

    return-void
.end method


# virtual methods
.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lscala/collection/mutable/Builder$$anon$1;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder$$anon$1;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder$$anon$1;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TElem;)",
            "Lscala/collection/mutable/Builder",
            "<TElem;TTo;>.1;"
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lscala/collection/mutable/Builder$$anon$1;->self()Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lscala/collection/mutable/Builder$$anon$1;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder$$anon$1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lscala/collection/mutable/Builder$$anon$1;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Builder$$anon$1;

    move-result-object v0

    return-object v0
.end method

.method public $plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Builder$$anon$1;
    .locals 1
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce",
            "<TElem;>;)",
            "Lscala/collection/mutable/Builder",
            "<TElem;TTo;>.1;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lscala/collection/mutable/Builder$$anon$1;->self()Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 117
    invoke-static {p0, p1}, Lscala/Proxy$class;->equals(Lscala/Proxy;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 117
    invoke-static {p0}, Lscala/Proxy$class;->hashCode(Lscala/Proxy;)I

    move-result v0

    return v0
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
            "<TNewTo;TNewTo;>;)",
            "Lscala/collection/mutable/Builder",
            "<TElem;TNewTo;>;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0, p1}, Lscala/collection/mutable/Builder$class;->mapResult(Lscala/collection/mutable/Builder;Lscala/Function1;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public result()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TNewTo;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lscala/collection/mutable/Builder$$anon$1;->f$1:Lscala/Function1;

    invoke-virtual {p0}, Lscala/collection/mutable/Builder$$anon$1;->self()Lscala/collection/mutable/Builder;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic self()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lscala/collection/mutable/Builder$$anon$1;->self()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public self()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder",
            "<TElem;TTo;>;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lscala/collection/mutable/Builder$$anon$1;->self:Lscala/collection/mutable/Builder;

    return-object v0
.end method

.method public sizeHint(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 122
    invoke-virtual {p0}, Lscala/collection/mutable/Builder$$anon$1;->self()Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->sizeHint(I)V

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
    .line 117
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
    .line 117
    invoke-static {p0, p1, p2}, Lscala/collection/mutable/Builder$class;->sizeHint(Lscala/collection/mutable/Builder;Lscala/collection/TraversableLike;I)V

    return-void
.end method

.method public sizeHintBounded(ILscala/collection/TraversableLike;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "boundColl"    # Lscala/collection/TraversableLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/TraversableLike",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0}, Lscala/collection/mutable/Builder$$anon$1;->self()Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/mutable/Builder;->sizeHintBounded(ILscala/collection/TraversableLike;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-static {p0}, Lscala/Proxy$class;->toString(Lscala/Proxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
