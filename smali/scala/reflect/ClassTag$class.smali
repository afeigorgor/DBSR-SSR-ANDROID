.class public abstract Lscala/reflect/ClassTag$class;
.super Ljava/lang/Object;
.source "ClassTag.scala"


# direct methods
.method public static $init$(Lscala/reflect/ClassTag;)V
    .locals 0
    .param p0, "$this"    # Lscala/reflect/ClassTag;

    .prologue
    .line 37
    return-void
.end method

.method public static canEqual(Lscala/reflect/ClassTag;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "$this"    # Lscala/reflect/ClassTag;
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 103
    instance-of v0, p1, Lscala/reflect/ClassTag;

    return v0
.end method

.method public static equals(Lscala/reflect/ClassTag;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "$this"    # Lscala/reflect/ClassTag;
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 104
    instance-of v0, p1, Lscala/reflect/ClassTag;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Lscala/reflect/ClassTag;

    .end local p1    # "x":Ljava/lang/Object;
    invoke-interface {p1}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hashCode(Lscala/reflect/ClassTag;)I
    .locals 2
    .param p0, "$this"    # Lscala/reflect/ClassTag;

    .prologue
    .line 105
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static newArray(Lscala/reflect/ClassTag;I)Ljava/lang/Object;
    .locals 2
    .param p0, "$this"    # Lscala/reflect/ClassTag;
    .param p1, "len"    # I

    .prologue
    .line 51
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    .line 52
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    .line 53
    :cond_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_b

    if-eqz v0, :cond_c

    .line 54
    :cond_1
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_d

    if-eqz v0, :cond_e

    .line 55
    :cond_2
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_f

    if-eqz v0, :cond_10

    .line 56
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_11

    if-eqz v0, :cond_12

    .line 57
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_13

    if-eqz v0, :cond_14

    .line 58
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_15

    if-eqz v0, :cond_16

    .line 59
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_17

    if-eqz v0, :cond_18

    .line 60
    :cond_7
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-nez v1, :cond_19

    if-eqz v0, :cond_1a

    .line 61
    :cond_8
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 52
    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_a
    new-array v0, p1, [B

    goto :goto_0

    .line 53
    :cond_b
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_c
    new-array v0, p1, [S

    goto :goto_0

    .line 54
    :cond_d
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_e
    new-array v0, p1, [C

    goto :goto_0

    .line 55
    :cond_f
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_10
    new-array v0, p1, [I

    goto :goto_0

    .line 56
    :cond_11
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_12
    new-array v0, p1, [J

    goto :goto_0

    .line 57
    :cond_13
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_14
    new-array v0, p1, [F

    goto :goto_0

    .line 58
    :cond_15
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_16
    new-array v0, p1, [D

    goto :goto_0

    .line 59
    :cond_17
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_18
    new-array v0, p1, [Z

    goto :goto_0

    .line 60
    :cond_19
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1a
    new-array v0, p1, [Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method private static final prettyprint$1(Lscala/reflect/ClassTag;Ljava/lang/Class;)Ljava/lang/String;
    .locals 6
    .param p0, "$this"    # Lscala/reflect/ClassTag;
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 108
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lscala/StringContext;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "Array["

    aput-object v3, v0, v4

    const-string v3, "]"

    aput-object v3, v0, v5

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-direct {v1, v0}, Lscala/StringContext;-><init>(Lscala/collection/Seq;)V

    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v3, p1}, Lscala/runtime/ScalaRunTime$;->arrayElementClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {p0, v3}, Lscala/reflect/ClassTag$class;->prettyprint$1(Lscala/reflect/ClassTag;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/StringContext;->s(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Lscala/reflect/ClassTag;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lscala/reflect/ClassTag;

    .prologue
    .line 110
    invoke-interface {p0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lscala/reflect/ClassTag$class;->prettyprint$1(Lscala/reflect/ClassTag;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
