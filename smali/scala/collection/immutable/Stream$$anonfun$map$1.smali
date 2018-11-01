.class public final Lscala/collection/immutable/Stream$$anonfun$map$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;
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

.field private final f$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/immutable/Stream;
    .param p2, "f$1"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 418
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$map$1;->$outer:Lscala/collection/immutable/Stream;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$map$1;->f$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 418
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$map$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anonfun$map$1;->$outer:Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$map$1;->f$1:Lscala/Function1;

    sget-object v2, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v2}, Lscala/collection/immutable/Stream$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->repr()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v3

    instance-of v3, v3, Lscala/collection/immutable/Stream$StreamBuilder;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lscala/collection/immutable/Stream$Empty$;->MODULE$:Lscala/collection/immutable/Stream$Empty$;

    :goto_0
    check-cast v0, Lscala/collection/immutable/Stream;

    return-object v0

    :cond_0
    sget-object v2, Lscala/collection/immutable/Stream$cons$;->MODULE$:Lscala/collection/immutable/Stream$cons$;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lscala/collection/immutable/Stream$$anonfun$map$1;

    invoke-direct {v3, v0, v1}, Lscala/collection/immutable/Stream$$anonfun$map$1;-><init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V

    new-instance v0, Lscala/collection/immutable/Stream$Cons;

    invoke-direct {v0, v2, v3}, Lscala/collection/immutable/Stream$Cons;-><init>(Ljava/lang/Object;Lscala/Function0;)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v1, v2}, Lscala/collection/TraversableLike$class;->map(Lscala/collection/TraversableLike;Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
