.class public abstract Lscala/collection/generic/GenericCompanion;
.super Ljava/lang/Object;
.source "GenericCompanion.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC::",
        "Lscala/collection/GenTraversable",
        "<",
        "Ljava/lang/Object;",
        ">;>",
        "Ljava/lang/Object;"
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
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;
    .locals 2
    .param p1, "elems"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq",
            "<TA;>;)TCC;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1}, Lscala/collection/Seq;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lscala/collection/generic/GenericCompanion;->empty()Lscala/collection/GenTraversable;

    move-result-object v1

    :goto_0
    return-object v1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lscala/collection/generic/GenericCompanion;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    .line 49
    .local v0, "b":Lscala/collection/mutable/Builder;
    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    .line 50
    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/GenTraversable;

    goto :goto_0
.end method

.method public empty()Lscala/collection/GenTraversable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()TCC;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lscala/collection/generic/GenericCompanion;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenTraversable;

    return-object v0
.end method

.method public abstract newBuilder()Lscala/collection/mutable/Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder",
            "<TA;TCC;>;"
        }
    .end annotation
.end method
