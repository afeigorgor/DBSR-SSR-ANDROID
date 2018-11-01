.class public abstract Lscala/collection/immutable/StringLike$class;
.super Ljava/lang/Object;
.source "StringLike.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/StringLike;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;

    .prologue
    .line 43
    return-void
.end method

.method public static apply(Lscala/collection/immutable/StringLike;I)C
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "n"    # I

    .prologue
    .line 52
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static compare(Lscala/collection/immutable/StringLike;Ljava/lang/String;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "other"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static format(Lscala/collection/immutable/StringLike;Lscala/collection/Seq;)Ljava/lang/String;
    .locals 3
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "args"    # Lscala/collection/Seq;

    .prologue
    .line 318
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lscala/collection/immutable/StringLike$$anonfun$format$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StringLike$$anonfun$format$1;-><init>(Lscala/collection/immutable/StringLike;)V

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v2}, Lscala/reflect/ClassTag$;->AnyRef()Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/collection/TraversableOnce;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatLocal(Lscala/collection/immutable/StringLike;Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;
    .locals 3
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "l"    # Ljava/util/Locale;
    .param p2, "args"    # Lscala/collection/Seq;

    .prologue
    .line 335
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lscala/collection/immutable/StringLike$$anonfun$formatLocal$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StringLike$$anonfun$formatLocal$1;-><init>(Lscala/collection/immutable/StringLike;)V

    sget-object v2, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v2}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lscala/collection/Seq;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v2}, Lscala/reflect/ClassTag$;->AnyRef()Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-interface {v0, v2}, Lscala/collection/TraversableOnce;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static linesWithSeparators(Lscala/collection/immutable/StringLike;)Lscala/collection/Iterator;
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;

    .prologue
    .line 109
    new-instance v0, Lscala/collection/immutable/StringLike$$anon$1;

    invoke-direct {v0, p0}, Lscala/collection/immutable/StringLike$$anon$1;-><init>(Lscala/collection/immutable/StringLike;)V

    return-object v0
.end method

