.class public final Lscala/runtime/BoxesRunTime;
.super Ljava/lang/Object;
.source "BoxesRunTime.java"


# direct methods
.method public static boxToBoolean(Z)Ljava/lang/Boolean;
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 49
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static boxToByte(B)Ljava/lang/Byte;
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 57
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public static boxToCharacter(C)Ljava/lang/Character;
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 53
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public static boxToDouble(D)Ljava/lang/Double;
    .locals 2
    .param p0, "d"    # D

    .prologue
    .line 79
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static boxToFloat(F)Ljava/lang/Float;
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 73
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static boxToInteger(I)Ljava/lang/Integer;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static boxToLong(J)Ljava/lang/Long;
    .locals 2
    .param p0, "l"    # J

    .prologue
    .line 69
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static boxToShort(S)Ljava/lang/Short;
    .locals 1
    .param p0, "s"    # S

    .prologue
    .line 61
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0
.end method

.method public static equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "xc"    # Ljava/lang/Character;
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 172
    instance-of v2, p1, Ljava/lang/Character;

    if-eqz v2, :cond_2

    .line 173
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v2

    check-cast p1, Ljava/lang/Character;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 179
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 173
    goto :goto_0

    .line 174
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_2
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_3

    .line 175
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-static {p1, p0}, Lscala/runtime/BoxesRunTime;->equalsNumChar(Ljava/lang/Number;Ljava/lang/Character;)Z

    move-result v0

    goto :goto_0

    .line 176
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_3
    if-nez p0, :cond_4

    .line 177
    if-eqz p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 179
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/Character;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static equalsNumChar(Ljava/lang/Number;Ljava/lang/Character;)Z
    .locals 8
    .param p0, "xn"    # Ljava/lang/Number;
    .param p1, "yc"    # Ljava/lang/Character;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    if-nez p1, :cond_2

    .line 184
    if-nez p0, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 184
    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 187
    .local v0, "ch":C
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 197
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 191
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    int-to-long v6, v0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 193
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v3

    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 195
    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    int-to-double v6, v0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 187
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static equalsNumNum(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 8
    .param p0, "xn"    # Ljava/lang/Number;
    .param p1, "yn"    # Ljava/lang/Number;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 150
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v0

    .line 151
    .local v0, "xcode":I
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->typeCode(Ljava/lang/Object;)I

    move-result v1

    .line 152
    .local v1, "ycode":I
    if-le v1, v0, :cond_1

    .end local v1    # "ycode":I
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 162
    instance-of v4, p1, Lscala/math/ScalaNumber;

    if-eqz v4, :cond_2

    instance-of v4, p0, Lscala/math/ScalaNumber;

    if-nez v4, :cond_2

    .line 163
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 168
    :cond_0
    :goto_1
    return v2

    .restart local v1    # "ycode":I
    :cond_1
    move v1, v0

    .line 152
    goto :goto_0

    .line 154
    .end local v1    # "ycode":I
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_1

    .line 156
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    .line 158
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    .line 160
    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_1

    .line 165
    :cond_2
    if-nez p0, :cond_3

    .line 166
    if-eqz p1, :cond_0

    move v2, v3

    goto :goto_1

    .line 168
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "xn"    # Ljava/lang/Number;
    .param p1, "y"    # Ljava/lang/Object;

    .prologue
    .line 139
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumNum(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    .line 146
    :goto_0
    return v0

    .line 141
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 142
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "y":Ljava/lang/Object;
    invoke-static {p0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumChar(Ljava/lang/Number;Ljava/lang/Character;)Z

    move-result v0

    goto :goto_0

    .line 143
    .restart local p1    # "y":Ljava/lang/Object;
    :cond_1
    if-nez p0, :cond_3

    .line 144
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hashFromDouble(Ljava/lang/Double;)I
    .locals 8
    .param p0, "n"    # Ljava/lang/Double;

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result v3

    .line 235
    .local v3, "iv":I
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 236
    .local v0, "dv":D
    int-to-double v6, v3

    cmpl-double v6, v6, v0

    if-nez v6, :cond_0

    .line 243
    .end local v3    # "iv":I
    :goto_0
    return v3

    .line 238
    .restart local v3    # "iv":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    .line 239
    .local v4, "lv":J
    long-to-double v6, v4

    cmpl-double v6, v6, v0

    if-nez v6, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->hashCode()I

    move-result v3

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Double;->floatValue()F

    move-result v2

    .line 242
    .local v2, "fv":F
    float-to-double v6, v2

    cmpl-double v6, v6, v0

    if-nez v6, :cond_2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->hashCode()I

    move-result v3

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Double;->hashCode()I

    move-result v3

    goto :goto_0
.end method

.method public static hashFromFloat(Ljava/lang/Float;)I
    .locals 5
    .param p0, "n"    # Ljava/lang/Float;

    .prologue
    .line 246
    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    move-result v1

    .line 247
    .local v1, "iv":I
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 248
    .local v0, "fv":F
    int-to-float v4, v1

    cmpl-float v4, v4, v0

    if-nez v4, :cond_0

    .line 252
    .end local v1    # "iv":I
    :goto_0
    return v1

    .line 250
    .restart local v1    # "iv":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Float;->longValue()J

    move-result-wide v2

    .line 251
    .local v2, "lv":J
    long-to-float v4, v2

    cmpl-float v4, v4, v0

    if-nez v4, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Float;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public static hashFromLong(Ljava/lang/Long;)I
    .locals 6
    .param p0, "n"    # Ljava/lang/Long;

    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 230
    .local v0, "iv":I
    int-to-long v2, v0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 231
    .end local v0    # "iv":I
    :goto_0
    return v0

    .restart local v0    # "iv":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static hashFromNumber(Ljava/lang/Number;)I
    .locals 1
    .param p0, "n"    # Ljava/lang/Number;

    .prologue
    .line 255
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Long;

    .end local p0    # "n":Ljava/lang/Number;
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->hashFromLong(Ljava/lang/Long;)I

    move-result v0

    .line 258
    .restart local p0    # "n":Ljava/lang/Number;
    :goto_0
    return v0

    .line 256
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Double;

    .end local p0    # "n":Ljava/lang/Number;
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->hashFromDouble(Ljava/lang/Double;)I

    move-result v0

    goto :goto_0

    .line 257
    .restart local p0    # "n":Ljava/lang/Number;
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Float;

    .end local p0    # "n":Ljava/lang/Number;
    invoke-static {p0}, Lscala/runtime/BoxesRunTime;->hashFromFloat(Ljava/lang/Float;)I

    move-result v0

    goto :goto_0

    .line 258
    .restart local p0    # "n":Ljava/lang/Number;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private static typeCode(Ljava/lang/Object;)I
    .locals 2
    .param p0, "a"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x3

    .line 37
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v0

    .line 38
    :cond_1
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    .line 39
    :cond_2
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    .line 40
    :cond_3
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    .line 41
    :cond_4
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    .line 42
    :cond_5
    instance-of v1, p0, Ljava/lang/Byte;

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Short;

    if-nez v1, :cond_0

    .line 43
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static unboxToBoolean(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "b"    # Ljava/lang/Object;

    .prologue
    .line 85
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "b":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "b":Ljava/lang/Object;
    :cond_0
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "b":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static unboxToByte(Ljava/lang/Object;)B
    .locals 1
    .param p0, "b"    # Ljava/lang/Object;

    .prologue
    .line 93
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "b":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "b":Ljava/lang/Object;
    :cond_0
    check-cast p0, Ljava/lang/Byte;

    .end local p0    # "b":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    goto :goto_0
.end method

.method public static unboxToChar(Ljava/lang/Object;)C
    .locals 1
    .param p0, "c"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "c":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "c":Ljava/lang/Object;
    :cond_0
    check-cast p0, Ljava/lang/Character;

    .end local p0    # "c":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_0
.end method

.method public static unboxToDouble(Ljava/lang/Object;)D
    .locals 2
    .param p0, "d"    # Ljava/lang/Object;

    .prologue
    .line 114
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    .end local p0    # "d":Ljava/lang/Object;
    :goto_0
    return-wide v0

    .restart local p0    # "d":Ljava/lang/Object;
    :cond_0
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "d":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method public static unboxToFloat(Ljava/lang/Object;)F
    .locals 1
    .param p0, "f"    # Ljava/lang/Object;

    .prologue
    .line 109
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "f":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "f":Ljava/lang/Object;
    :cond_0
    check-cast p0, Ljava/lang/Float;

    .end local p0    # "f":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public static unboxToInt(Ljava/lang/Object;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Object;

    .prologue
    .line 101
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "i":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "i":Ljava/lang/Object;
    :cond_0
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "i":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static unboxToLong(Ljava/lang/Object;)J
    .locals 2
    .param p0, "l"    # Ljava/lang/Object;

    .prologue
    .line 105
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    .end local p0    # "l":Ljava/lang/Object;
    :goto_0
    return-wide v0

    .restart local p0    # "l":Ljava/lang/Object;
    :cond_0
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "l":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static unboxToShort(Ljava/lang/Object;)S
    .locals 1
    .param p0, "s"    # Ljava/lang/Object;

    .prologue
    .line 97
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "s":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p0    # "s":Ljava/lang/Object;
    :cond_0
    check-cast p0, Ljava/lang/Short;

    .end local p0    # "s":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0
.end method
