.class public Lscala/collection/immutable/HashSet$HashSetCollision1;
.super Lscala/collection/immutable/HashSet$LeafHashSet;
.source "HashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashSetCollision1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/HashSet$LeafHashSet",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final ks:Lscala/collection/immutable/ListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/ListSet",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILscala/collection/immutable/ListSet;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "ks"    # Lscala/collection/immutable/ListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/immutable/ListSet",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 319
    iput p1, p0, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash:I

    iput-object p2, p0, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks:Lscala/collection/immutable/ListSet;

    invoke-direct {p0}, Lscala/collection/immutable/HashSet$LeafHashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 4
    .param p1, "p"    # Lscala/Function1;
    .param p2, "negate"    # Z
    .param p3, "level"    # I
    .param p4, "buffer"    # [Lscala/collection/immutable/HashSet;
    .param p5, "offset0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<TA;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;I)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 448
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/ListSet;->filterNot(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/ListSet;

    move-object v0, v1

    .line 449
    .local v0, "ks1":Lscala/collection/immutable/ListSet;
    :goto_0
    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 454
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/ListSet;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 447
    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashSetCollision1;
    :goto_1
    return-object p0

    .line 448
    .end local v0    # "ks1":Lscala/collection/immutable/ListSet;
    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashSetCollision1;
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/ListSet;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/ListSet;

    move-object v0, v1

    goto :goto_0

    .line 457
    .restart local v0    # "ks1":Lscala/collection/immutable/ListSet;
    :cond_1
    new-instance v1, Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    move-object p0, v1

    goto :goto_1

    .line 453
    :pswitch_0
    new-instance v1, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->head()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    move-object p0, v1

    goto :goto_1

    .line 451
    :pswitch_1
    const/4 p0, 0x0

    goto :goto_1

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public foreach(Lscala/Function1;)V
    .locals 1
    .param p1, "f"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1",
            "<TA;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListSet;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public get0(Ljava/lang/Object;II)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)Z"
        }
    .end annotation

    .prologue
    .line 324
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hash()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash:I

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public ks()Lscala/collection/immutable/ListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks:Lscala/collection/immutable/ListSet;

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 430
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/ListSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object v0

    .line 431
    .local v0, "ks1":Lscala/collection/immutable/ListSet;
    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 438
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/immutable/ListSet;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 429
    .end local v0    # "ks1":Lscala/collection/immutable/ListSet;
    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashSetCollision1;
    :cond_0
    :goto_0
    return-object p0

    .line 443
    .restart local v0    # "ks1":Lscala/collection/immutable/ListSet;
    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashSetCollision1;
    :cond_1
    new-instance p0, Lscala/collection/immutable/HashSet$HashSetCollision1;

    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashSetCollision1;
    invoke-direct {p0, p2, v0}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    goto :goto_0

    .line 437
    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashSetCollision1;
    :pswitch_0
    new-instance p0, Lscala/collection/immutable/HashSet$HashSet1;

    .end local p0    # "this":Lscala/collection/immutable/HashSet$HashSetCollision1;
    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->head()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    .line 434
    .restart local p0    # "this":Lscala/collection/immutable/HashSet$HashSetCollision1;
    :pswitch_1
    const/4 p0, 0x0

    goto :goto_0

    .line 431
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->size()I

    move-result v0

    return v0
.end method

.method public subsetOf0(Lscala/collection/immutable/HashSet;I)Z
    .locals 2
    .param p1, "that"    # Lscala/collection/immutable/HashSet;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;I)Z"
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;-><init>(Lscala/collection/immutable/HashSet$HashSetCollision1;Lscala/collection/immutable/HashSet;I)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/ListSet;->forall(Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_0

    new-instance v0, Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    :goto_0
    return-object v0

    .line 336
    :cond_0
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v1

    new-instance v4, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-direct {v4, p1, p2}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    move-object v2, p0

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/HashSet$;->scala$collection$immutable$HashSet$$makeHashTrieSet(ILscala/collection/immutable/HashSet;ILscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet$HashTrieSet;

    move-result-object v0

    goto :goto_0
.end method
