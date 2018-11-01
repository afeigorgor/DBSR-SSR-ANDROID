.class public final Lscala/math/BigDecimal$;
.super Ljava/lang/Object;
.source "BigDecimal.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/math/BigDecimal$;


# instance fields
.field private final defaultMathContext:Ljava/math/MathContext;

.field private final maxCached:I

.field private final minCached:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/BigDecimal$;

    invoke-direct {v0}, Lscala/math/BigDecimal$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/BigDecimal$;->MODULE$:Lscala/math/BigDecimal$;

    .line 29
    const/16 v0, -0x200

    iput v0, p0, Lscala/math/BigDecimal$;->minCached:I

    .line 30
    const/16 v0, 0x200

    iput v0, p0, Lscala/math/BigDecimal$;->maxCached:I

    .line 31
    sget-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    iput-object v0, p0, Lscala/math/BigDecimal$;->defaultMathContext:Ljava/math/MathContext;

    return-void
.end method


# virtual methods
.method public decimal(D)Lscala/math/BigDecimal;
    .locals 1
    .param p1, "d"    # D

    .prologue
    .line 55
    invoke-virtual {p0}, Lscala/math/BigDecimal$;->defaultMathContext()Ljava/math/MathContext;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lscala/math/BigDecimal$;->decimal(DLjava/math/MathContext;)Lscala/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public decimal(DLjava/math/MathContext;)Lscala/math/BigDecimal;
    .locals 3
    .param p1, "d"    # D
    .param p3, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 52
    new-instance v0, Lscala/math/BigDecimal;

    new-instance v1, Ljava/math/BigDecimal;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;Ljava/math/MathContext;)V

    invoke-direct {v0, v1, p3}, Lscala/math/BigDecimal;-><init>(Ljava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method

.method public defaultMathContext()Ljava/math/MathContext;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lscala/math/BigDecimal$;->defaultMathContext:Ljava/math/MathContext;

    return-object v0
.end method
