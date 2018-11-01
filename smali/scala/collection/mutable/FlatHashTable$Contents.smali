.class public Lscala/collection/mutable/FlatHashTable$Contents;
.super Ljava/lang/Object;
.source "FlatHashTable.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/FlatHashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final loadFactor:I

.field private final seedvalue:I

.field private final sizemap:[I

.field private final table:[Ljava/lang/Object;

.field private final tableSize:I

.field private final threshold:I


# virtual methods
.method public loadFactor()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->loadFactor:I

    return v0
.end method

.method public seedvalue()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->seedvalue:I

    return v0
.end method

.method public sizemap()[I
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->sizemap:[I

    return-object v0
.end method

.method public table()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->table:[Ljava/lang/Object;

    return-object v0
.end method

.method public tableSize()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->tableSize:I

    return v0
.end method

.method public threshold()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lscala/collection/mutable/FlatHashTable$Contents;->threshold:I

    return v0
.end method
