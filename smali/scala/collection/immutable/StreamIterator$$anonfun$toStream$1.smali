.class public final Lscala/collection/immutable/StreamIterator$$anonfun$toStream$1;
.super Lscala/runtime/AbstractFunction0;
.source "Stream.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/StreamIterator;->toStream()Lscala/collection/immutable/Stream;
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
        "<",
        "Lscala/runtime/Nothing$;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StreamIterator;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/immutable/StreamIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StreamIterator",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 1125
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1125
    invoke-virtual {p0}, Lscala/collection/immutable/StreamIterator$$anonfun$toStream$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1125
    sget-object v0, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    invoke-virtual {v0}, Lscala/collection/immutable/Stream$;->empty()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
