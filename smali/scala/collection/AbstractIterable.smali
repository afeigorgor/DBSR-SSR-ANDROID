.class public abstract Lscala/collection/AbstractIterable;
.super Lscala/collection/AbstractTraversable;
.source "Iterable.scala"

# interfaces
.implements Lscala/collection/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractTraversable",
        "<TA;>;",
        "Lscala/collection/Iterable",
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
    .line 54
    invoke-direct {p0}, Lscala/collection/AbstractTraversable;-><init>()V

    invoke-static {p0}, Lscala/collection/GenIterable$class;->$init$(Lscala/collection/GenIterable;)V

    invoke-static {p0}, Lscala/collection/IterableLike$class;->$init$(Lscala/collection/IterableLike;)V

    invoke-static {p0}, Lscala/collection/Iterable$class;->$init$(Lscala/collection/Iterable;)V

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->canEqual(Lscala/collection/IterableLike;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion",
            "<",
            "Lscala/collection/Iterable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lscala/collection/Iterable$class;->companion(Lscala/collection/Iterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public copyToArray(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3}, Lscala/collection/IterableLike$class;->copyToArray(Lscala/collection/IterableLike;Ljava/lang/Object;II)V

    return-void
.end method

.method public drop(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 54
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->drop(Lscala/collection/IterableLike;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 54
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->exists(Lscala/collection/IterableLike;Lscala/Function1;)Z

    move-result v0

    return v0
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
    .line 54
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->forall(Lscala/collection/IterableLike;Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 0
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
    .line 54
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->foreach(Lscala/collection/IterableLike;Lscala/Function1;)V

    return-void
.end method

.method public head()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lscala/collection/IterableLike$class;->head(Lscala/collection/IterableLike;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lscala/collection/IterableLike$class;->isEmpty(Lscala/collection/IterableLike;)Z

    move-result v0

    return v0
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
    .line 54
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->sameElements(Lscala/collection/IterableLike;Lscala/collection/GenIterable;)Z

    move-result v0

    return v0
.end method

.method public seq()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lscala/collection/Iterable$class;->seq(Lscala/collection/Iterable;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lscala/collection/AbstractIterable;->seq()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lscala/collection/AbstractIterable;->seq()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Ljava/lang/Object;
    .locals 1
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->slice(Lscala/collection/IterableLike;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public take(I)Ljava/lang/Object;
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 54
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->take(Lscala/collection/IterableLike;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public thisCollection()Lscala/collection/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterable",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lscala/collection/IterableLike$class;->thisCollection(Lscala/collection/IterableLike;)Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lscala/collection/AbstractIterable;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toIterator(Lscala/collection/IterableLike;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public toStream()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Lscala/collection/IterableLike$class;->toStream(Lscala/collection/IterableLike;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public zip(Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "that"    # Lscala/collection/GenIterable;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenIterable",
            "<TB;>;",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/Iterable",
            "<TA;>;",
            "Lscala/Tuple2",
            "<TA1;TB;>;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lscala/collection/IterableLike$class;->zip(Lscala/collection/IterableLike;Lscala/collection/GenIterable;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
    .locals 1
    .param p1, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:",
            "Ljava/lang/Object;",
            "That:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Lscala/collection/Iterable",
            "<TA;>;",
            "Lscala/Tuple2",
            "<TA1;",
            "Ljava/lang/Object;",
            ">;TThat;>;)TThat;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0, p1}, Lscala/collection/IterableLike$class;->zipWithIndex(Lscala/collection/IterableLike;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
