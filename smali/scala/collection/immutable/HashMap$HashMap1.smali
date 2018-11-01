.class public Lscala/collection/immutable/HashMap$HashMap1;
.super Lscala/collection/immutable/HashMap;
.source "HashMap.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashMap1"
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

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private kv:Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Tuple2",
            "<TA;TB;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "kv"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;ITB;",
            "Lscala/Tuple2",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    iput-object p1, p0, Lscala/collection/immutable/HashMap$HashMap1;->key:Ljava/lang/Object;

    iput p2, p0, Lscala/collection/immutable/HashMap$HashMap1;->hash:I

    iput-object p3, p0, Lscala/collection/immutable/HashMap$HashMap1;->value:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/immutable/HashMap$HashMap1;->kv:Lscala/Tuple2;

    invoke-direct {p0}, Lscala/collection/immutable/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public ensurePair()Lscala/Tuple2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->kv()Lscala/Tuple2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->kv()Lscala/Tuple2;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lscala/Tuple2;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lscala/collection/immutable/HashMap$HashMap1;->kv_$eq(Lscala/Tuple2;)V

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->kv()Lscala/Tuple2;

    move-result-object v0

    goto :goto_0
.end method

.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashMap;I)Lscala/collection/immutable/HashMap;
    .locals 1
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
    .line 218
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->ensurePair()Lscala/Tuple2;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, p2

    if-eqz v0, :cond_0

    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashMap1;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashMap1;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
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
    .line 221
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->ensurePair()Lscala/Tuple2;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get0(Ljava/lang/Object;II)Lscala/Option;
    .locals 2
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
    .line 192
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_4

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Lscala/Some;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    :goto_1
    return-object v0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_2
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .end local p1    # "key":Ljava/lang/Object;
    :cond_4
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_1
.end method

.method public hash()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lscala/collection/immutable/HashMap$HashMap1;->hash:I

    return v0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 5
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
    .line 220
    sget-object v1, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v0, 0x1

    new-array v0, v0, [Lscala/Tuple2;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->ensurePair()Lscala/Tuple2;

    move-result-object v4

    aput-object v4, v0, v3

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/Iterator$;->apply(Lscala/collection/Seq;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lscala/collection/immutable/HashMap$HashMap1;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public kv()Lscala/Tuple2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Tuple2",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lscala/collection/immutable/HashMap$HashMap1;->kv:Lscala/Tuple2;

    return-object v0
.end method

.method public kv_$eq(Lscala/Tuple2;)V
    .locals 0
    .param p1, "x$1"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 184
    iput-object p1, p0, Lscala/collection/immutable/HashMap$HashMap1;->kv:Lscala/Tuple2;

    return-void
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashMap;
    .locals 2
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
    .line 215
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .end local p1    # "key":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {v0}, Lscala/collection/immutable/HashMap$;->empty()Lscala/collection/immutable/HashMap;

    move-result-object p0

    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashMap1;
    :cond_0
    return-object p0

    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashMap1;
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_3
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_4

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public updated0(Ljava/lang/Object;IILjava/lang/Object;Lscala/Tuple2;Lscala/collection/immutable/HashMap$Merger;)Lscala/collection/immutable/HashMap;
    .locals 8
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
    .line 195
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_6

    .line 196
    if-nez p6, :cond_5

    .line 197
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->value()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p4, :cond_4

    .line 195
    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashMap1;
    :goto_1
    return-object p0

    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashMap1;
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 198
    :cond_4
    new-instance p0, Lscala/collection/immutable/HashMap$HashMap1;

    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashMap1;
    invoke-direct {p0, p1, p2, p4, p5}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    goto :goto_1

    .line 200
    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashMap1;
    :cond_5
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->kv()Lscala/Tuple2;

    move-result-object v0

    invoke-virtual {p6, v0, p5}, Lscala/collection/immutable/HashMap$Merger;->apply(Lscala/Tuple2;Lscala/Tuple2;)Lscala/Tuple2;

    move-result-object v7

    .line 201
    .local v7, "nkv":Lscala/Tuple2;
    new-instance p0, Lscala/collection/immutable/HashMap$HashMap1;

    .end local p0    # "this":Lscala/collection/immutable/HashMap$HashMap1;
    invoke-virtual {v7}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1, v7}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    goto :goto_1

    .line 204
    .end local v7    # "nkv":Lscala/Tuple2;
    .restart local p0    # "this":Lscala/collection/immutable/HashMap$HashMap1;
    :cond_6
    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result v0

    if-eq p2, v0, :cond_7

    .line 206
    new-instance v4, Lscala/collection/immutable/HashMap$HashMap1;

    invoke-direct {v4, p1, p2, p4, p5}, Lscala/collection/immutable/HashMap$HashMap1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lscala/Tuple2;)V

    .line 207
    .local v4, "that":Lscala/collection/immutable/HashMap$HashMap1;
    sget-object v0, Lscala/collection/immutable/HashMap$;->MODULE$:Lscala/collection/immutable/HashMap$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->hash()I

    move-result v1

    const/4 v6, 0x2

    move-object v2, p0

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lscala/collection/immutable/HashMap$;->scala$collection$immutable$HashMap$$makeHashTrieMap(ILscala/collection/immutable/HashMap;ILscala/collection/immutable/HashMap;II)Lscala/collection/immutable/HashMap$HashTrieMap;

    move-result-object p0

    goto :goto_1

    .line 210
    .end local v4    # "that":Lscala/collection/immutable/HashMap$HashMap1;
    :cond_7
    new-instance v0, Lscala/collection/immutable/HashMap$HashMapCollision1;

    sget-object v1, Lscala/collection/immutable/ListMap$;->MODULE$:Lscala/collection/immutable/ListMap$;

    invoke-virtual {v1}, Lscala/collection/immutable/ListMap$;->empty()Lscala/collection/immutable/ListMap;

    move-result-object v1

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, Lscala/collection/immutable/HashMap$HashMap1;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lscala/collection/immutable/ListMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object v1

    invoke-virtual {v1, p1, p4}, Lscala/collection/immutable/ListMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lscala/collection/immutable/HashMap$HashMapCollision1;-><init>(ILscala/collection/immutable/ListMap;)V

    move-object p0, v0

    goto :goto_1
.end method

.method public value()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lscala/collection/immutable/HashMap$HashMap1;->value:Ljava/lang/Object;

    return-object v0
.end method
