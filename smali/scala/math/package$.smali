.class public final Lscala/math/package$;
.super Ljava/lang/Object;
.source "package.scala"


# static fields
.field public static final MODULE$:Lscala/math/package$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/math/package$;

    invoke-direct {v0}, Lscala/math/package$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    return-void
.end method


# virtual methods
.method public ceil(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 77
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public max(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 131
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public min(FF)F
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 138
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public min(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 136
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
