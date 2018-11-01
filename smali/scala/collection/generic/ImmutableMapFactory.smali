.class public abstract Lscala/collection/generic/ImmutableMapFactory;
.super Lscala/collection/generic/MapFactory;
.source "ImmutableMapFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/immutable/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/MapFactory",
        "<TCC;>;"
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
    .line 21
    invoke-direct {p0}, Lscala/collection/generic/MapFactory;-><init>()V

    return-void
.end method
