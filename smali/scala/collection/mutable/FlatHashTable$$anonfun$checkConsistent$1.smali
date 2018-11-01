.class public final Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;
.super Lscala/runtime/AbstractFunction1$mcVI$sp;
.source "FlatHashTable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/mutable/FlatHashTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/mutable/FlatHashTable;


# direct methods
.method public constructor <init>(Lscala/collection/mutable/FlatHashTable;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/mutable/FlatHashTable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/FlatHashTable",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 232
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 232
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->apply(I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v0}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    iget-object v1, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    iget-object v2, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v2}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-interface {v1, v2}, Lscala/collection/mutable/FlatHashTable;->entryToElem(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/FlatHashTable;->containsElem(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 234
    :cond_1
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;

    invoke-direct {v0, p0, p1}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;-><init>(Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;I)V

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v3, "assertion failed: "

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->apply()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
