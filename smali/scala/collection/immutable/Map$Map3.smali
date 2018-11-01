.class public Lscala/collection/immutable/Map$Map3;
.super Lscala/collection/immutable/AbstractMap;
.source "Map.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Map3"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/AbstractMap",
        "<TA;TB;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final key1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final key2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final key3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final value1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field private final value2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field

.field private final value3:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "key2"    # Ljava/lang/Object;
    .param p4, "value2"    # Ljava/lang/Object;
    .param p5, "key3"    # Ljava/lang/Object;
    .param p6, "value3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TB;TA;TB;TA;TB;)V"
        }
    .end annotation

    .prologue
    .line 141
    iput-object p1, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    iput-object p2, p0, Lscala/collection/immutable/Map$Map3;->value1:Ljava/lang/Object;

    iput-object p3, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    iput-object p4, p0, Lscala/collection/immutable/Map$Map3;->value2:Ljava/lang/Object;

    iput-object p5, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    iput-object p6, p0, Lscala/collection/immutable/Map$Map3;->value3:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/collection/immutable/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map3;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/Map",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    new-instance v0, Lscala/collection/immutable/Map$Map2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map3;->value2:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map3;->value3:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lscala/collection/immutable/Map$Map2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    .end local p0    # "this":Lscala/collection/immutable/Map$Map3;
    .end local p1    # "key":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object p0

    .restart local p0    # "this":Lscala/collection/immutable/Map$Map3;
    .restart local p1    # "key":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 157
    :cond_5
    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    if-ne p1, v3, :cond_6

    move v0, v1

    :goto_2
    if-eqz v0, :cond_a

    new-instance v0, Lscala/collection/immutable/Map$Map2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map3;->value1:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map3;->value3:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lscala/collection/immutable/Map$Map2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_1

    :cond_6
    if-nez p1, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_8
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 158
    :cond_a
    iget-object v0, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    if-ne p1, v0, :cond_b

    move v0, v1

    .end local p1    # "key":Ljava/lang/Object;
    :goto_3
    if-eqz v0, :cond_0

    new-instance v0, Lscala/collection/immutable/Map$Map2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map3;->value1:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map3;->value2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v4}, Lscala/collection/immutable/Map$Map2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_1

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_b
    if-nez p1, :cond_c

    move v0, v2

    goto :goto_3

    :cond_c
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_d

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_d
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_e

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_e
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lscala/collection/immutable/Map$Map3;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 2
    .param p1, "kv"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2",
            "<TA;TB1;>;)",
            "Lscala/collection/immutable/Map",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lscala/collection/immutable/Map$Map3;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public foreach(Lscala/Function1;)V
    .locals 3
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
    .line 161
    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map3;->value1:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map3;->value2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lscala/Tuple2;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map3;->value3:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    if-ne p1, v3, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Lscala/Some;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->value1:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    .end local p1    # "key":Ljava/lang/Object;
    :goto_1
    return-object v0

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 145
    :cond_4
    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    if-ne p1, v3, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_9

    new-instance v0, Lscala/Some;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->value2:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_7
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 146
    :cond_9
    iget-object v0, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    if-ne p1, v0, :cond_a

    move v0, v1

    .end local p1    # "key":Ljava/lang/Object;
    :goto_3
    if-eqz v0, :cond_e

    new-instance v0, Lscala/Some;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->value3:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_a
    if-nez p1, :cond_b

    move v0, v2

    goto :goto_3

    :cond_b
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_c

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_d

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-static {p1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .restart local p1    # "key":Ljava/lang/Object;
    :cond_d
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 147
    .end local p1    # "key":Ljava/lang/Object;
    :cond_e
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto/16 :goto_1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 7
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
    .line 148
    sget-object v1, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v0, 0x3

    new-array v0, v0, [Lscala/Tuple2;

    const/4 v3, 0x0

    new-instance v4, Lscala/Tuple2;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map3;->value1:Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    const/4 v3, 0x1

    new-instance v4, Lscala/Tuple2;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map3;->value2:Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    const/4 v3, 0x2

    new-instance v4, Lscala/Tuple2;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map3;->value3:Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/Iterator$;->apply(Lscala/collection/Seq;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x3

    return v0
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 9
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/immutable/Map",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    if-ne p1, v3, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    new-instance v0, Lscala/collection/immutable/Map$Map3;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map3;->value2:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map3;->value3:Ljava/lang/Object;

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lscala/collection/immutable/Map$Map3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 151
    :cond_4
    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    if-ne p1, v3, :cond_5

    move v0, v1

    :goto_2
    if-eqz v0, :cond_9

    new-instance v0, Lscala/collection/immutable/Map$Map3;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map3;->value1:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map3;->value3:Ljava/lang/Object;

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lscala/collection/immutable/Map$Map3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_7
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    .line 152
    :cond_9
    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    if-ne p1, v3, :cond_a

    move v0, v1

    :goto_3
    if-eqz v0, :cond_e

    new-instance v0, Lscala/collection/immutable/Map$Map3;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map3;->value1:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map3;->value2:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lscala/collection/immutable/Map$Map3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    if-nez p1, :cond_b

    move v0, v2

    goto :goto_3

    :cond_b
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_c
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, v3}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_d
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 153
    :cond_e
    new-instance v0, Lscala/collection/immutable/Map$Map4;

    iget-object v1, p0, Lscala/collection/immutable/Map$Map3;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lscala/collection/immutable/Map$Map3;->value1:Ljava/lang/Object;

    iget-object v3, p0, Lscala/collection/immutable/Map$Map3;->key2:Ljava/lang/Object;

    iget-object v4, p0, Lscala/collection/immutable/Map$Map3;->value2:Ljava/lang/Object;

    iget-object v5, p0, Lscala/collection/immutable/Map$Map3;->key3:Ljava/lang/Object;

    iget-object v6, p0, Lscala/collection/immutable/Map$Map3;->value3:Ljava/lang/Object;

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lscala/collection/immutable/Map$Map4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method
