.class public abstract Lscala/collection/MapLike$class;
.super Ljava/lang/Object;
.source "MapLike.scala"


# direct methods
.method public static $init$(Lscala/collection/MapLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/MapLike;

    .prologue
    .line 58
    return-void
.end method

.method public static addString(Lscala/collection/MapLike;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 2
    .param p0, "$this"    # Lscala/collection/MapLike;
    .param p1, "b"    # Lscala/collection/mutable/StringBuilder;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "sep"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-interface {p0}, Lscala/collection/MapLike;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/MapLike$$anonfun$addString$1;

    invoke-direct {v1, p0}, Lscala/collection/MapLike$$anonfun$addString$1;-><init>(Lscala/collection/MapLike;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lscala/collection/Iterator;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static apply(Lscala/collection/MapLike;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/MapLike;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 140
    invoke-interface {p0, p1}, Lscala/collection/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 141
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, Lscala/collection/MapLike;->default(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    .line 142
    :cond_0
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 140
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static contains(Lscala/collection/MapLike;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/MapLike;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 150
    invoke-interface {p0, p1}, Lscala/collection/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    invoke-virtual {v0}, Lscala/Option;->isDefined()Z

    move-result v0

    return v0
.end method

.method public static default(Lscala/collection/MapLike;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lscala/collection/MapLike;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 228
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "key not found: "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static filterNot(Lscala/collection/MapLike;Lscala/Function1;)Lscala/collection/Map;
    .locals 2
    .param p0, "$this"    # Lscala/collection/MapLike;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 316
    invoke-interface {p0}, Lscala/collection/MapLike;->repr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/Map;

    invoke-static {v1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 317
    .local v0, "res":Lscala/runtime/ObjectRef;
    new-instance v1, Lscala/collection/MapLike$$anonfun$filterNot$1;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/MapLike$$anonfun$filterNot$1;-><init>(Lscala/collection/MapLike;Lscala/runtime/ObjectRef;Lscala/Function1;)V

    invoke-interface {p0, v1}, Lscala/collection/MapLike;->foreach(Lscala/Function1;)V

    .line 319
    iget-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/Map;

    return-object v1
.end method

.method public static getOrElse(Lscala/collection/MapLike;Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/MapLike;
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "default"    # Lscala/Function0;

    .prologue
    .line 126
    invoke-interface {p0, p1}, Lscala/collection/MapLike;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 127
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 128
    :cond_0
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static isDefinedAt(Lscala/collection/MapLike;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/MapLike;
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 159
    invoke-interface {p0, p1}, Lscala/collection/MapLike;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty(Lscala/collection/MapLike;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/MapLike;

    .prologue
    .line 113
    invoke-interface {p0}, Lscala/collection/MapLike;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newBuilder(Lscala/collection/MapLike;)Lscala/collection/mutable/Builder;
    .locals 2
    .param p0, "$this"    # Lscala/collection/MapLike;

    .prologue
    .line 74
    new-instance v0, Lscala/collection/mutable/MapBuilder;

    invoke-interface {p0}, Lscala/collection/MapLike;->empty()Lscala/collection/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/MapBuilder;-><init>(Lscala/collection/GenMap;)V

    return-object v0
.end method

.method public static stringPrefix(Lscala/collection/MapLike;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/MapLike;

    .prologue
    .line 350
    const-string v0, "Map"

    return-object v0
.end method

.method public static toBuffer(Lscala/collection/MapLike;)Lscala/collection/mutable/Buffer;
    .locals 2
    .param p0, "$this"    # Lscala/collection/MapLike;

    .prologue
    .line 325
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-interface {p0}, Lscala/collection/MapLike;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lscala/collection/mutable/ArrayBuffer;-><init>(I)V

    .line 326
    .local v0, "result":Lscala/collection/mutable/ArrayBuffer;
    invoke-interface {p0, v0}, Lscala/collection/MapLike;->copyToBuffer(Lscala/collection/mutable/Buffer;)V

    .line 327
    return-object v0
.end method

.method public static toSeq(Lscala/collection/MapLike;)Lscala/collection/Seq;
    .locals 1
    .param p0, "$this"    # Lscala/collection/MapLike;

    .prologue
    .line 323
    invoke-interface {p0}, Lscala/collection/MapLike;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lscala/collection/MapLike;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/MapLike;

    .prologue
    .line 353
    invoke-static {p0}, Lscala/collection/TraversableLike$class;->toString(Lscala/collection/TraversableLike;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