.method public static mkString(Lscala/collection/immutable/StringLike;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;

    .prologue
    .line 56
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseBoolean(Lscala/collection/immutable/StringLike;Ljava/lang/String;)Z
    .locals 3
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 287
    if-nez p1, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "For input string: \"null\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 287
    :goto_0
    return v0

    .line 289
    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "For input string: \""

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static r(Lscala/collection/immutable/StringLike;)Lscala/util/matching/Regex;
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;

    .prologue
    .line 244
    sget-object v0, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    invoke-interface {p0, v0}, Lscala/collection/immutable/StringLike;->r(Lscala/collection/Seq;)Lscala/util/matching/Regex;

    move-result-object v0

    return-object v0
.end method

.method public static r(Lscala/collection/immutable/StringLike;Lscala/collection/Seq;)Lscala/util/matching/Regex;
    .locals 2
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "groupNames"    # Lscala/collection/Seq;

    .prologue
    .line 255
    new-instance v0, Lscala/util/matching/Regex;

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lscala/util/matching/Regex;-><init>(Ljava/lang/String;Lscala/collection/Seq;)V

    return-object v0
.end method

.method public static scala$collection$immutable$StringLike$$isLineBreak(Lscala/collection/immutable/StringLike;C)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "c"    # C

    .prologue
    .line 76
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static scala$collection$immutable$StringLike$$unwrapArg(Lscala/collection/immutable/StringLike;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 299
    instance-of v0, p1, Lscala/math/ScalaNumber;

    if-eqz v0, :cond_0

    check-cast p1, Lscala/math/ScalaNumber;

    .end local p1    # "arg":Ljava/lang/Object;
    invoke-virtual {p1}, Lscala/math/ScalaNumber;->underlying()Ljava/lang/Object;

    move-result-object p1

    .line 298
    :cond_0
    return-object p1
.end method

.method public static slice(Lscala/collection/immutable/StringLike;II)Ljava/lang/Object;
    .locals 5
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "from"    # I
    .param p2, "until"    # I

    .prologue
    sget-object v2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 59
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v1

    .local v1, "start":I
    sget-object v2, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 60
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->length()I

    move-result v3

    invoke-virtual {v2, p2, v3}, Lscala/runtime/RichInt$;->min$extension(II)I

    move-result v0

    .line 62
    .local v0, "end":I
    if-lt v1, v0, :cond_0

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v2

    .line 58
    :goto_0
    return-object v2

    .line 63
    :cond_0
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v2

    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v2

    check-cast v2, Lscala/collection/mutable/Builder;

    invoke-interface {v2}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public static split(Lscala/collection/immutable/StringLike;C)[Ljava/lang/String;
    .locals 10
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "separator"    # C

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 207
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, "thisString":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 210
    .local v5, "pos":I
    if-eq v5, v9, :cond_4

    .line 211
    new-instance v7, Lscala/collection/mutable/ArrayBuilder$ofRef;

    sget-object v0, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v0

    invoke-direct {v7, v0}, Lscala/collection/mutable/ArrayBuilder$ofRef;-><init>(Lscala/reflect/ClassTag;)V

    .line 213
    .local v7, "res":Lscala/collection/mutable/ArrayBuilder$ofRef;
    const/4 v6, 0x0

    .line 215
    .local v6, "prev":I
    :cond_0
    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;

    .line 216
    add-int/lit8 v6, v5, 0x1

    .line 217
    invoke-virtual {v8, p1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 218
    if-ne v5, v9, :cond_0

    .line 220
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v6, v0, :cond_1

    .line 221
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lscala/collection/mutable/ArrayBuilder$ofRef;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuilder$ofRef;

    .line 223
    :goto_0
    invoke-virtual {v7}, Lscala/collection/mutable/ArrayBuilder$ofRef;->result()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 224
    .local v1, "initialResult":[Ljava/lang/String;
    array-length v5, v1

    .line 225
    :goto_1
    if-lez v5, :cond_2

    add-int/lit8 v0, v5, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 220
    .end local v1    # "initialResult":[Ljava/lang/String;
    :cond_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 226
    .restart local v1    # "initialResult":[Ljava/lang/String;
    :cond_2
    array-length v0, v1

    if-eq v5, v0, :cond_3

    .line 227
    new-array v3, v5, [Ljava/lang/String;

    .line 228
    .local v3, "trimmed":[Ljava/lang/String;
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    .end local v1    # "initialResult":[Ljava/lang/String;
    .end local v3    # "trimmed":[Ljava/lang/String;
    .end local v6    # "prev":I
    .end local v7    # "res":Lscala/collection/mutable/ArrayBuilder$ofRef;
    :goto_2
    return-object v3

    .restart local v1    # "initialResult":[Ljava/lang/String;
    .restart local v6    # "prev":I
    .restart local v7    # "res":Lscala/collection/mutable/ArrayBuilder$ofRef;
    :cond_3
    move-object v3, v1

    .line 230
    goto :goto_2

    .line 231
    .end local v1    # "initialResult":[Ljava/lang/String;
    .end local v6    # "prev":I
    .end local v7    # "res":Lscala/collection/mutable/ArrayBuilder$ofRef;
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object v8, v0, v2

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    goto :goto_2
.end method

.method public static stripMargin(Lscala/collection/immutable/StringLike;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;

    .prologue
    .line 202
    const/16 v0, 0x7c

    invoke-interface {p0, v0}, Lscala/collection/immutable/StringLike;->stripMargin(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripMargin(Lscala/collection/immutable/StringLike;C)Ljava/lang/String;
    .locals 3
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "marginChar"    # C

    .prologue
    .line 186
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 187
    .local v0, "buf":Lscala/collection/mutable/StringBuilder;
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->linesWithSeparators()Lscala/collection/Iterator;

    move-result-object v1

    new-instance v2, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;

    invoke-direct {v2, p0, v0, p1}, Lscala/collection/immutable/StringLike$$anonfun$stripMargin$1;-><init>(Lscala/collection/immutable/StringLike;Lscala/collection/mutable/StringBuilder;C)V

    invoke-interface {v1, v2}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    .line 194
    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toArray(Lscala/collection/immutable/StringLike;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;
    .param p1, "evidence$1"    # Lscala/reflect/ClassTag;

    .prologue
    .line 296
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public static toBoolean(Lscala/collection/immutable/StringLike;)Z
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;

    .prologue
    .line 260
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lscala/collection/immutable/StringLike$class;->parseBoolean(Lscala/collection/immutable/StringLike;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static toDouble(Lscala/collection/immutable/StringLike;)D
    .locals 2
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;

    .prologue
    .line 284
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static toInt(Lscala/collection/immutable/StringLike;)I
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/StringLike;

    .prologue
    .line 272
    invoke-interface {p0}, Lscala/collection/immutable/StringLike;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
