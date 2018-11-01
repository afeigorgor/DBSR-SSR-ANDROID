.class public Lscala/collection/mutable/HashTable$Contents;
.super Ljava/lang/Object;
.source "HashTable.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/HashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "Entry::",
        "Lscala/collection/mutable/HashEntry",
        "<TA;TEntry;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final loadFactor:I

.field private final seedvalue:I

.field private final sizemap:[I

.field private final table:[Lscala/collection/mutable/HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lscala/collection/mutable/HashEntry",
            "<TA;TEntry;>;"
        }
    .end annotation
.end field

.field private final tableSize:I

.field private final threshold:I


# virtual methods
.method public loadFactor()I
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lscala/collection/mutable/HashTable$Contents;->loadFactor:I

    return v0
.end method

.method public seedvalue()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lscala/collection/mutable/HashTable$Contents;->seedvalue:I

    return v0
.end method

.method public sizemap()[I
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lscala/collection/mutable/HashTable$Contents;->sizemap:[I

    return-object v0
.end method

.method public table()[Lscala/collection/mutable/HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lscala/collection/mutable/HashEntry",
            "<TA;TEntry;>;"
        }
    .end annotation

    .prologue
    .line 482
    iget-object v0, p0, Lscala/collection/mutable/HashTable$Contents;->table:[Lscala/collection/mutable/HashEntry;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lscala/collection/mutable/HashTable$Contents;->tableSize:I

    return v0
.end method

.method public threshold()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lscala/collection/mutable/HashTable$Contents;->threshold:I

    return v0
.end method
