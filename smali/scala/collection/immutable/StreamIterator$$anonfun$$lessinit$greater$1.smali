.class public final Lscala/collection/immutable/StreamIterator$$anonfun$$lessinit$greater$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StreamIterator;-><init>(Lscala/collection/immutable/Stream;)V
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
.field private final self$1:Lscala/collection/immutable/Stream;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StreamIterator;Lscala/collection/immutable/Stream;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/immutable/StreamIterator;
    .param p2, "self$1"    # Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StreamIterator",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 1104
    iput-object p2, p0, Lscala/collection/immutable/StreamIterator$$anonfun$$lessinit$greater$1;->self$1:Lscala/collection/immutable/Stream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1104
    invoke-virtual {p0}, Lscala/collection/immutable/StreamIterator$$anonfun$$lessinit$greater$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 1104
    iget-object v0, p0, Lscala/collection/immutable/StreamIterator$$anonfun$$lessinit$greater$1;->self$1:Lscala/collection/immutable/Stream;

    return-object v0
.end method
