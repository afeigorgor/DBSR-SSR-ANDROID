.class public abstract Lscala/collection/generic/ImmutableSetFactory;
.super Lscala/collection/generic/SetFactory;
.source "ImmutableSetFactory.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/immutable/Set",
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
.method public bridge synthetic empty()Lscala/collection/GenTraversable;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lscala/collection/generic/ImmutableSetFactory;->empty()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()TCC;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Lscala/collection/generic/ImmutableSetFactory;->emptyInstance()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public abstract emptyInstance()Lscala/collection/immutable/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCC;"
        }
    .end annotation
.end method

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
    .line 20
    new-instance v0, Lscala/collection/mutable/SetBuilder;

    invoke-virtual {p0}, Lscala/collection/generic/ImmutableSetFactory;->empty()Lscala/collection/immutable/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/SetBuilder;-><init>(Lscala/collection/Set;)V

    return-object v0
.end method
