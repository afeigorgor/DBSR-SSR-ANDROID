.class public final Lscala/collection/immutable/Stream$$anonfun$takeWhile$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream;->takeWhile(Lscala/Function1;)Lscala/collection/immutable/Stream;
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
        "<TA;>;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/Stream;

.field private final p$3:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Lscala/Function1;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/immutable/Stream;
    .param p2, "p$3"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 941
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$takeWhile$1;->$outer:Lscala/collection/immutable/Stream;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$takeWhile$1;->p$3:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 941
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$takeWhile$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 941
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anonfun$takeWhile$1;->$outer:Lscala/collection/immutable/Stream;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Stream;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$takeWhile$1;->p$3:Lscala/Function1;

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream;->takeWhile(Lscala/Function1;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
