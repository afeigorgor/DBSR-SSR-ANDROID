.class public final Lscala/math/BigDecimal;
.super Lscala/math/ScalaNumber;
.source "BigDecimal.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/math/ScalaNumericConversions;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final bigDecimal:Ljava/math/BigDecimal;

.field private computedHashCode:I

.field private final mc:Ljava/math/MathContext;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V
    .locals 2
    .param p1, "bigDecimal"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 400
    iput-object p1, p0, Lscala/math/BigDecimal;->bigDecimal:Ljava/math/BigDecimal;

    iput-object p2, p0, Lscala/math/BigDecimal;->mc:Ljava/math/MathContext;

    .line 401
    invoke-direct {p0}, Lscala/math/ScalaNumber;-><init>()V

    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->$init$(Lscala/math/ScalaNumericAnyConversions;)V

    .line 406
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null value for BigDecimal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null MathContext for BigDecimal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_1
    const v0, 0x5d50690f

    iput v0, p0, Lscala/math/BigDecimal;->computedHashCode:I

    return-void
.end method

.method private final computeHashCode()V
    .locals 4

    .prologue
    .line 418
    .line 419
    invoke-virtual {p0}, Lscala/math/BigDecimal;->isWhole()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lscala/math/BigDecimal;->precision()I

    move-result v1

    invoke-virtual {p0}, Lscala/math/BigDecimal;->scale()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x1346

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lscala/math/BigDecimal;->toBigInt()Lscala/math/BigInt;

    move-result-object v1

    invoke-virtual {v1}, Lscala/math/BigInt;->hashCode()I

    move-result v1

    .line 418
    :goto_0
    invoke-direct {p0, v1}, Lscala/math/BigDecimal;->computedHashCode_$eq(I)V

    return-void

    .line 420
    :cond_0
    invoke-virtual {p0}, Lscala/math/BigDecimal;->isDecimalDouble()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {p0}, Lscala/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lscala/runtime/ScalaRunTime$;->hash(D)I

    move-result v1

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    .line 423
    .local v0, "temp":Ljava/math/BigDecimal;
    sget-object v1, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->hashCode()I

    move-result v2

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lscala/util/hashing/MurmurHash3$;->mixLast(II)I

    move-result v1

    goto :goto_0
.end method

.method private final computedHashCode()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Lscala/math/BigDecimal;->computedHashCode:I

    return v0
.end method

.method private final computedHashCode_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 416
    iput p1, p0, Lscala/math/BigDecimal;->computedHashCode:I

    return-void
.end method

