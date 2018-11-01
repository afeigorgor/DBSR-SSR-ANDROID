.class public abstract Lscala/collection/immutable/AbstractMap;
.super Lscala/collection/AbstractMap;
.source "Map.scala"

# interfaces
.implements Lscala/collection/immutable/Map;


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
        "Lscala/collection/immutable/Map",
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
    .line 194
    invoke-direct {p0}, Lscala/collection/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/collection/immutable/Traversable$class;->$init$(Lscala/collection/immutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->$init$(Lscala/collection/immutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/immutable/MapLike$class;->$init$(Lscala/collection/immutable/MapLike;)V

    invoke-static {p0}, Lscala/collection/immutable/Map$class;->$init$(Lscala/collection/immutable/Map;)V

    return-void
.end method


# virtual methods
.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion",
            "<",
            "Lscala/collection/immutable/Iterable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p0}, Lscala/collection/immutable/Iterable$class;->companion(Lscala/collection/immutable/Iterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lscala/collection/immutable/AbstractMap;->empty()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p0}, Lscala/collection/immutable/Map$class;->empty(Lscala/collection/immutable/Map;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lscala/collection/immutable/AbstractMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lscala/collection/immutable/AbstractMap;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lscala/collection/immutable/AbstractMap;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lscala/collection/immutable/AbstractMap;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lscala/collection/immutable/AbstractMap;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/immutable/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p0}, Lscala/collection/immutable/Map$class;->seq(Lscala/collection/immutable/Map;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lscala/collection/immutable/AbstractMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 1
    .param p1, "ev"    # Lscala/Predef$$less$colon$less;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Predef$$less$colon$less",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;",
            "Lscala/Tuple2",
            "<TT;TU;>;>;)",
            "Lscala/collection/immutable/Map",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p0, p1}, Lscala/collection/immutable/Map$class;->toMap(Lscala/collection/immutable/Map;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/immutable/Map",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p0, p1, p2}, Lscala/collection/immutable/MapLike$class;->updated(Lscala/collection/immutable/MapLike;Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method
