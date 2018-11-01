.class public final Lscala/runtime/RichFloat$;
.super Ljava/lang/Object;
.source "RichFloat.scala"


# static fields
.field public static final MODULE$:Lscala/runtime/RichFloat$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/runtime/RichFloat$;

    invoke-direct {v0}, Lscala/runtime/RichFloat$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/runtime/RichFloat$;->MODULE$:Lscala/runtime/RichFloat$;

    return-void
.end method


# virtual methods
.method public final min$extension(FF)F
    .locals 1
    .param p1, "$this"    # F
    .param p2, "that"    # F

    .prologue
    .line 43
    sget-object v0, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    invoke-virtual {v0, p1, p2}, Lscala/math/package$;->min(FF)F

    move-result v0

    return v0
.end method
