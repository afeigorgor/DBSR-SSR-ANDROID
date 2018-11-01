.class public abstract Lscala/collection/AbstractMap;
.super Lscala/collection/AbstractIterable;
.source "Map.scala"

# interfaces
.implements Lscala/collection/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterable",
        "<",
        "Lscala/Tuple2",
        "<TA;TB;>;>;",
        "Lscala/collection/Map",
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
    .line 59
    invoke-direct {p0}, Lscala/collection/AbstractIterable;-><init>()V

    invoke-static {p0}, Lscala/collection/GenMapLike$class;->$init$(Lscala/collection/GenMapLike;)V

    invoke-static {p0}, Lscala/Function1$class;->$init$(Lscala/Function1;)V

    invoke-static {p0}, Lscala/PartialFunction$class;->$init$(Lscala/PartialFunction;)V

    invoke-static {p0}, Lscala/collection/generic/Subtractable$class;->$init$(Lscala/collection/generic/Subtractable;)V

    invoke-static {p0}, Lscala/collection/MapLike$class;->$init$(Lscala/collection/MapLike;)V

    invoke-static {p0}, Lscala/collection/Map$class;->$init$(Lscala/collection/Map;)V

    return-void
.end method


# virtual methods
.method public addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .param p1, "b"    # Lscala/collection/mutable/StringBuilder;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "sep"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0, p1, p2, p3, p4}, Lscala/collection/MapLike$class;->addString(Lscala/collection/MapLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->apply(Lscala/collection/MapLike;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcVI$sp(I)V
    .locals 0
    .param p1, "v1"    # I

    .prologue
    .line 59
    invoke-static {p0, p1}, Lscala/Function1$class;->apply$mcVI$sp(Lscala/Function1;I)V

    return-void
.end method

.method public applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;
    .param p2, "default"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A1:TA;B1:",
            "Ljava/lang/Object;",
            ">(TA1;",
            "Lscala/Function1",
            "<TA1;TB1;>;)TB1;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lscala/PartialFunction$class;->applyOrElse(Lscala/PartialFunction;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->contains(Lscala/collection/MapLike;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public default(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->default(Lscala/collection/MapLike;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lscala/collection/Map$class;->empty(Lscala/collection/Map;)Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lscala/collection/GenMapLike$class;->equals(Lscala/collection/GenMapLike;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lscala/collection/AbstractMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public filterNot(Lscala/Function1;)Lscala/collection/Map;
    .locals 1
    .param p1, "p"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;",
            "Ljava/lang/Object;",
            ">;)",
            "Lscala/collection/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->filterNot(Lscala/collection/MapLike;Lscala/Function1;)Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;",
            "Lscala/Function0",
            "<TB1;>;)TB1;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lscala/collection/MapLike$class;->getOrElse(Lscala/collection/MapLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lscala/collection/GenMapLike$class;->hashCode(Lscala/collection/GenMapLike;)I

    move-result v0

    return v0
.end method

.method public isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0, p1}, Lscala/collection/MapLike$class;->isDefinedAt(Lscala/collection/MapLike;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->isEmpty(Lscala/collection/MapLike;)Z

    move-result v0

    return v0
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
            "Lscala/collection/Map",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->newBuilder(Lscala/collection/MapLike;)Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public runWith(Lscala/Function1;)Lscala/Function1;
    .locals 1
    .param p1, "action"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TB;TU;>;)",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0, p1}, Lscala/PartialFunction$class;->runWith(Lscala/PartialFunction;Lscala/Function1;)Lscala/Function1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->seq()Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lscala/collection/Map$class;->seq(Lscala/collection/Map;)Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->seq()Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->seq()Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public stringPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->stringPrefix(Lscala/collection/MapLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lscala/collection/AbstractMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toBuffer()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Buffer",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->toBuffer(Lscala/collection/MapLike;)Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public toSeq()Lscala/collection/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Seq",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->toSeq(Lscala/collection/MapLike;)Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lscala/collection/MapLike$class;->toString(Lscala/collection/MapLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
