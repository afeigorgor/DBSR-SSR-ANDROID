.class public Lscala/collection/immutable/ListMap;
.super Lscala/collection/immutable/AbstractMap;
.source "ListMap.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/collection/immutable/ListMap$Node;,
        Lscala/collection/immutable/ListMap$EmptyListMap$;
    }
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

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lscala/collection/immutable/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic $minus(Ljava/lang/Object;)Lscala/collection/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListMap;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public $minus(Ljava/lang/Object;)Lscala/collection/immutable/ListMap;
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/collection/immutable/ListMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 116
    return-object p0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/GenMap;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public $plus(Lscala/Tuple2;)Lscala/collection/immutable/ListMap;
    .locals 2
    .param p1, "kv"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Tuple2",
            "<TA;TB1;>;)",
            "Lscala/collection/immutable/ListMap",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lscala/collection/immutable/ListMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic $plus(Lscala/Tuple2;)Lscala/collection/immutable/Map;
    .locals 1
    .param p1, "kv"    # Lscala/Tuple2;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListMap;->$plus(Lscala/Tuple2;)Lscala/collection/immutable/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lscala/collection/immutable/ListMap;->empty()Lscala/collection/immutable/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public empty()Lscala/collection/immutable/ListMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListMap",
            "<TA;",
            "Lscala/runtime/Nothing$;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lscala/collection/immutable/ListMap$;->MODULE$:Lscala/collection/immutable/ListMap$;

    invoke-virtual {v0}, Lscala/collection/immutable/ListMap$;->empty()Lscala/collection/immutable/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lscala/collection/immutable/Map;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lscala/collection/immutable/ListMap;->empty()Lscala/collection/immutable/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic filterNot(Lscala/Function1;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lscala/collection/immutable/ListMap;->filterNot(Lscala/Function1;)Lscala/collection/Map;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lscala/Option;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lscala/Option",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    return-object v0
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
    .line 121
    new-instance v0, Lscala/collection/immutable/ListMap$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/ListMap$$anon$1;-><init>(Lscala/collection/immutable/ListMap;)V

    .line 127
    invoke-virtual {v0}, Lscala/collection/immutable/ListMap$$anon$1;->toList()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->reverseIterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public key()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "empty map"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Lscala/collection/immutable/ListMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListMap",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "empty map"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic seq()Lscala/collection/Map;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lscala/collection/immutable/ListMap;->seq()Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lscala/collection/immutable/ListMap;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B1:",
            "Ljava/lang/Object;",
            ">(TA;TB1;)",
            "Lscala/collection/immutable/ListMap",
            "<TA;TB1;>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lscala/collection/immutable/ListMap$Node;

    invoke-direct {v0, p0, p1, p2}, Lscala/collection/immutable/ListMap$Node;-><init>(Lscala/collection/immutable/ListMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/ListMap;->updated(Ljava/lang/Object;Ljava/lang/Object;)Lscala/collection/immutable/ListMap;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "empty map"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
