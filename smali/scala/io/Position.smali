.class public abstract Lscala/io/Position;
.super Ljava/lang/Object;
.source "Position.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkInput(II)V
.end method

.method public final encode(II)I
    .locals 3
    .param p1, "line"    # I
    .param p2, "column"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1, p2}, Lscala/io/Position;->checkInput(II)V

    .line 55
    const v0, 0xfffff

    if-lt p1, v0, :cond_0

    .line 56
    const v0, 0x7ffff800

    .line 52
    :goto_0
    return v0

    .line 58
    :cond_0
    shl-int/lit8 v0, p1, 0xb

    sget-object v1, Lscala/math/package$;->MODULE$:Lscala/math/package$;

    const/16 v2, 0x7ff

    invoke-virtual {v1, v2, p2}, Lscala/math/package$;->min(II)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method
