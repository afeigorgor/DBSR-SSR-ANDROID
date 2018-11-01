.class public abstract Lscala/collection/generic/SeqFactory;
.super Lscala/collection/generic/GenSeqFactory;
.source "SeqFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/Seq",
        "<",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/GenSeqFactory",
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
    invoke-direct {p0}, Lscala/collection/generic/GenSeqFactory;-><init>()V

    return-void
.end method
