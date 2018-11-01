.class public abstract Lscala/collection/generic/GenSeqFactory;
.super Lscala/collection/generic/GenTraversableFactory;
.source "GenSeqFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/GenSeq",
        "<",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/GenTraversableFactory",
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
    .line 22
    invoke-direct {p0}, Lscala/collection/generic/GenTraversableFactory;-><init>()V

    return-void
.end method
