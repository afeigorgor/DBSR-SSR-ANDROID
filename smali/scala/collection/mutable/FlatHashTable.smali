.class public interface abstract Lscala/collection/mutable/FlatHashTable;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"

# interfaces
.implements Lscala/collection/mutable/FlatHashTable$HashUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/mutable/FlatHashTable$Contents;,
        Lscala/collection/mutable/FlatHashTable$HashUtils;,
        Lscala/collection/mutable/FlatHashTable$NullSentinel$;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lscala/collection/mutable/FlatHashTable$HashUtils",
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

.method public abstract addEntry(Ljava/lang/Object;)Z
.end method

.method public abstract alwaysInitSizeMap()Z
.end method

.method public abstract calcSizeMapSize(I)I
.end method

.method public abstract capacity(I)I
.end method

.method public abstract containsElem(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
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

.method public abstract table()[Ljava/lang/Object;
.end method

.method public abstract tableSize()I
.end method

.method public abstract tableSizeSeed()I
.end method

.method public abstract tableSize_$eq(I)V
.end method

.method public abstract table_$eq([Ljava/lang/Object;)V
.end method

.method public abstract threshold()I
.end method

.method public abstract threshold_$eq(I)V
.end method

.method public abstract totalSizeMapBuckets()I
.end method
