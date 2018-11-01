.class public final Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;
.super Lscala/runtime/AbstractFunction0;
.source "FlatHashTable.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->apply(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;

.field public final i$1:I


# direct methods
.method public constructor <init>(Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;I)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;
    .param p2, "i$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/FlatHashTable",
            "<TA;>.1;)V"
        }
    .end annotation

    .prologue
    .line 234
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->$outer:Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;

    iput p2, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->i$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->apply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget v1, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->i$1:I

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(I)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->$outer:Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;

    iget-object v1, v1, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v1}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->i$1:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v2, p0, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1$$anonfun$apply$mcVI$sp$1;->$outer:Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;

    iget-object v2, v2, Lscala/collection/mutable/FlatHashTable$$anonfun$checkConsistent$1;->$outer:Lscala/collection/mutable/FlatHashTable;

    invoke-interface {v2}, Lscala/collection/mutable/FlatHashTable;->table()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/ArrayOps;->mkString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
