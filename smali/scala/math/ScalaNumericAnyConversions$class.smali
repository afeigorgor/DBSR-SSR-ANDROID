.class public abstract Lscala/math/ScalaNumericAnyConversions$class;
.super Ljava/lang/Object;
.source "ScalaNumericConversions.scala"


# direct methods
.method public static $init$(Lscala/math/ScalaNumericAnyConversions;)V
    .locals 0
    .param p0, "$this"    # Lscala/math/ScalaNumericAnyConversions;

    .prologue
    .line 22
    return-void
.end method

.method public static toByte(Lscala/math/ScalaNumericAnyConversions;)B
    .locals 1
    .param p0, "$this"    # Lscala/math/ScalaNumericAnyConversions;

    .prologue
    .line 42
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->byteValue()B

    move-result v0

    return v0
.end method

.method public static toDouble(Lscala/math/ScalaNumericAnyConversions;)D
    .locals 2
    .param p0, "$this"    # Lscala/math/ScalaNumericAnyConversions;

    .prologue
    .line 67
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static toFloat(Lscala/math/ScalaNumericAnyConversions;)F
    .locals 1
    .param p0, "$this"    # Lscala/math/ScalaNumericAnyConversions;

    .prologue
    .line 62
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->floatValue()F

    move-result v0

    return v0
.end method

.method public static toInt(Lscala/math/ScalaNumericAnyConversions;)I
    .locals 1
    .param p0, "$this"    # Lscala/math/ScalaNumericAnyConversions;

    .prologue
    .line 52
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->intValue()I

    move-result v0

    return v0
.end method

.method public static toLong(Lscala/math/ScalaNumericAnyConversions;)J
    .locals 2
    .param p0, "$this"    # Lscala/math/ScalaNumericAnyConversions;

    .prologue
    .line 57
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static toShort(Lscala/math/ScalaNumericAnyConversions;)S
    .locals 1
    .param p0, "$this"    # Lscala/math/ScalaNumericAnyConversions;

    .prologue
    .line 47
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->shortValue()S

    move-result v0

    return v0
.end method

.method public static unifiedPrimitiveEquals(Lscala/math/ScalaNumericAnyConversions;Ljava/lang/Object;)Z
    .locals 6
    .param p0, "$this"    # Lscala/math/ScalaNumericAnyConversions;
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_2

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v2

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isValidChar()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toInt()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_4

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result v2

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isValidByte()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toByte()B

    move-result v3

    if-eq v3, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 112
    :cond_4
    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_6

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result v2

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isValidShort()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toShort()S

    move-result v3

    if-eq v3, v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0

    .line 113
    :cond_6
    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_8

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->isValidInt()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toInt()I

    move-result v3

    if-eq v3, v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 114
    :cond_8
    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_9

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toLong()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 115
    :cond_9
    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_a

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toFloat()F

    move-result v3

    cmpl-float v2, v3, v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 116
    :cond_a
    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_b

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toDouble()D

    move-result-wide v4

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_b
    move v0, v1

    .line 117
    goto :goto_0
.end method

.method public static unifiedPrimitiveHashcode(Lscala/math/ScalaNumericAnyConversions;)I
    .locals 4
    .param p0, "$this"    # Lscala/math/ScalaNumericAnyConversions;

    .prologue
    .line 90
    invoke-interface {p0}, Lscala/math/ScalaNumericAnyConversions;->toLong()J

    move-result-wide v0

    .line 91
    .local v0, "lv":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    long-to-int v2, v0

    .line 89
    :goto_0
    return v2

    .line 91
    :cond_0
    sget-object v2, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 92
    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method
