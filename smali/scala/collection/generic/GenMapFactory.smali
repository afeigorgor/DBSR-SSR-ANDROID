.class public abstract Lscala/collection/generic/GenMapFactory;
.super Ljava/lang/Object;
.source "GenMapFactory.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/generic/GenMapFactory$MapCanBuildFrom;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CC:",
        "Lscala/collection/GenMap",
        "<",
        "Ljava/lang/Object;",
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
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;)Lscala/collection/GenMap;
    .locals 1
    .param p1, "elems"    # Lscala/collection/Seq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;>;)TCC;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/generic/GenMapFactory;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/Builder;

    invoke-interface {v0}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/GenMap;

    return-object v0
.end method

.method public abstract empty()Lscala/collection/GenMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()TCC;"
        }
    .end annotation
.end method

.method public newBuilder()Lscala/collection/mutable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/mutable/Builder",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;TCC;>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lscala/collection/mutable/MapBuilder;

    invoke-virtual {p0}, Lscala/collection/generic/GenMapFactory;->empty()Lscala/collection/GenMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/MapBuilder;-><init>(Lscala/collection/GenMap;)V

    return-object v0
.end method
