.class public final Lscala/runtime/RichDouble$;
.super Ljava/lang/Object;
.source "RichDouble.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/RichDouble$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/RichDouble$;

    invoke-direct {v0}, Lscala/runtime/RichDouble$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/RichDouble$;->MODULE$:Lscala/runtime/RichDouble$;

    return-void
.end method


# virtual methods
.method public final ceil$extension(D)D
    .locals 3
    .param p1, "$this"    # D

    .prologue
    .line 47
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->ceil(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final isInfinity$extension(D)Z
    .locals 1
    .param p1, "$this"    # D

    .prologue
    .line 37
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method
