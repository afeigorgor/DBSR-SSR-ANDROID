.class public interface abstract Lscala/collection/mutable/HashTable;
.super Ljava/lang/Object;
.source "HashTable.scala"

# interfaces
.implements Lscala/collection/mutable/HashTable$HashUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/HashTable$Contents;,
        Lscala/collection/mutable/HashTable$HashUtils;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Entry::",
        "Lscala/collection/mutable/HashEntry",
        "<TA;TEntry;>;>",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/HashTable$HashUtils",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract _loadFactor()I
.end method

.method public abstract _loadFactor_$eq(I)V
.end method

.method public abstract alwaysInitSizeMap()Z
.end method

.method public abstract calcSizeMapSize(I)I
.end method

.method public abstract createNewEntry(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)TEntry;"
        }
    .end annotation
.end method

.method public abstract elemEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TA;)Z"
        }
    .end annotation
.end method

.method public abstract index(I)I
.end method

.method public abstract initialSize()I
.end method

.method public abstract nnSizeMapAdd(I)V
.end method

.method public abstract nnSizeMapRemove(I)V
.end method

.method public abstract nnSizeMapReset(I)V
.end method

.method public abstract seedvalue()I
.end method

.method public abstract seedvalue_$eq(I)V
.end method

.method public abstract sizeMapInit(I)V
.end method

.method public abstract sizeMapInitAndRebuild()V
.end method

.method public abstract sizemap()[I
.end method

.method public abstract sizemap_$eq([I)V
.end method

.method public abstract table()[Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/HashEntry",
            "<TA;TEntry;>;"
        }
    .end annotation
.end method

.method public abstract tableSize()I
.end method

.method public abstract tableSizeSeed()I
.end method

.method public abstract tableSize_$eq(I)V
.end method

.method public abstract table_$eq([Lscala/collection/mutable/HashEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lscala/collection/mutable/HashEntry",
            "<TA;TEntry;>;)V"
        }
    .end annotation
.end method

.method public abstract threshold()I
.end method

.method public abstract threshold_$eq(I)V
.end method

.method public abstract totalSizeMapBuckets()I
.end method
