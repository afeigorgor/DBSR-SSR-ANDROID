.class public abstract Lscala/collection/generic/MutableSetFactory;
.super Lscala/collection/generic/SetFactory;
.source "MutableSetFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/mutable/Set",
        "<",
        "Ljava/lang/Object;",
        ">;>",
        "Lscala/collection/generic/SetFactory",
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
    .line 17
    invoke-direct {p0}, Lscala/collection/generic/SetFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder",
            "<TA;TCC;>;"
        }
    .end annotation

    .prologue
    .line 19
    new-instance v1, Lscala/collection/mutable/GrowingBuilder;

    invoke-virtual {p0}, Lscala/collection/generic/MutableSetFactory;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/generic/Growable;

    invoke-direct {v1, v0}, Lscala/collection/mutable/GrowingBuilder;-><init>(Lscala/collection/generic/Growable;)V

    return-object v1
.end method
