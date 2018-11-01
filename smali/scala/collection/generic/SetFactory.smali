.class public abstract Lscala/collection/generic/SetFactory;
.super Lscala/collection/generic/GenSetFactory;
.source "SetFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/Set",
        "<",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/GenSetFactory",
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
    .line 19
    invoke-direct {p0}, Lscala/collection/generic/GenSetFactory;-><init>()V

    return-void
.end method
