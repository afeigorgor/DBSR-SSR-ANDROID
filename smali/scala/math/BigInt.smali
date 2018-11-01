.class public final Lscala/math/BigInt;
.super Lscala/math/ScalaNumber;
.source "BigInt.scala"

# interfaces
.implements Lscala/Serializable;
.implements Lscala/math/ScalaNumericConversions;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final bigInteger:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "bigInteger"    # Ljava/math/BigInteger;

    .prologue
    .line 112
    iput-object p1, p0, Lscala/math/BigInt;->bigInteger:Ljava/math/BigInteger;

    invoke-direct {p0}, Lscala/math/ScalaNumber;-><init>()V

    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->$init$(Lscala/math/ScalaNumericAnyConversions;)V

    return-void
.end method

.method private bitLengthOverflow()Z
    .locals 3

    .prologue
    .line 164
    invoke-virtual {p0}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 165
    .local v0, "shifted":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    invoke-virtual {v1}, Lscala/math/BigInt$;->scala$math$BigInt$$minusOne()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 163
    :goto_0
    return v1

    .line 165
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public $greater$eq(Lscala/math/BigInt;)Z
    .locals 1
    .param p1, "that"    # Lscala/math/BigInt;

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lscala/math/BigInt;->compare(Lscala/math/BigInt;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public $less$eq(Lscala/math/BigInt;)Z
    .locals 1
    .param p1, "that"    # Lscala/math/BigInt;

    .prologue
    .line 181
    invoke-virtual {p0, p1}, Lscala/math/BigInt;->compare(Lscala/math/BigInt;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bigInteger()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lscala/math/BigInt;->bigInteger:Ljava/math/BigInteger;

    return-object v0
.end method

.method public bitLength()I
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public byteValue()B
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lscala/math/BigInt;->intValue()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public compare(Lscala/math/BigInt;)I
    .locals 2
    .param p1, "that"    # Lscala/math/BigInt;

    .prologue
    .line 177
    invoke-virtual {p0}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    instance-of v2, p1, Lscala/math/BigInt;

    if-eqz v2, :cond_1

    check-cast p1, Lscala/math/BigInt;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/math/BigInt;->equals(Lscala/math/BigInt;)Z

    move-result v0

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 122
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lscala/math/BigDecimal;

    if-eqz v2, :cond_2

    check-cast p1, Lscala/math/BigDecimal;

    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p1, p0}, Lscala/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 123
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_4

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-virtual {p0}, Lscala/math/BigInt;->isValidDouble()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lscala/math/BigInt;->toDouble()D

    move-result-wide v4

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 124
    :cond_4
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_6

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-virtual {p0}, Lscala/math/BigInt;->isValidFloat()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lscala/math/BigInt;->toFloat()F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 125
    :cond_6
    invoke-virtual {p0}, Lscala/math/BigInt;->isValidLong()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0, p1}, Lscala/math/BigInt;->unifiedPrimitiveEquals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public equals(Lscala/math/BigInt;)Z
    .locals 1
    .param p1, "that"    # Lscala/math/BigInt;

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lscala/math/BigInt;->compare(Lscala/math/BigInt;)I

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
    .line 378
    invoke-virtual {p0}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lscala/math/BigInt;->isValidLong()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lscala/math/BigInt;->unifiedPrimitiveHashcode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 116
    invoke-virtual {p0}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public isValidByte()Z
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    const/16 v1, -0x80

    invoke-virtual {v0, v1}, Lscala/math/BigInt$;->int2bigInt(I)Lscala/math/BigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/math/BigInt;->$greater$eq(Lscala/math/BigInt;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lscala/math/BigInt$;->int2bigInt(I)Lscala/math/BigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/math/BigInt;->$less$eq(Lscala/math/BigInt;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidChar()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 129
    sget-object v1, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    invoke-virtual {v1, v0}, Lscala/math/BigInt$;->int2bigInt(I)Lscala/math/BigInt;

    move-result-object v1

    invoke-virtual {p0, v1}, Lscala/math/BigInt;->$greater$eq(Lscala/math/BigInt;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    const v2, 0xffff

    invoke-virtual {v1, v2}, Lscala/math/BigInt$;->int2bigInt(I)Lscala/math/BigInt;

    move-result-object v1

    invoke-virtual {p0, v1}, Lscala/math/BigInt;->$less$eq(Lscala/math/BigInt;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isValidDouble()Z
    .locals 6

    .prologue
    const/16 v5, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 148
    invoke-virtual {p0}, Lscala/math/BigInt;->bitLength()I

    move-result v0

    .line 149
    .local v0, "bitLen":I
    const/16 v4, 0x35

    if-le v0, v4, :cond_0

    .line 151
    invoke-virtual {p0}, Lscala/math/BigInt;->lowestSetBit()I

    move-result v1

    .line 152
    .local v1, "lowest":I
    if-gt v0, v5, :cond_1

    .line 153
    add-int/lit8 v4, v0, -0x35

    if-lt v1, v4, :cond_1

    .line 154
    if-ge v1, v5, :cond_1

    move v4, v2

    .line 153
    :goto_0
    if-eqz v4, :cond_2

    .line 156
    .end local v1    # "lowest":I
    :cond_0
    invoke-direct {p0}, Lscala/math/BigInt;->bitLengthOverflow()Z

    move-result v4

    if-nez v4, :cond_2

    .line 147
    :goto_1
    return v2

    .restart local v1    # "lowest":I
    :cond_1
    move v4, v3

    .line 153
    goto :goto_0

    .end local v1    # "lowest":I
    :cond_2
    move v2, v3

    .line 156
    goto :goto_1
.end method

.method public isValidFloat()Z
    .locals 6

    .prologue
    const/16 v5, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0}, Lscala/math/BigInt;->bitLength()I

    move-result v0

    .line 136
    .local v0, "bitLen":I
    const/16 v4, 0x18

    if-le v0, v4, :cond_0

    .line 138
    invoke-virtual {p0}, Lscala/math/BigInt;->lowestSetBit()I

    move-result v1

    .line 139
    .local v1, "lowest":I
    if-gt v0, v5, :cond_1

    .line 140
    add-int/lit8 v4, v0, -0x18

    if-lt v1, v4, :cond_1

    .line 141
    if-ge v1, v5, :cond_1

    move v4, v2

    .line 140
    :goto_0
    if-eqz v4, :cond_2

    .line 143
    .end local v1    # "lowest":I
    :cond_0
    invoke-direct {p0}, Lscala/math/BigInt;->bitLengthOverflow()Z

    move-result v4

    if-nez v4, :cond_2

    .line 134
    :goto_1
    return v2

    .restart local v1    # "lowest":I
    :cond_1
    move v4, v3

    .line 140
    goto :goto_0

    .end local v1    # "lowest":I
    :cond_2
    move v2, v3

    .line 143
    goto :goto_1
.end method

.method public isValidInt()Z
    .locals 2

    .prologue
    .line 130
    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lscala/math/BigInt$;->int2bigInt(I)Lscala/math/BigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/math/BigInt;->$greater$eq(Lscala/math/BigInt;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lscala/math/BigInt$;->int2bigInt(I)Lscala/math/BigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/math/BigInt;->$less$eq(Lscala/math/BigInt;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidLong()Z
    .locals 4

    .prologue
    .line 131
    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v2, v3}, Lscala/math/BigInt$;->long2bigInt(J)Lscala/math/BigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/math/BigInt;->$greater$eq(Lscala/math/BigInt;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Lscala/math/BigInt$;->long2bigInt(J)Lscala/math/BigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/math/BigInt;->$less$eq(Lscala/math/BigInt;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidShort()Z
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    const/16 v1, -0x8000

    invoke-virtual {v0, v1}, Lscala/math/BigInt$;->int2bigInt(I)Lscala/math/BigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/math/BigInt;->$greater$eq(Lscala/math/BigInt;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/math/BigInt$;->MODULE$:Lscala/math/BigInt$;

    const/16 v1, 0x7fff

    invoke-virtual {v0, v1}, Lscala/math/BigInt$;->int2bigInt(I)Lscala/math/BigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lscala/math/BigInt;->$less$eq(Lscala/math/BigInt;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public lowestSetBit()I
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    return v0
.end method

.method public shortValue()S
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lscala/math/BigInt;->intValue()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public toByte()B
    .locals 1

    .prologue
    .line 112
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toByte(Lscala/math/ScalaNumericAnyConversions;)B

    move-result v0

    return v0
.end method

.method public toDouble()D
    .locals 2

    .prologue
    .line 112
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toDouble(Lscala/math/ScalaNumericAnyConversions;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toFloat()F
    .locals 1

    .prologue
    .line 112
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toFloat(Lscala/math/ScalaNumericAnyConversions;)F

    move-result v0

    return v0
.end method

.method public toInt()I
    .locals 1

    .prologue
    .line 112
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toInt(Lscala/math/ScalaNumericAnyConversions;)I

    move-result v0

    return v0
.end method

.method public toLong()J
    .locals 2

    .prologue
    .line 112
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toLong(Lscala/math/ScalaNumericAnyConversions;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toShort()S
    .locals 1

    .prologue
    .line 112
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->toShort(Lscala/math/ScalaNumericAnyConversions;)S

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    invoke-virtual {p0}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic underlying()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lscala/math/BigInt;->underlying()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public underlying()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lscala/math/BigInt;->bigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public unifiedPrimitiveEquals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 112
    invoke-static {p0, p1}, Lscala/math/ScalaNumericAnyConversions$class;->unifiedPrimitiveEquals(Lscala/math/ScalaNumericAnyConversions;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public unifiedPrimitiveHashcode()I
    .locals 1

    .prologue
    .line 112
    invoke-static {p0}, Lscala/math/ScalaNumericAnyConversions$class;->unifiedPrimitiveHashcode(Lscala/math/ScalaNumericAnyConversions;)I

    move-result v0

    return v0
.end method
