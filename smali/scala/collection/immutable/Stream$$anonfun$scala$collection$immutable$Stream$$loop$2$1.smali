.class public final Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/Stream;->scala$collection$immutable$Stream$$loop$2(Lscala/collection/immutable/Set;Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;
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

.field private final rest$3:Lscala/collection/immutable/Stream;

.field private final seen$1:Lscala/collection/immutable/Set;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Stream;Lscala/collection/immutable/Set;Lscala/collection/immutable/Stream;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/immutable/Stream;
    .param p2, "seen$1"    # Lscala/collection/immutable/Set;
    .param p3, "rest$3"    # Lscala/collection/immutable/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Stream",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 988
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;->$outer:Lscala/collection/immutable/Stream;

    iput-object p2, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;->seen$1:Lscala/collection/immutable/Set;

    iput-object p3, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;->rest$3:Lscala/collection/immutable/Stream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 988
    invoke-virtual {p0}, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 988
    iget-object v2, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;->$outer:Lscala/collection/immutable/Stream;

    iget-object v0, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;->seen$1:Lscala/collection/immutable/Set;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;->rest$3:Lscala/collection/immutable/Stream;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/immutable/Set;->$plus(Ljava/lang/Object;)Lscala/collection/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/Set;

    iget-object v1, p0, Lscala/collection/immutable/Stream$$anonfun$scala$collection$immutable$Stream$$loop$2$1;->rest$3:Lscala/collection/immutable/Stream;

    invoke-virtual {v1}, Lscala/collection/immutable/Stream;->tail()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/Stream;

    invoke-virtual {v2, v0, v1}, Lscala/collection/immutable/Stream;->scala$collection$immutable$Stream$$loop$2(Lscala/collection/immutable/Set;Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