.method private noArithmeticException(Lscala/Function0;)Z
    .locals 1
    .param p1, "body"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 524
    :try_start_0
    invoke-interface {p1}, Lscala/Function0;->apply$mcV$sp()V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 525
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bigDecimal()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lscala/math/BigDecimal;->bigDecimal:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public byteValue()B
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lscala/math/BigDecimal;->intValue()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public compare(Lscala/math/BigDecimal;)I
    .locals 2
    .param p1, "that"    # Lscala/math/BigDecimal;

    .prologue
    .line 539
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 717
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 12
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 446
    instance-of v3, p1, Lscala/math/BigDecimal;

    if-eqz v3, :cond_1

    check-cast p1, Lscala/math/BigDecimal;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/math/BigDecimal;->equals(Lscala/math/BigDecimal;)Z

    move-result v4

    .line 445
    :cond_0
    :goto_0
    return v4

    .line 447
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v3, p1, Lscala/math/BigInt;

    if-eqz v3, :cond_4

    check-cast p1, Lscala/math/BigInt;

    .line 448
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p1}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    int-to-double v6, v3

    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->precision()I

    move-result v3

    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->scale()I

    move-result v8

    sub-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x2

    int-to-double v8, v3

    const-wide v10, 0x400a934f0979a372L    # 3.3219280948873626

    mul-double/2addr v8, v10

    cmpl-double v3, v6, v8

    if-lez v3, :cond_3

    .line 449
    invoke-virtual {p0}, Lscala/math/BigDecimal;->toBigIntExact()Lscala/Option;

    move-result-object v3

    new-instance v6, Lscala/math/BigDecimal$$anonfun$equals$1;

    invoke-direct {v6, p0, p1}, Lscala/math/BigDecimal$$anonfun$equals$1;-><init>(Lscala/math/BigDecimal;Lscala/math/BigInt;)V

    invoke-virtual {v3}, Lscala/Option;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/math/BigInt;

    iget-object v6, v6, Lscala/math/BigDecimal$$anonfun$equals$1;->x3$1:Lscala/math/BigInt;

    invoke-virtual {v6, v3}, Lscala/math/BigInt;->equals(Lscala/math/BigInt;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    move v4, v3

    .line 448
    goto :goto_0

    :cond_2
    move v3, v5

    .line 449
    goto :goto_1

    :cond_3
    move v3, v5

    .line 448
    goto :goto_2

    .line 450
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_4
    instance-of v3, p1, Ljava/lang/Double;

    if-eqz v3, :cond_7

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v6

    .line 451
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-static {v6, v7}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_5

    .line 452
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toDouble(Lscala/math/ScalaNumericAnyConversions;)D

    move-result-wide v0

    .line 453
    .local v0, "d":D
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    cmpl-double v3, v0, v6

    if-nez v3, :cond_6

    sget-object v3, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {v3}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v6

    invoke-virtual {v3, v0, v1, v6}, Lscala/math/BigDecimal$;->decimal(DLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object v3

    invoke-virtual {p0, v3}, Lscala/math/BigDecimal;->equals(Lscala/math/BigDecimal;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_3
    if-nez v3, :cond_0

    .end local v0    # "d":D
    :cond_5
    move v4, v5

    .line 451
    goto/16 :goto_0

    .restart local v0    # "d":D
    :cond_6
    move v3, v5

    .line 453
    goto :goto_3

    .line 455
    .end local v0    # "d":D
    :cond_7
    instance-of v3, p1, Ljava/lang/Float;

    if-eqz v3, :cond_a

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v3

    .line 456
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-static {v3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_8

    .line 457
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toFloat(Lscala/math/ScalaNumericAnyConversions;)F

    move-result v2

    .line 458
    .local v2, "f":F
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v6

    if-nez v6, :cond_9

    cmpl-float v3, v2, v3

    if-nez v3, :cond_9

    sget-object v3, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    float-to-double v6, v2

    invoke-virtual {v3}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Lscala/math/BigDecimal$;->decimal(DLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object v3

    invoke-virtual {p0, v3}, Lscala/math/BigDecimal;->equals(Lscala/math/BigDecimal;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v4

    :goto_4
    if-nez v3, :cond_0

    .end local v2    # "f":F
    :cond_8
    move v4, v5

    .line 456
    goto/16 :goto_0

    .restart local v2    # "f":F
    :cond_9
    move v3, v5

    .line 458
    goto :goto_4

    .line 460
    .end local v2    # "f":F
    :cond_a
    :try_start_0
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->longValueExact()J
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    :goto_5
    if-eqz v3, :cond_b

    invoke-static {p0, p1}, Lscala/math/ScalaNumericAnyConversions$class;->unifiedPrimitiveEquals(Lscala/math/ScalaNumericAnyConversions;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_b
    move v4, v5

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move v3, v5

    goto :goto_5
.end method

.method public equals(Lscala/math/BigDecimal;)Z
    .locals 1
    .param p1, "that"    # Lscala/math/BigDecimal;

    .prologue
    .line 535
    invoke-virtual {p0, p1}, Lscala/math/BigDecimal;->compare(Lscala/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 710
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 438
    invoke-direct {p0}, Lscala/math/BigDecimal;->computedHashCode()I

    move-result v0

    const v1, 0x5d50690f

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lscala/math/BigDecimal;->computeHashCode()V

    .line 439
    :cond_0
    invoke-direct {p0}, Lscala/math/BigDecimal;->computedHashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    return v0
.end method

.method public isDecimalDouble()Z
    .locals 4

    .prologue
    .line 488
    invoke-virtual {p0}, Lscala/math/BigDecimal;->toDouble()D

    move-result-wide v0

    .local v0, "d":D
    sget-object v2, Lscala/runtime/RichDouble$;->MODULE$:Lscala/runtime/RichDouble$;

    .line 489
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2, v0, v1}, Lscala/runtime/RichDouble$;->isInfinity$extension(D)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    invoke-virtual {v2, v0, v1}, Lscala/math/BigDecimal$;->decimal(D)Lscala/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Lscala/math/BigDecimal;->equals(Lscala/math/BigDecimal;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 487
    :goto_0
    return v2

    .line 489
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isValidByte()Z
    .locals 1

    .prologue
    .line 462
    new-instance v0, Lscala/math/BigDecimal$$anonfun$isValidByte$1;

    invoke-direct {v0, p0}, Lscala/math/BigDecimal$$anonfun$isValidByte$1;-><init>(Lscala/math/BigDecimal;)V

    invoke-direct {p0, v0}, Lscala/math/BigDecimal;->noArithmeticException(Lscala/Function0;)Z

    move-result v0

    return v0
.end method

.method public isValidChar()Z
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lscala/math/BigDecimal;->isValidInt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/math/BigDecimal;->toIntExact()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lscala/math/BigDecimal;->toIntExact()I

    move-result v0

    const v1, 0xffff

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidInt()Z
    .locals 1

    .prologue
    .line 465
    new-instance v0, Lscala/math/BigDecimal$$anonfun$isValidInt$1;

    invoke-direct {v0, p0}, Lscala/math/BigDecimal$$anonfun$isValidInt$1;-><init>(Lscala/math/BigDecimal;)V

    invoke-direct {p0, v0}, Lscala/math/BigDecimal;->noArithmeticException(Lscala/Function0;)Z

    move-result v0

    return v0
.end method

.method public isValidShort()Z
    .locals 1

    .prologue
    .line 463
    new-instance v0, Lscala/math/BigDecimal$$anonfun$isValidShort$1;

    invoke-direct {v0, p0}, Lscala/math/BigDecimal$$anonfun$isValidShort$1;-><init>(Lscala/math/BigDecimal;)V

    invoke-direct {p0, v0}, Lscala/math/BigDecimal;->noArithmeticException(Lscala/Function0;)Z

    move-result v0

    return v0
.end method

.method public isWhole()Z
    .locals 1

    .prologue
    .line 528
    invoke-virtual {p0}, Lscala/math/BigDecimal;->scale()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 703
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public precision()I
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    return v0
.end method

.method public scale()I
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    return v0
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 680
    invoke-virtual {p0}, Lscala/math/BigDecimal;->intValue()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public toBigInt()Lscala/math/BigInt;
    .locals 2

    .prologue
    .line 775
    new-instance v0, Lscala/math/BigInt;

    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public toBigIntExact()Lscala/Option;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option",
            "<",
            "Lscala/math/BigInt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    invoke-virtual {p0}, Lscala/math/BigDecimal;->isWhole()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    :try_start_0
    new-instance v0, Lscala/Some;

    new-instance v1, Lscala/math/BigInt;

    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lscala/math/BigInt;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {v0, v1}, Lscala/Some;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :goto_0
    return-object v0

    .line 785
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 783
    :catch_0
    move-exception v0

    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public toByte()B
    .locals 1

    .prologue
    .line 400
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toByte(Lscala/math/ScalaNumericAnyConversions;)B

    move-result v0

    return v0
.end method

.method public toByteExact()B
    .locals 1

    .prologue
    .line 724
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->byteValueExact()B

    move-result v0

    return v0
.end method

.method public toDouble()D
    .locals 2

    .prologue
    .line 400
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toDouble(Lscala/math/ScalaNumericAnyConversions;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat()F
    .locals 1

    .prologue
    .line 400
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toFloat(Lscala/math/ScalaNumericAnyConversions;)F

    move-result v0

    return v0
.end method

.method public toInt()I
    .locals 1

    .prologue
    .line 400
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toInt(Lscala/math/ScalaNumericAnyConversions;)I

    move-result v0

    return v0
.end method

.method public toIntExact()I
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValueExact()I

    move-result v0

    return v0
.end method

.method public toLong()J
    .locals 2

    .prologue
    .line 400
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toLong(Lscala/math/ScalaNumericAnyConversions;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toShort()S
    .locals 1

    .prologue
    .line 400
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toShort(Lscala/math/ScalaNumericAnyConversions;)S

    move-result v0

    return v0
.end method

.method public toShortExact()S
    .locals 1

    .prologue
    .line 731
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->shortValueExact()S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic underlying()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Lscala/math/BigDecimal;->underlying()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lscala/math/BigDecimal;->bigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method
