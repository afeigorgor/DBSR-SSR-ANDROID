.class public abstract Lscala/collection/mutable/ArrayOps$class;
.super Ljava/lang/Object;
.source "ArrayOps.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/ArrayOps;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/ArrayOps;

    .prologue
    .line 37
    return-void
.end method

.method public static copyToArray(Lscala/collection/mutable/ArrayOps;Ljava/lang/Object;II)V
    .locals 6
    .param p0, "$this"    # Lscala/collection/mutable/ArrayOps;
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 43
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p3, v1}, Lscala/math/package$;->min(II)I

    move-result v5

    .line 44
    .local v5, "l":I
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v0, p2

    if-ge v0, v5, :cond_0

    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v1, p1}, Lscala/runtime/ScalaRunTime$;->array_length(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Lscala/runtime/RichInt$;->max$extension(II)I

    move-result v5

    .line 45
    :cond_0
    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object v1

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lscala/Array$;->copy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static elementClass(Lscala/collection/mutable/ArrayOps;)Ljava/lang/Class;
    .locals 2
    .param p0, "$this"    # Lscala/collection/mutable/ArrayOps;

    .prologue
    .line 40
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static flatten(Lscala/collection/mutable/ArrayOps;Lscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 5
    .param p0, "$this"    # Lscala/collection/mutable/ArrayOps;
    .param p1, "asTrav"    # Lscala/Function1;
    .param p2, "m"    # Lscala/reflect/ClassTag;

    .prologue
    .line 80
    sget-object v1, Lscala/Array$;->MODULE$:Lscala/Array$;

    invoke-virtual {v1, p2}, Lscala/Array$;->newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object v0

    .line 81
    .local v0, "b":Lscala/collection/mutable/ArrayBuilder;
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v1, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$1;

    invoke-direct {v1, p0}, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$1;-><init>(Lscala/collection/mutable/ArrayOps;)V

    sget-object v3, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v4, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v4}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {p0, v1, v3}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {v2, v1}, Lscala/Predef$;->intArrayOps([I)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    sget-object v2, Lscala/math/Numeric$IntIsIntegral$;->MODULE$:Lscala/math/Numeric$IntIsIntegral$;

    invoke-interface {v1, v2}, Lscala/collection/mutable/ArrayOps;->sum(Lscala/math/Numeric;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/ArrayBuilder;->sizeHint(I)V

    .line 82
    new-instance v1, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$2;

    invoke-direct {v1, p0, v0, p1}, Lscala/collection/mutable/ArrayOps$$anonfun$flatten$2;-><init>(Lscala/collection/mutable/ArrayOps;Lscala/collection/mutable/ArrayBuilder;Lscala/Function1;)V

    invoke-interface {p0, v1}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 84
    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuilder;->result()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static seq(Lscala/collection/mutable/ArrayOps;)Lscala/collection/mutable/IndexedSeq;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/ArrayOps;

    .prologue
    .line 174
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->thisCollection()Lscala/collection/mutable/IndexedSeq;

    move-result-object v0

    return-object v0
.end method

.method public static toArray(Lscala/collection/mutable/ArrayOps;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lscala/collection/mutable/ArrayOps;
    .param p1, "evidence$1"    # Lscala/reflect/ClassTag;

    .prologue
    .line 49
    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1, p1}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "thatElementClass":Ljava/lang/Class;
    invoke-static {p0}, Lscala/collection/mutable/ArrayOps$class;->elementClass(Lscala/collection/mutable/ArrayOps;)Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 51
    invoke-interface {p0}, Lscala/collection/mutable/ArrayOps;->repr()Ljava/lang/Object;

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .line 53
    :cond_0
    invoke-interface {p0, p1}, Lscala/collection/mutable/ArrayOps;->scala$collection$mutable$ArrayOps$$super$toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
