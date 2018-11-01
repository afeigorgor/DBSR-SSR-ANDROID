.class public Lscala/collection/convert/Wrappers$JPropertiesWrapper;
.super Lscala/collection/mutable/AbstractMap;
.source "Wrappers.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/convert/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JPropertiesWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/collection/mutable/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/collection/convert/Wrappers;

.field private final underlying:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Lscala/collection/convert/Wrappers;Ljava/util/Properties;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/convert/Wrappers;
    .param p2, "underlying"    # Ljava/util/Properties;

    .prologue
    .line 383
    iput-object p2, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying:Ljava/util/Properties;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$outer:Lscala/collection/convert/Wrappers;

    invoke-direct {p0}, Lscala/collection/mutable/AbstractMap;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$minus(Ljava/lang/Object;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public $minus$eq(Ljava/lang/String;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic $minus$eq(Ljava/lang/Object;)Lscala/collection/mutable/MapLike;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 383
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$minus$eq(Ljava/lang/String;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$plus(Lscala/Tuple2;)Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public $plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;
    .locals 3
    .param p1, "kv"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lscala/collection/convert/Wrappers$JPropertiesWrapper;"
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/generic/Growable;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 383
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p1, "elem"    # Ljava/lang/Object;

    .prologue
    .line 383
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "elem":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus$eq(Lscala/Tuple2;)Lscala/collection/mutable/MapLike;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$plus$eq(Lscala/Tuple2;)Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->clone()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->empty()Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/convert/Wrappers$JPropertiesWrapper;
    .locals 3

    .prologue
    .line 420
    new-instance v0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->scala$collection$convert$Wrappers$JPropertiesWrapper$$$outer()Lscala/collection/convert/Wrappers;

    move-result-object v1

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    invoke-direct {v0, v1, v2}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;-><init>(Lscala/collection/convert/Wrappers;Ljava/util/Properties;)V

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/mutable/Map;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->empty()Lscala/collection/convert/Wrappers$JPropertiesWrapper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 383
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->get(Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lscala/Option;
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 391
    .local v0, "v":Ljava/lang/Object;
    if-nez v0, :cond_0

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    .line 389
    .end local v0    # "v":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 391
    .restart local v0    # "v":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lscala/Some;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "v":Ljava/lang/Object;
    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 409
    new-instance v0, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;

    invoke-direct {v0, p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper$$anon$3;-><init>(Lscala/collection/convert/Wrappers$JPropertiesWrapper;)V

    return-object v0
.end method

.method public productArity()I
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 2
    .param p1, "x$1"    # I

    .prologue
    .line 383
    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    const-string v0, "JPropertiesWrapper"

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 383
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->put(Ljava/lang/String;Ljava/lang/String;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lscala/Option;
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 399
    .local v0, "r":Ljava/lang/Object;
    if-nez v0, :cond_0

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    .line 397
    .end local v0    # "r":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 399
    .restart local v0    # "r":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lscala/Some;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "r":Ljava/lang/Object;
    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->result()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic scala$collection$convert$Wrappers$JPropertiesWrapper$$$outer()Lscala/collection/convert/Wrappers;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->$outer:Lscala/collection/convert/Wrappers;

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->seq()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 387
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying:Ljava/util/Properties;

    return-object v0
.end method

.method public bridge synthetic update(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 383
    check-cast p1, Ljava/lang/String;

    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->update(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-virtual {p0}, Lscala/collection/convert/Wrappers$JPropertiesWrapper;->underlying()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
