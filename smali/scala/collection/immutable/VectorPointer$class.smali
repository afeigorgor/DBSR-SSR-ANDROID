.class public abstract Lscala/collection/immutable/VectorPointer$class;
.super Ljava/lang/Object;
.source "Vector.scala"


# direct methods
.method public static $init$(Lscala/collection/immutable/VectorPointer;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;

    .prologue
    .line 754
    return-void
.end method

.method public static final copyOf(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "a"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 954
    array-length v1, p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 955
    .local v0, "b":[Ljava/lang/Object;
    sget-object v1, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 956
    return-object v0
.end method

.method public static final copyRange(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "oldLeft"    # I
    .param p3, "newLeft"    # I

    .prologue
    .line 1118
    const/16 v1, 0x20

    new-array v0, v1, [Ljava/lang/Object;

    .line 1119
    .local v0, "elems":[Ljava/lang/Object;
    sget-object v1, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v1, p3, p2}, Lscala/math/package$;->max(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x20

    invoke-static {p1, p2, v0, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1120
    return-object v0
.end method

.method public static debug(Lscala/collection/immutable/VectorPointer;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;

    .prologue
    .line 1213
    return-void
.end method

.method public static final getElem(Lscala/collection/immutable/VectorPointer;II)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "index"    # I
    .param p2, "xor"    # I

    .prologue
    .line 803
    const/16 v0, 0x20

    if-ge p2, v0, :cond_0

    .line 804
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v0

    and-int/lit8 v1, p1, 0x1f

    aget-object v0, v0, v1

    .line 803
    :goto_0
    return-object v0

    .line 806
    :cond_0
    const/16 v0, 0x400

    if-ge p2, v0, :cond_1

    .line 807
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    and-int/lit8 v1, p1, 0x1f

    aget-object v0, v0, v1

    goto :goto_0

    .line 809
    :cond_1
    const v0, 0x8000

    if-ge p2, v0, :cond_2

    .line 810
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    and-int/lit8 v1, p1, 0x1f

    aget-object v0, v0, v1

    goto :goto_0

    .line 812
    :cond_2
    const/high16 v0, 0x100000

    if-ge p2, v0, :cond_3

    .line 813
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    and-int/lit8 v1, p1, 0x1f

    aget-object v0, v0, v1

    goto :goto_0

    .line 815
    :cond_3
    const/high16 v0, 0x2000000

    if-ge p2, v0, :cond_4

    .line 816
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    and-int/lit8 v1, p1, 0x1f

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 818
    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_5

    .line 819
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x19

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    and-int/lit8 v1, p1, 0x1f

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 821
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final gotoFreshPosWritable0(Lscala/collection/immutable/VectorPointer;III)V
    .locals 4
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "xor"    # I

    .prologue
    const/16 v3, 0x20

    .line 1132
    if-lt p3, v3, :cond_1

    .line 1135
    const/16 v0, 0x400

    if-ge p3, v0, :cond_2

    .line 1136
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1137
    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1138
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1139
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 1141
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 1132
    :cond_1
    :goto_0
    return-void

    .line 1143
    :cond_2
    const v0, 0x8000

    if-ge p3, v0, :cond_5

    .line 1144
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1145
    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1146
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1147
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 1149
    :cond_3
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1150
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1151
    :cond_4
    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 1153
    :cond_5
    const/high16 v0, 0x100000

    if-ge p3, v0, :cond_9

    .line 1154
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 1155
    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1156
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1157
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 1159
    :cond_6
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xf

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1160
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1161
    :cond_7
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1162
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1163
    :cond_8
    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1165
    :cond_9
    const/high16 v0, 0x2000000

    if-ge p3, v0, :cond_e

    .line 1166
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 1167
    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1168
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1169
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 1171
    :cond_a
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x14

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1172
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1173
    :cond_b
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xf

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1174
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1175
    :cond_c
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1176
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1177
    :cond_d
    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1179
    :cond_e
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p3, v0, :cond_14

    .line 1180
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_f

    .line 1181
    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    .line 1182
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x19

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1183
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 1185
    :cond_f
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x19

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1186
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1187
    :cond_10
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x14

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1188
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1189
    :cond_11
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xf

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1190
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1191
    :cond_12
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1192
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1193
    :cond_13
    new-array v0, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1195
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final gotoFreshPosWritable1(Lscala/collection/immutable/VectorPointer;III)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "xor"    # I

    .prologue
    .line 1203
    invoke-interface {p0, p1}, Lscala/collection/immutable/VectorPointer;->stabilize(I)V

    .line 1204
    invoke-interface {p0, p1, p2, p3}, Lscala/collection/immutable/VectorPointer;->gotoFreshPosWritable0(III)V

    return-void
.end method

.method public static final gotoNextBlockStart(Lscala/collection/immutable/VectorPointer;II)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "index"    # I
    .param p2, "xor"    # I

    .prologue
    const/4 v2, 0x0

    .line 867
    const/16 v0, 0x400

    if-ge p2, v0, :cond_0

    .line 868
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 867
    :goto_0
    return-void

    .line 870
    :cond_0
    const v0, 0x8000

    if-ge p2, v0, :cond_1

    .line 871
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 872
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 874
    :cond_1
    const/high16 v0, 0x100000

    if-ge p2, v0, :cond_2

    .line 875
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 876
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 877
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 879
    :cond_2
    const/high16 v0, 0x2000000

    if-ge p2, v0, :cond_3

    .line 880
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 881
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 882
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 883
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 885
    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_4

    .line 886
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x19

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 887
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 888
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 889
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 890
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, v2

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 892
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final gotoNextBlockStartWritable(Lscala/collection/immutable/VectorPointer;II)V
    .locals 4
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "index"    # I
    .param p2, "xor"    # I

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x20

    .line 900
    const/16 v0, 0x400

    if-ge p2, v0, :cond_1

    .line 901
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 902
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 903
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 900
    :goto_0
    return-void

    .line 905
    :cond_1
    const v0, 0x8000

    if-ge p2, v0, :cond_3

    .line 906
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 907
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 908
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 909
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 910
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 912
    :cond_3
    const/high16 v0, 0x100000

    if-ge p2, v0, :cond_5

    .line 913
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 914
    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 915
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 916
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 917
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 918
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 919
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 921
    :cond_5
    const/high16 v0, 0x2000000

    if-ge p2, v0, :cond_7

    .line 922
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 923
    :cond_6
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 924
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 925
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 926
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 927
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 928
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 929
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 930
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 932
    :cond_7
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_9

    .line 933
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 934
    :cond_8
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 935
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 936
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 937
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 938
    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 939
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 940
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 941
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 942
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 943
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x19

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 945
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final gotoPos(Lscala/collection/immutable/VectorPointer;II)V
    .locals 2
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "index"    # I
    .param p2, "xor"    # I

    .prologue
    .line 830
    const/16 v0, 0x20

    if-lt p2, v0, :cond_0

    .line 832
    const/16 v0, 0x400

    if-ge p2, v0, :cond_1

    .line 833
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    const v0, 0x8000

    if-ge p2, v0, :cond_2

    .line 836
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 837
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 839
    :cond_2
    const/high16 v0, 0x100000

    if-ge p2, v0, :cond_3

    .line 840
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 841
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 842
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 844
    :cond_3
    const/high16 v0, 0x2000000

    if-ge p2, v0, :cond_4

    .line 845
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 846
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 847
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 848
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 850
    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p2, v0, :cond_5

    .line 851
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x19

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 852
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 853
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 854
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 855
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    aget-object v0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 857
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final gotoPosWritable0(Lscala/collection/immutable/VectorPointer;II)V
    .locals 2
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "newIndex"    # I
    .param p2, "xor"    # I

    .prologue
    .line 1018
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lscala/MatchError;

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1045
    :pswitch_0
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 1018
    :goto_0
    return-void

    .line 1042
    :pswitch_1
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1043
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 1038
    :pswitch_2
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1039
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1040
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 1033
    :pswitch_3
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1034
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1035
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1036
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 1027
    :pswitch_4
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1028
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1029
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1030
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1031
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1020
    :pswitch_5
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    .line 1021
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x19

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1022
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1023
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1024
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1025
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1018
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static final gotoPosWritable1(Lscala/collection/immutable/VectorPointer;III)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "oldIndex"    # I
    .param p2, "newIndex"    # I
    .param p3, "xor"    # I

    .prologue
    .line 1052
    const/16 v0, 0x20

    if-ge p3, v0, :cond_0

    .line 1053
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 1052
    :goto_0
    return-void

    .line 1055
    :cond_0
    const/16 v0, 0x400

    if-ge p3, v0, :cond_1

    .line 1056
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1057
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1058
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 1060
    :cond_1
    const v0, 0x8000

    if-ge p3, v0, :cond_2

    .line 1061
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1062
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1063
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1064
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1065
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1066
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1068
    :cond_2
    const/high16 v0, 0x100000

    if-ge p3, v0, :cond_3

    .line 1069
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1070
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1071
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1072
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1073
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1074
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1075
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1076
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1077
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1079
    :cond_3
    const/high16 v0, 0x2000000

    if-ge p3, v0, :cond_4

    .line 1080
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1081
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1082
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1083
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1084
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1085
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1086
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1087
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1088
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1089
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1090
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1091
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1093
    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p3, v0, :cond_5

    .line 1094
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1095
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1096
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1097
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1098
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    .line 1099
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1100
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1101
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1102
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1103
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x19

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1104
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x19

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 1105
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 1106
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1107
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1108
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0, v0, v1}, Lscala/collection/immutable/VectorPointer;->nullSlotAndCopy([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1110
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;)V
    .locals 1
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "that"    # Lscala/collection/immutable/VectorPointer;

    .prologue
    .line 764
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lscala/collection/immutable/VectorPointer;->initFrom(Lscala/collection/immutable/VectorPointer;I)V

    return-void
.end method

.method public static final initFrom(Lscala/collection/immutable/VectorPointer;Lscala/collection/immutable/VectorPointer;I)V
    .locals 2
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "that"    # Lscala/collection/immutable/VectorPointer;
    .param p2, "depth"    # I

    .prologue
    .line 767
    invoke-interface {p0, p2}, Lscala/collection/immutable/VectorPointer;->depth_$eq(I)V

    .line 768
    add-int/lit8 v0, p2, -0x1

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lscala/MatchError;

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 791
    :pswitch_0
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    .line 792
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 793
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 794
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 795
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 796
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    .line 766
    :goto_0
    :pswitch_1
    return-void

    .line 785
    :pswitch_2
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 786
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 787
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 788
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 789
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 780
    :pswitch_3
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 781
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 782
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 783
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 776
    :pswitch_4
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 777
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 778
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 773
    :pswitch_5
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 774
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 771
    :pswitch_6
    invoke-interface {p1}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display0_$eq([Ljava/lang/Object;)V

    goto :goto_0

    .line 768
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static final nullSlotAndCopy(Lscala/collection/immutable/VectorPointer;[Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 961
    aget-object v0, p1, p2

    .line 962
    .local v0, "x":Ljava/lang/Object;
    const/4 v1, 0x0

    aput-object v1, p1, p2

    .line 963
    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "x":Ljava/lang/Object;
    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final stabilize(Lscala/collection/immutable/VectorPointer;I)V
    .locals 3
    .param p0, "$this"    # Lscala/collection/immutable/VectorPointer;
    .param p1, "index"    # I

    .prologue
    .line 971
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->depth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_0

    new-instance v1, Lscala/MatchError;

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1005
    :pswitch_0
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1006
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 971
    :goto_0
    :pswitch_1
    return-void

    .line 1000
    :pswitch_2
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 1001
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 1002
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1003
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 993
    :pswitch_3
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 994
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 995
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 996
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 997
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 998
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    .line 984
    :pswitch_4
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 985
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 986
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 987
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 988
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 989
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 990
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 991
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 973
    :pswitch_5
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display5_$eq([Ljava/lang/Object;)V

    .line 974
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display4_$eq([Ljava/lang/Object;)V

    .line 975
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display3_$eq([Ljava/lang/Object;)V

    .line 976
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display2_$eq([Ljava/lang/Object;)V

    .line 977
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lscala/collection/immutable/VectorPointer;->display1_$eq([Ljava/lang/Object;)V

    .line 978
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display5()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x19

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 979
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display4()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x14

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 980
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display3()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xf

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 981
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display2()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 982
    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display1()[Ljava/lang/Object;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    invoke-interface {p0}, Lscala/collection/immutable/VectorPointer;->display0()[Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 971
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
