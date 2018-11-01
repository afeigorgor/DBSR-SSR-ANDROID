.class public final Lscala/runtime/ScalaRunTime$;
.super Ljava/lang/Object;
.source "ScalaRunTime.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/ScalaRunTime$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/ScalaRunTime$;

    invoke-direct {v0}, Lscala/runtime/ScalaRunTime$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    return-void
.end method


# virtual methods
.method public _hashCode(Lscala/Product;)I
    .locals 1
    .param p1, "x"    # Lscala/Product;

    .prologue
    .line 168
    sget-object v0, Lscala/util/hashing/MurmurHash3$;->MODULE$:Lscala/util/hashing/MurmurHash3$;

    invoke-virtual {v0, p1}, Lscala/util/hashing/MurmurHash3$;->productHash(Lscala/Product;)I

    move-result v0

    return v0
.end method

.method public _toString(Lscala/Product;)Ljava/lang/String;
    .locals 4
    .param p1, "x"    # Lscala/Product;

    .prologue
    .line 166
    invoke-interface {p1}, Lscala/Product;->productIterator()Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-interface {p1}, Lscala/Product;->productPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lscala/collection/Iterator;->mkString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 8
    .param p1, "schematic"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 58
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Class;

    .end local p1    # "schematic":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    .line 59
    .restart local p1    # "schematic":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lscala/reflect/ClassTag;

    if-eqz v0, :cond_1

    check-cast p1, Lscala/reflect/ClassTag;

    .end local p1    # "schematic":Ljava/lang/Object;
    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 61
    .restart local p1    # "schematic":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Lscala/StringContext;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "unsupported schematic "

    aput-object v4, v0, v5

    const-string v4, " ("

    aput-object v4, v0, v6

    const-string v4, ")"

    aput-object v4, v0, v7

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-direct {v2, v0}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v3}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public array_apply(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "idx"    # I

    .prologue
    .line 74
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "xs":Ljava/lang/Object;
    aget-object v0, p1, p2

    .line 73
    :goto_0
    return-object v0

    .line 75
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    check-cast p1, [I

    .end local p1    # "xs":Ljava/lang/Object;
    aget v0, p1, p2

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 76
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [D

    if-eqz v0, :cond_2

    check-cast p1, [D

    .end local p1    # "xs":Ljava/lang/Object;
    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 77
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, [J

    if-eqz v0, :cond_3

    check-cast p1, [J

    .end local p1    # "xs":Ljava/lang/Object;
    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 78
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, [F

    if-eqz v0, :cond_4

    check-cast p1, [F

    .end local p1    # "xs":Ljava/lang/Object;
    aget v0, p1, p2

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 79
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    check-cast p1, [C

    .end local p1    # "xs":Ljava/lang/Object;
    aget-char v0, p1, p2

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_0

    .line 80
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    check-cast p1, [B

    .end local p1    # "xs":Ljava/lang/Object;
    aget-byte v0, p1, p2

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToByte(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0

    .line 81
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    check-cast p1, [S

    .end local p1    # "xs":Ljava/lang/Object;
    aget-short v0, p1, p2

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToShort(S)Ljava/lang/Short;

    move-result-object v0

    goto :goto_0

    .line 82
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    check-cast p1, [Z

    .end local p1    # "xs":Ljava/lang/Object;
    aget-boolean v0, p1, p2

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 83
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_8
    instance-of v0, p1, [Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_9

    check-cast p1, [Lscala/runtime/BoxedUnit;

    .end local p1    # "xs":Ljava/lang/Object;
    aget-object v0, p1, p2

    goto :goto_0

    .line 84
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_9
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_a
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public array_clone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "xs"    # Ljava/lang/Object;

    .prologue
    .line 121
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 120
    :goto_0
    return-object p1

    .line 122
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    check-cast p1, [I

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([I)[I

    move-result-object p1

    goto :goto_0

    .line 123
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [D

    if-eqz v0, :cond_2

    check-cast p1, [D

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([D)[D

    move-result-object p1

    goto :goto_0

    .line 124
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, [J

    if-eqz v0, :cond_3

    check-cast p1, [J

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([J)[J

    move-result-object p1

    goto :goto_0

    .line 125
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, [F

    if-eqz v0, :cond_4

    check-cast p1, [F

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([F)[F

    move-result-object p1

    goto :goto_0

    .line 126
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    check-cast p1, [C

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([C)[C

    move-result-object p1

    goto :goto_0

    .line 127
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    check-cast p1, [B

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([B)[B

    move-result-object p1

    goto :goto_0

    .line 128
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    check-cast p1, [S

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([S)[S

    move-result-object p1

    goto :goto_0

    .line 129
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    check-cast p1, [Z

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p1}, Lscala/runtime/ArrayRuntime;->cloneArray([Z)[Z

    move-result-object p1

    goto :goto_0

    .line 130
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_8
    instance-of v0, p1, [Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_9

    check-cast p1, [Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 131
    :cond_9
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 120
    :cond_a
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public array_length(Ljava/lang/Object;)I
    .locals 1
    .param p1, "xs"    # Ljava/lang/Object;

    .prologue
    .line 107
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "xs":Ljava/lang/Object;
    array-length v0, p1

    .line 106
    :goto_0
    return v0

    .line 108
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    check-cast p1, [I

    .end local p1    # "xs":Ljava/lang/Object;
    array-length v0, p1

    goto :goto_0

    .line 109
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [D

    if-eqz v0, :cond_2

    check-cast p1, [D

    .end local p1    # "xs":Ljava/lang/Object;
    array-length v0, p1

    goto :goto_0

    .line 110
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, [J

    if-eqz v0, :cond_3

    check-cast p1, [J

    .end local p1    # "xs":Ljava/lang/Object;
    array-length v0, p1

    goto :goto_0

    .line 111
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, [F

    if-eqz v0, :cond_4

    check-cast p1, [F

    .end local p1    # "xs":Ljava/lang/Object;
    array-length v0, p1

    goto :goto_0

    .line 112
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    check-cast p1, [C

    .end local p1    # "xs":Ljava/lang/Object;
    array-length v0, p1

    goto :goto_0

    .line 113
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    check-cast p1, [B

    .end local p1    # "xs":Ljava/lang/Object;
    array-length v0, p1

    goto :goto_0

    .line 114
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    check-cast p1, [S

    .end local p1    # "xs":Ljava/lang/Object;
    array-length v0, p1

    goto :goto_0

    .line 115
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    check-cast p1, [Z

    .end local p1    # "xs":Ljava/lang/Object;
    array-length v0, p1

    goto :goto_0

    .line 116
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_8
    instance-of v0, p1, [Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_9

    check-cast p1, [Lscala/runtime/BoxedUnit;

    .end local p1    # "xs":Ljava/lang/Object;
    array-length v0, p1

    goto :goto_0

    .line 117
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_9
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 106
    :cond_a
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public array_update(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .param p1, "xs"    # Ljava/lang/Object;
    .param p2, "idx"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 91
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "xs":Ljava/lang/Object;
    aput-object p3, p1, p2

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 90
    .end local p3    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 92
    .restart local p1    # "xs":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [I

    if-eqz v0, :cond_1

    check-cast p1, [I

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    aput v0, p1, p2

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 93
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [D

    if-eqz v0, :cond_2

    check-cast p1, [D

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    aput-wide v0, p1, p2

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 94
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, [J

    if-eqz v0, :cond_3

    check-cast p1, [J

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    aput-wide v0, p1, p2

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 95
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, [F

    if-eqz v0, :cond_4

    check-cast p1, [F

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v0

    aput v0, p1, p2

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 96
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [C

    if-eqz v0, :cond_5

    check-cast p1, [C

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v0

    aput-char v0, p1, p2

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 97
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [B

    if-eqz v0, :cond_6

    check-cast p1, [B

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result v0

    aput-byte v0, p1, p2

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 98
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [S

    if-eqz v0, :cond_7

    check-cast p1, [S

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToShort(Ljava/lang/Object;)S

    move-result v0

    aput-short v0, p1, p2

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 99
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    check-cast p1, [Z

    .end local p1    # "xs":Ljava/lang/Object;
    invoke-static {p3}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    aput-boolean v0, p1, p2

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 100
    .restart local p1    # "xs":Ljava/lang/Object;
    :cond_8
    instance-of v0, p1, [Lscala/runtime/BoxedUnit;

    if-eqz v0, :cond_9

    check-cast p1, [Lscala/runtime/BoxedUnit;

    .end local p1    # "xs":Ljava/lang/Object;
    check-cast p3, Lscala/runtime/BoxedUnit;

    .end local p3    # "value":Ljava/lang/Object;
    aput-object p3, p1, p2

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 101
    .restart local p1    # "xs":Ljava/lang/Object;
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_9
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_a
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public ensureAccessible(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 1
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 160
    sget-object v0, Lscala/reflect/package$;->MODULE$:Lscala/reflect/package$;

    invoke-virtual {v0, p1}, Lscala/reflect/package$;->ensureAccessible(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public hash(D)I
    .locals 7
    .param p1, "dv"    # D

    .prologue
    .line 209
    double-to-int v1, p1

    .line 210
    .local v1, "iv":I
    int-to-double v4, v1

    cmpl-double v4, v4, p1

    if-nez v4, :cond_0

    .line 213
    .end local v1    # "iv":I
    :goto_0
    return v1

    .line 212
    .restart local v1    # "iv":I
    :cond_0
    double-to-long v2, p1

    .line 213
    .local v2, "lv":J
    long-to-double v4, v2

    cmpl-double v4, v4, p1

    if-nez v4, :cond_1

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->boxToLong(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 215
    :cond_1
    double-to-float v0, p1

    .line 216
    .local v0, "fv":F
    float-to-double v4, v0

    cmpl-double v4, v4, p1

    if-nez v4, :cond_2

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    move v1, v4

    .line 208
    goto :goto_0

    .line 216
    :cond_2
    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->boxToDouble(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1
.end method

.method public hash(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 204
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .end local p1    # "x":Ljava/lang/Object;
    :goto_0
    return v0

    .line 205
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "x":Ljava/lang/Object;
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->hashFromNumber(Ljava/lang/Number;)I

    move-result v0

    goto :goto_0

    .line 206
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;
    .locals 1
    .param p1, "x"    # Lscala/Product;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Product;",
            ")",
            "Lscala/collection/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v0, Lscala/runtime/ScalaRunTime$$anon$1;

    invoke-direct {v0, p1}, Lscala/runtime/ScalaRunTime$$anon$1;-><init>(Lscala/Product;)V

    return-object v0
.end method
