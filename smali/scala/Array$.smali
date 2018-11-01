.class public final Lscala/Array$;
.super Lscala/FallbackArrayBuilding;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/Array$;


# instance fields
.field private final emptyBooleanArray:[Z

.field private final emptyByteArray:[B

.field private final emptyCharArray:[C

.field private final emptyDoubleArray:[D

.field private final emptyFloatArray:[F

.field private final emptyIntArray:[I

.field private final emptyLongArray:[J

.field private final emptyObjectArray:[Ljava/lang/Object;

.field private final emptyShortArray:[S


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/Array$;

    invoke-direct {v0}, Lscala/Array$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lscala/FallbackArrayBuilding;-><init>()V

    sput-object p0, Lscala/Array$;->MODULE$:Lscala/Array$;

    .line 51
    new-array v0, v1, [Z

    iput-object v0, p0, Lscala/Array$;->emptyBooleanArray:[Z

    .line 52
    new-array v0, v1, [B

    iput-object v0, p0, Lscala/Array$;->emptyByteArray:[B

    .line 53
    new-array v0, v1, [C

    iput-object v0, p0, Lscala/Array$;->emptyCharArray:[C

    .line 54
    new-array v0, v1, [D

    iput-object v0, p0, Lscala/Array$;->emptyDoubleArray:[D

    .line 55
    new-array v0, v1, [F

    iput-object v0, p0, Lscala/Array$;->emptyFloatArray:[F

    .line 56
    new-array v0, v1, [I

    iput-object v0, p0, Lscala/Array$;->emptyIntArray:[I

    .line 57
    new-array v0, v1, [J

    iput-object v0, p0, Lscala/Array$;->emptyLongArray:[J

    .line 58
    new-array v0, v1, [S

    iput-object v0, p0, Lscala/Array$;->emptyShortArray:[S

    .line 59
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lscala/Array$;->emptyObjectArray:[Ljava/lang/Object;

    return-void
.end method

.method private slowcopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 5
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "srcPos"    # I
    .param p3, "dest"    # Ljava/lang/Object;
    .param p4, "destPos"    # I
    .param p5, "length"    # I

    .prologue
    .line 77
    move v0, p2

    .line 78
    .local v0, "i":I
    move v1, p4

    .line 79
    .local v1, "j":I
    add-int v2, p2, p5

    .line 80
    .local v2, "srcUntil":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 81
    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    sget-object v4, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v4, p1, v0}, Lscala/runtime/ScalaRunTime$;->array_apply(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p3, v1, v4}, Lscala/runtime/ScalaRunTime$;->array_update(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Lscala/collection/Seq;Lscala/reflect/ClassTag;)Ljava/lang/Object;
    .locals 4
    .param p1, "xs"    # Lscala/collection/Seq;
    .param p2, "evidence$2"    # Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/collection/Seq",
            "<TT;>;",
            "Lscala/reflect/ClassTag",
            "<TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-interface {p1}, Lscala/collection/Seq;->length()I

    move-result v2

    invoke-interface {p2, v2}, Lscala/reflect/ClassTag;->newArray(I)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "array":Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {v2}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v1

    .line 123
    .local v1, "i":Lscala/runtime/IntRef;
    invoke-interface {p1}, Lscala/collection/Seq;->iterator()Lscala/collection/Iterator;

    move-result-object v2

    new-instance v3, Lscala/Array$$anonfun$apply$5;

    invoke-direct {v3, v0, v1}, Lscala/Array$$anonfun$apply$5;-><init>(Ljava/lang/Object;Lscala/runtime/IntRef;)V

    invoke-interface {v2, v3}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    .line 124
    return-object v0
.end method

.method public canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .param p1, "t"    # Lscala/reflect/ClassTag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/reflect/ClassTag",
            "<TT;>;)",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Ljava/lang/Object;",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lscala/Array$$anon$2;

    invoke-direct {v0, p1}, Lscala/Array$$anon$2;-><init>(Lscala/reflect/ClassTag;)V

    return-object v0
.end method

.method public copy(Ljava/lang/Object;ILjava/lang/Object;II)V
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "srcPos"    # I
    .param p3, "dest"    # Ljava/lang/Object;
    .param p4, "destPos"    # I
    .param p5, "length"    # I

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 104
    .local v0, "srcClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lscala/compat/Platform$;->MODULE$:Lscala/compat/Platform$;

    invoke-static {p1, p2, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-direct/range {p0 .. p5}, Lscala/Array$;->slowcopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public newBuilder(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;
    .locals 1
    .param p1, "t"    # Lscala/reflect/ClassTag;
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
    .line 70
    sget-object v0, Lscala/collection/mutable/ArrayBuilder$;->MODULE$:Lscala/collection/mutable/ArrayBuilder$;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ArrayBuilder$;->make(Lscala/reflect/ClassTag;)Lscala/collection/mutable/ArrayBuilder;

    move-result-object v0

    return-object v0
.end method
