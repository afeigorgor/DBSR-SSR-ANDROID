.class public final Lscala/collection/Iterator$$anon$24;
.super Lscala/collection/TraversableOnce$BufferedCanBuildFrom;
.source "Iterator.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/Iterator$;->IteratorCanBuildFrom()Lscala/collection/TraversableOnce$BufferedCanBuildFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/TraversableOnce$BufferedCanBuildFrom",
        "<TA;",
        "Lscala/collection/Iterator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lscala/collection/TraversableOnce$BufferedCanBuildFrom;-><init>()V

    return-void
.end method


# virtual methods
.method public bufferToColl(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/Iterator;
    .locals 1
    .param p1, "coll"    # Lscala/collection/mutable/ArrayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/mutable/ArrayBuffer",
            "<TB;>;)",
            "Lscala/collection/Iterator",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1}, Lscala/collection/mutable/ArrayBuffer;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic bufferToColl(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/TraversableOnce;
    .locals 1
    .param p1, "buff"    # Lscala/collection/mutable/ArrayBuffer;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lscala/collection/Iterator$$anon$24;->bufferToColl(Lscala/collection/mutable/ArrayBuffer;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public traversableToColl(Lscala/collection/GenTraversable;)Lscala/collection/Iterator;
    .locals 1
    .param p1, "t"    # Lscala/collection/GenTraversable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/GenTraversable",
            "<TB;>;)",
            "Lscala/collection/Iterator",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-interface {p1}, Lscala/collection/GenTraversable;->toIterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic traversableToColl(Lscala/collection/GenTraversable;)Lscala/collection/TraversableOnce;
    .locals 1
    .param p1, "t"    # Lscala/collection/GenTraversable;

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lscala/collection/Iterator$$anon$24;->traversableToColl(Lscala/collection/GenTraversable;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
