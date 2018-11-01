.class public final Lscala/collection/immutable/HashMap$HashTrieMap$$anon$1;
.super Lscala/collection/immutable/TrieIterator;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/HashMap$HashTrieMap;->iterator()Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/immutable/TrieIterator",
        "<",
        "Lscala/Tuple2",
        "<TA;TB;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/collection/immutable/HashMap$HashTrieMap;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/immutable/HashMap$HashTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashMap$HashTrieMap",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 421
    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashTrieMap;->elems()[Lscala/collection/immutable/HashMap;

    move-result-object v0

    check-cast v0, [Lscala/collection/immutable/Iterable;

    invoke-direct {p0, v0}, Lscala/collection/immutable/TrieIterator;-><init>([Lscala/collection/immutable/Iterable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getElem(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashMap$HashTrieMap$$anon$1;->getElem(Ljava/lang/Object;)Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method

.method public final getElem(Ljava/lang/Object;)Lscala/Tuple2;
    .locals 1
    .param p1, "cc"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/Tuple2",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 422
    check-cast p1, Lscala/collection/immutable/HashMap$HashMap1;

    .end local p1    # "cc":Ljava/lang/Object;
    invoke-virtual {p1}, Lscala/collection/immutable/HashMap$HashMap1;->ensurePair()Lscala/Tuple2;

    move-result-object v0

    return-object v0
.end method
