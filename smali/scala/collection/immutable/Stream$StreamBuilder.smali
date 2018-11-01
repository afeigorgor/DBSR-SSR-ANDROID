.class public Lscala/collection/immutable/Stream$StreamBuilder;
.super Lscala/collection/mutable/LazyBuilder;
.source "Stream.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/mutable/LazyBuilder",
        "<TA;",
        "Lscala/collection/immutable/Stream",
        "<TA;>;>;"
    }
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
    .line 1162
    invoke-direct {p0}, Lscala/collection/mutable/LazyBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1162
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$StreamBuilder;->result()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public result()Lscala/collection/immutable/Stream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 1163
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$StreamBuilder;->parts()Lscala/collection/mutable/ListBuffer;

    move-result-object v2

    invoke-static {v2}, Lscala/collection/generic/TraversableForwarder$class;->toStream(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/Stream;

    move-result-object v3

    new-instance v4, Lscala/collection/immutable/Stream$StreamBuilder$$anonfun$result$1;

    invoke-direct {v4, p0}, Lscala/collection/immutable/Stream$StreamBuilder$$anonfun$result$1;-><init>(Lscala/collection/immutable/Stream$StreamBuilder;)V

    sget-object v2, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    new-instance v2, Lscala/collection/immutable/Stream$StreamCanBuildFrom;

    invoke-direct {v2}, Lscala/collection/immutable/Stream$StreamCanBuildFrom;-><init>()V

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v5

    instance-of v5, v5, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    :goto_0
    check-cast v2, Lscala/collection/immutable/Stream;

    return-object v2

    :cond_0
    invoke-static {v3}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .local v0, "nonEmptyPrefix1":Lscala/runtime/ObjectRef;
    iget-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Lscala/collection/immutable/Stream;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/TraversableOnce;

    invoke-interface {v2}, Lscala/collection/TraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v2

    check-cast v2, Lscala/collection/GenTraversableOnce;

    invoke-interface {v2}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v1

    .local v1, "prefix1":Lscala/collection/immutable/Stream;
    :cond_1
    :goto_1
    iget-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Lscala/collection/immutable/Stream;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Lscala/collection/immutable/Stream;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/Stream;

    iput-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    iget-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Lscala/collection/immutable/Stream;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Lscala/collection/immutable/Stream;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/TraversableOnce;

    invoke-interface {v2}, Lscala/collection/TraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v2

    check-cast v2, Lscala/collection/GenTraversableOnce;

    invoke-interface {v2}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Lscala/collection/immutable/Stream;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    sget-object v2, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    goto :goto_0

    :cond_3
    new-instance v2, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;

    invoke-direct {v2, v3, v4, v0}, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;Lscala/runtime/ObjectRef;)V

    invoke-virtual {v1, v2}, Lscala/collection/immutable/Stream;->append(Lscala/Function0;)Lscala/collection/immutable/Stream;

    move-result-object v2

    goto :goto_0

    .end local v0    # "nonEmptyPrefix1":Lscala/runtime/ObjectRef;
    .end local v1    # "prefix1":Lscala/collection/immutable/Stream;
    :cond_4
    invoke-static {v3, v4, v2}, Lscala/collection/TraversableLike$class;->flatMap(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
