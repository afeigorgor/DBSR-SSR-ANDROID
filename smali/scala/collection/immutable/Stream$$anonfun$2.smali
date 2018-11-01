.class public final Lscala/collection/immutable/Stream$$anonfun$2;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream;->reverse()Lscala/collection/immutable/Stream;
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
.field private final result$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Lscala/runtime/ObjectRef;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/immutable/Stream;
    .param p2, "result$1"    # Lscala/runtime/ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 1052
    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$2;->result$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1052
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$2;->apply()Lscala/collection/immutable/Stream;

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
    .line 1052
    iget-object v0, p0, Lscala/collection/immutable/Stream$$anonfun$2;->result$1:Lscala/runtime/ObjectRef;

    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lscala/collection/immutable/Stream;

    return-object v0
.end method
