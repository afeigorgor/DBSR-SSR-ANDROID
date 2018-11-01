.class public abstract Lscala/collection/AbstractSet;
.super Lscala/collection/AbstractIterable;
.source "Set.scala"

# interfaces
.implements Lscala/collection/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterable",
        "<TA;>;",
        "Lscala/collection/Set",
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
    .line 47
    invoke-direct {p0}, Lscala/collection/AbstractIterable;-><init>()V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/collection/GenSetLike$class;->$init$(Lscala/collection/GenSetLike;)V

    invoke-static {p0}, Lscala/collection/generic/GenericSetTemplate$class;->$init$(Lscala/collection/generic/GenericSetTemplate;)V

    invoke-static {p0}, Lscala/collection/GenSet$class;->$init$(Lscala/collection/GenSet;)V

    invoke-static {p0}, Lscala/collection/generic/Subtractable$class;->$init$(Lscala/collection/generic/Subtractable;)V

    invoke-static {p0}, Lscala/collection/SetLike$class;->$init$(Lscala/collection/SetLike;)V

    invoke-static {p0}, Lscala/collection/Set$class;->$init$(Lscala/collection/Set;)V

    return-void
.end method


# virtual methods
.method public $plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;
    .locals 1
    .param p1, "elems"    # Lscala/collection/GenTraversableOnce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenTraversableOnce",
            "<TA;>;)",
            "Lscala/collection/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0, p1}, Lscala/collection/SetLike$class;->$plus$plus(Lscala/collection/SetLike;Lscala/collection/GenTraversableOnce;)Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lscala/collection/AbstractSet;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->apply(Lscala/collection/GenSetLike;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public apply$mcVI$sp(I)V
    .locals 0
    .param p1, "v1"    # I

    .prologue
    .line 47
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion",
            "<",
            "Lscala/collection/Set;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0}, Lscala/collection/Set$class;->companion(Lscala/collection/Set;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/GenSet;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lscala/collection/generic/GenericSetTemplate$class;->empty(Lscala/collection/generic/GenericSetTemplate;)Lscala/collection/GenSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Set;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->empty()Lscala/collection/GenSet;

    move-result-object v0

    check-cast v0, Lscala/collection/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->equals(Lscala/collection/GenSetLike;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lscala/collection/GenSetLike$class;->hashCode(Lscala/collection/GenSetLike;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->isEmpty(Lscala/collection/SetLike;)Z

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
            "<TA;TB;>;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/Set",
            "<TA;>;TB;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/SetLike$class;->map(Lscala/collection/SetLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Builder",
            "<TA;",
            "Lscala/collection/Set",
            "<TA;>;>;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->newBuilder(Lscala/collection/SetLike;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$SetLike$$super$map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "f"    # Lscala/Function1;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->seq()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Set",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0}, Lscala/collection/Set$class;->seq(Lscala/collection/Set;)Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->seq()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->seq()Lscala/collection/Set;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->stringPrefix(Lscala/collection/SetLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subsetOf(Lscala/collection/GenSet;)Z
    .locals 1
    .param p1, "that"    # Lscala/collection/GenSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSet",
            "<TA;>;)Z"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0, p1}, Lscala/collection/GenSetLike$class;->subsetOf(Lscala/collection/GenSetLike;Lscala/collection/GenSet;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lscala/collection/AbstractSet;->thisCollection()Lscala/collection/Iterable;

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
    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->toBuffer(Lscala/collection/SetLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->toSeq(Lscala/collection/SetLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lscala/collection/SetLike$class;->toString(Lscala/collection/SetLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
