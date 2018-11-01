.class public final Lscala/collection/immutable/Stream$$anonfun$flatMap$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Lscala/collection/immutable/Stream",
        "<TB;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/Stream;

.field private final f$2:Lscala/Function1;

.field private final nonEmptyPrefix$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Lscala/Function1;Lscala/runtime/ObjectRef;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/immutable/Stream;
    .param p2, "f$2"    # Lscala/Function1;
    .param p3, "nonEmptyPrefix$1"    # Lscala/runtime/ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 497
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->$outer:Lscala/collection/immutable/Stream;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->f$2:Lscala/Function1;

    iput-object p3, p0, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->nonEmptyPrefix$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 497
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 497
    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->nonEmptyPrefix$1:Lscala/runtime/ObjectRef;

    iget-object v2, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v2, Lscala/collection/immutable/Stream;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/Stream;

    iget-object v4, p0, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;->f$2:Lscala/Function1;

    sget-object v3, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v3}, Lscala/collection/immutable/Stream$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v5

    instance-of v5, v5, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    :goto_0
    check-cast v2, Lscala/collection/immutable/Stream;

    return-object v2

    :cond_0
    invoke-static {v2}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .local v0, "nonEmptyPrefix1":Lscala/runtime/ObjectRef;
    iget-object v3, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lscala/collection/immutable/Stream;

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/GenTraversableOnce;

    invoke-interface {v3}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v1

    .local v1, "prefix1":Lscala/collection/immutable/Stream;
    :cond_1
    :goto_1
    iget-object v3, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lscala/collection/immutable/Stream;

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lscala/collection/immutable/Stream;

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/immutable/Stream;

    iput-object v3, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    iget-object v3, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lscala/collection/immutable/Stream;

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lscala/collection/immutable/Stream;

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/GenTraversableOnce;

    invoke-interface {v3}, Lscala/collection/GenTraversableOnce;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v3, Lscala/collection/immutable/Stream;

    invoke-virtual {v3}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v2, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream$;->empty()Lscala/collection/immutable/Stream;

    move-result-object v2

    goto :goto_0

    :cond_3
    new-instance v3, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;

    invoke-direct {v3, v2, v4, v0}, Lscala/collection/immutable/Stream$$anonfun$flatMap$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;Lscala/runtime/ObjectRef;)V

    invoke-virtual {v1, v3}, Lscala/collection/immutable/Stream;->append(Lscala/Function0;)Lscala/collection/immutable/Stream;

    move-result-object v2

    goto :goto_0

    .end local v0    # "nonEmptyPrefix1":Lscala/runtime/ObjectRef;
    .end local v1    # "prefix1":Lscala/collection/immutable/Stream;
    :cond_4
    invoke-static {v2, v4, v3}, Lscala/collection/TraversableLike$class;->flatMap(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
