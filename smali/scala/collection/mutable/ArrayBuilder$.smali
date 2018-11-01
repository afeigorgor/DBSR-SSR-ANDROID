.class public final Lscala/collection/mutable/ArrayBuilder$;
.super Ljava/lang/Object;
.source "ArrayBuilder.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/collection/mutable/ArrayBuilder$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/collection/mutable/ArrayBuilder$;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuilder$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/collection/mutable/ArrayBuilder$;->MODULE$:Lscala/collection/mutable/ArrayBuilder$;

    return-void
.end method


# virtual methods
.method public make(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;
    .locals 3
    .param p1, "evidence$1"    # Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag",
            "<TT;>;)",
            "Lscala/collection/mutable/ArrayBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object v0, p1

    check-cast v0, Lscala/reflect/ClassTag;

    .line 37
    .local v0, "tag":Lscala/reflect/ClassTag;
    invoke-interface {v0}, Lscala/reflect/ClassTag;->runtimeClass()Ljava/lang/Class;

    move-result-object v1

    .line 38
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-nez v2, :cond_9

    if-eqz v1, :cond_a

    .line 39
    :cond_0
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-nez v2, :cond_b

    if-eqz v1, :cond_c

    .line 40
    :cond_1
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-nez v2, :cond_d

    if-eqz v1, :cond_e

    .line 41
    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-nez v2, :cond_f

    if-eqz v1, :cond_10

    .line 42
    :cond_3
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-nez v2, :cond_11

    if-eqz v1, :cond_12

    .line 43
    :cond_4
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-nez v2, :cond_13

    if-eqz v1, :cond_14

    .line 44
    :cond_5
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-nez v2, :cond_15

    if-eqz v1, :cond_16

    .line 45
    :cond_6
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-nez v2, :cond_17

    if-eqz v1, :cond_18

    .line 46
    :cond_7
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-nez v2, :cond_19

    if-eqz v1, :cond_1a

    .line 47
    :cond_8
    new-instance v1, Lscala/collection/mutable/ArrayBuilder$ofRef;

    invoke-direct {v1, v0}, Lscala/collection/mutable/ArrayBuilder$ofRef;-><init>(Lscala/reflect/ClassTag;)V

    .line 37
    :goto_0
    return-object v1

    .line 38
    :cond_9
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_a
    new-instance v1, Lscala/collection/mutable/ArrayBuilder$ofByte;

    invoke-direct {v1}, Lscala/collection/mutable/ArrayBuilder$ofByte;-><init>()V

    goto :goto_0

    .line 39
    :cond_b
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_c
    new-instance v1, Lscala/collection/mutable/ArrayBuilder$ofShort;

    invoke-direct {v1}, Lscala/collection/mutable/ArrayBuilder$ofShort;-><init>()V

    goto :goto_0

    .line 40
    :cond_d
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_e
    new-instance v1, Lscala/collection/mutable/ArrayBuilder$ofChar;

    invoke-direct {v1}, Lscala/collection/mutable/ArrayBuilder$ofChar;-><init>()V

    goto :goto_0

    .line 41
    :cond_f
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_10
    new-instance v1, Lscala/collection/mutable/ArrayBuilder$ofInt;

    invoke-direct {v1}, Lscala/collection/mutable/ArrayBuilder$ofInt;-><init>()V

    goto :goto_0

    .line 42
    :cond_11
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_12
    new-instance v1, Lscala/collection/mutable/ArrayBuilder$ofLong;

    invoke-direct {v1}, Lscala/collection/mutable/ArrayBuilder$ofLong;-><init>()V

    goto :goto_0

    .line 43
    :cond_13
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_14
    new-instance v1, Lscala/collection/mutable/ArrayBuilder$ofFloat;

    invoke-direct {v1}, Lscala/collection/mutable/ArrayBuilder$ofFloat;-><init>()V

    goto :goto_0

    .line 44
    :cond_15
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_16
    new-instance v1, Lscala/collection/mutable/ArrayBuilder$ofDouble;

    invoke-direct {v1}, Lscala/collection/mutable/ArrayBuilder$ofDouble;-><init>()V

    goto :goto_0

    .line 45
    :cond_17
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_18
    new-instance v1, Lscala/collection/mutable/ArrayBuilder$ofBoolean;

    invoke-direct {v1}, Lscala/collection/mutable/ArrayBuilder$ofBoolean;-><init>()V

    goto :goto_0

    .line 46
    :cond_19
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_1a
    new-instance v1, Lscala/collection/mutable/ArrayBuilder$ofUnit;

    invoke-direct {v1}, Lscala/collection/mutable/ArrayBuilder$ofUnit;-><init>()V

    goto :goto_0
.end method
