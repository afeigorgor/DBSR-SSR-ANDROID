.class public abstract Lscala/collection/generic/TraversableForwarder$class;
.super Ljava/lang/Object;
.source "TraversableForwarder.scala"


# direct methods
.method public static $div$colon(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;

    .prologue
    .line 45
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/Traversable;->$div$colon(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static $init$(Lscala/collection/generic/TraversableForwarder;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;

    .prologue
    .line 31
    return-void
.end method

.method public static addString(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "b"    # Lscala/collection/mutable/StringBuilder;
    .param p2, "start"    # Ljava/lang/String;
    .param p3, "sep"    # Ljava/lang/String;
    .param p4, "end"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lscala/collection/Traversable;->addString(Lscala/collection/mutable/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static copyToArray(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;I)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I

    .prologue
    .line 62
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/Traversable;->copyToArray(Ljava/lang/Object;I)V

    return-void
.end method

.method public static copyToArray(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;II)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 61
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lscala/collection/Traversable;->copyToArray(Ljava/lang/Object;II)V

    return-void
.end method

.method public static copyToBuffer(Lscala/collection/generic/TraversableForwarder;Lscala/collection/mutable/Buffer;)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "dest"    # Lscala/collection/mutable/Buffer;

    .prologue
    .line 60
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Traversable;->copyToBuffer(Lscala/collection/mutable/Buffer;)V

    return-void
.end method

.method public static exists(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 41
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Traversable;->exists(Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public static foldLeft(Lscala/collection/generic/TraversableForwarder;Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "z"    # Ljava/lang/Object;
    .param p2, "op"    # Lscala/Function2;

    .prologue
    .line 44
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lscala/collection/Traversable;->foldLeft(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static forall(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "p"    # Lscala/Function1;

    .prologue
    .line 40
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Traversable;->forall(Lscala/Function1;)Z

    move-result v0

    return v0
.end method

.method public static foreach(Lscala/collection/generic/TraversableForwarder;Lscala/Function1;)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "f"    # Lscala/Function1;

    .prologue
    .line 35
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Traversable;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public static head(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;

    .prologue
    .line 56
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Traversable;->head()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isEmpty(Lscala/collection/generic/TraversableForwarder;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;

    .prologue
    .line 36
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Traversable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static last(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;

    .prologue
    .line 58
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Traversable;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static mkString(Lscala/collection/generic/TraversableForwarder;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;

    .prologue
    .line 75
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Traversable;->mkString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mkString(Lscala/collection/generic/TraversableForwarder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "sep"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Traversable;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static mkString(Lscala/collection/generic/TraversableForwarder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "start"    # Ljava/lang/String;
    .param p2, "sep"    # Ljava/lang/String;
    .param p3, "end"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lscala/collection/Traversable;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nonEmpty(Lscala/collection/generic/TraversableForwarder;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;

    .prologue
    .line 37
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Traversable;->nonEmpty()Z

    move-result v0

    return v0
.end method

.method public static reduceLeft(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "op"    # Lscala/Function2;

    .prologue
    .line 48
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Traversable;->reduceLeft(Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static reduceLeftOption(Lscala/collection/generic/TraversableForwarder;Lscala/Function2;)Lscala/Option;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "op"    # Lscala/Function2;

    .prologue
    .line 49
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Traversable;->reduceLeftOption(Lscala/Function2;)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public static sum(Lscala/collection/generic/TraversableForwarder;Lscala/math/Numeric;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "num"    # Lscala/math/Numeric;

    .prologue
    .line 52
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Traversable;->sum(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Lscala/collection/generic/TraversableForwarder;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "evidence$1"    # Lscala/reflect/ClassTag;

    .prologue
    .line 64
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Traversable;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toBuffer(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/mutable/Buffer;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;

    .prologue
    .line 69
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Traversable;->toBuffer()Lscala/collection/mutable/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Lscala/collection/generic/TraversableForwarder;Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;
    .param p1, "ev"    # Lscala/Predef$$less$colon$less;

    .prologue
    .line 72
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0, p1}, Lscala/collection/Traversable;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public static toSeq(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/Seq;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;

    .prologue
    .line 67
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Traversable;->toSeq()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public static toSet(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/Set;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;

    .prologue
    .line 71
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Traversable;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    return-object v0
.end method

.method public static toStream(Lscala/collection/generic/TraversableForwarder;)Lscala/collection/immutable/Stream;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/TraversableForwarder;

    .prologue
    .line 70
    invoke-interface {p0}, Lscala/collection/generic/TraversableForwarder;->underlying()Lscala/collection/Traversable;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/Traversable;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
