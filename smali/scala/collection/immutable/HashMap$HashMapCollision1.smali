.class public Lscala/collection/immutable/HashMap$HashMapCollision1;
.super Lscala/collection/immutable/HashMap;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMapCollision1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/HashMap",
        "<TA;TB;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final kvs:Lscala/collection/immutable/ListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/ListMap",
            "<TA;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILscala/collection/immutable/ListMap;)V
    .locals 0
    .param p1, "hash"    # I
    .param p2, "kvs"    # Lscala/collection/immutable/ListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/immutable/ListMap",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 229
    iput p1, p0, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash:I

    iput-object p2, p0, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs:Lscala/collection/immutable/ListMap;

    .line 230
    invoke-direct {p0}, Lscala/collection/immutable/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;
    .locals 8
    .param p1, "p"    # Lscala/Function1;
    .param p2, "negate"    # Z
    .param p3, "level"    # I
    .param p4, "buffer"    # [Lscala/collection/immutable/HashMap;
    .param p5, "offset0"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;I)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 264
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lscala/collection/immutable/ListMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object v4

    check-cast v4, Lscala/collection/immutable/ListMap;

    move-object v2, v4

    .line 265
    .local v2, "kvs1":Lscala/collection/immutable/ListMap;
    :goto_0
    invoke-virtual {v2}, Lscala/collection/immutable/ListMap;->size()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 271
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/immutable/ListMap;->size()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 263
    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashMapCollision1;
    :goto_1
    return-object p0

    .line 264
    .end local v2    # "kvs1":Lscala/collection/immutable/ListMap;
    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashMapCollision1;
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lscala/collection/immutable/ListMap;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/collection/immutable/ListMap;

    move-object v2, v4

    goto :goto_0

    .line 274
    .restart local v2    # "kvs1":Lscala/collection/immutable/ListMap;
    :cond_1
    new-instance v4, Lscala/collection/immutable/HashMap$HashMapCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result v5

    invoke-direct {v4, v5, v2}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    move-object p0, v4

    goto :goto_1

    .line 269
    :pswitch_0
    invoke-virtual {v2}, Lscala/collection/immutable/ListMap;->head()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Tuple2;

    if-eqz v4, :cond_2

    new-instance v5, Lscala/Tuple3;

    invoke-virtual {v4}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7}, Lscala/Tuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5}, Lscala/Tuple3;->_1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/Tuple2;

    .local v1, "kv":Lscala/Tuple2;
    invoke-virtual {v5}, Lscala/Tuple3;->_2()Ljava/lang/Object;

    move-result-object v0

    .local v0, "k":Ljava/lang/Object;
    invoke-virtual {v5}, Lscala/Tuple3;->_3()Ljava/lang/Object;

    move-result-object v3

    .line 270
    .local v3, "v":Ljava/lang/Object;
    new-instance v4, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result v5

    invoke-direct {v4, v0, v5, v3, v1}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    move-object p0, v4

    goto :goto_1

    .line 269
    .end local v0    # "k":Ljava/lang/Object;
    .end local v1    # "kv":Lscala/Tuple2;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_2
    new-instance v5, Lscala/MatchError;

    invoke-direct {v5, v4}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 267
    :pswitch_1
    const/4 p0, 0x0

    goto :goto_1

    .line 265
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
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;TU;>;)V"
        }
    .end annotation

    .prologue
    .line 279
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListMap;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public get0(Ljava/lang/Object;II)Lscala/Option;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public hash()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash:I

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<TA;TB;>;>;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListMap;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public kvs()Lscala/collection/immutable/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs:Lscala/collection/immutable/ListMap;

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 249
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lscala/collection/immutable/ListMap;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object v1

    .line 250
    .local v1, "kvs1":Lscala/collection/immutable/ListMap;
    invoke-virtual {v1}, Lscala/collection/immutable/ListMap;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 256
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/immutable/ListMap;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 248
    .end local v1    # "kvs1":Lscala/collection/immutable/ListMap;
    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashMapCollision1;
    :cond_0
    :goto_0
    return-object p0

    .line 259
    .restart local v1    # "kvs1":Lscala/collection/immutable/ListMap;
    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashMapCollision1;
    :cond_1
    new-instance p0, Lscala/collection/immutable/HashMap$HashMapCollision1;

    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashMapCollision1;
    invoke-direct {p0, p2, v1}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    goto :goto_0

    .line 254
    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashMapCollision1;
    :pswitch_0
    invoke-virtual {v1}, Lscala/collection/immutable/ListMap;->head()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/Tuple2;

    .line 255
    .local v0, "kv":Lscala/Tuple2;
    new-instance p0, Lscala/collection/immutable/HashMap$HashMap1;

    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashMapCollision1;
    invoke-virtual {v0}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3, v0}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    goto :goto_0

    .line 252
    .end local v0    # "kv":Lscala/Tuple2;
    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashMapCollision1;
    :pswitch_1
    sget-object v2, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v2}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object p0

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListMap;->size()I

    move-result v0

    return v0
.end method

.method public updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
    .locals 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "level"    # I
    .param p4, "value"    # Ljava/lang/Object;
    .param p5, "kv"    # Lscala/Tuple2;
    .param p6, "merger"    # Lscala/collection/immutable/HashMap$Merger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;IITB1;",
            "Lscala/Tuple2",
            "<TA;TB1;>;",
            "Lscala/collection/immutable/HashMap$Merger",
            "<TA;TB1;>;)",
            "Lscala/collection/immutable/HashMap",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 240
    if-eqz p6, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lscala/collection/immutable/HashMap$HashMapCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v1

    new-instance v2, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Lscala/collection/immutable/ListMap;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p6, v2, p5}, Lscala/collection/immutable/HashMap$Merger;->apply(Lscala/Tuple2;Lscala/Tuple2;)Lscala/Tuple2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/immutable/ListMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/ListMap;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    .line 239
    :goto_0
    return-object v0

    .line 240
    :cond_0
    new-instance v0, Lscala/collection/immutable/HashMap$HashMapCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->kvs()Lscala/collection/immutable/ListMap;

    move-result-object v1

    invoke-virtual {v1, p1, p4}, Lscala/collection/immutable/ListMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    goto :goto_0

    .line 243
    :cond_1
    new-instance v4, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-direct {v4, p1, p2, p4, p5}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    .line 244
    .local v4, "that":Lscala/collection/immutable/HashMap$HashMap1;
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->hash()I

    move-result v1

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMapCollision1;->size()I

    move-result v2

    add-int/lit8 v6, v2, 0x1

    move-object v2, p0

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap$;->scala$collection$immutable$HashMap$$makeHashTrieMap(ILscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap;II)Lscala/collection/immutable/HashMap$HashTrieMap;

    move-result-object v0

    goto :goto_0
.end method
