.class public final Lscala/io/BufferedSource$$anonfun$iter$2;
.super Lscala/runtime/AbstractFunction1$mcZI$sp;
.source "BufferedSource.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/io/BufferedSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lscala/io/BufferedSource;)V
    .locals 0
    .param p1, "$outer"    # Lscala/io/BufferedSource;

    .prologue
    .line 41
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcZI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/io/BufferedSource$$anonfun$iter$2;->apply(I)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(I)Z
    .locals 1
    .param p1, "x$1"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lscala/io/BufferedSource$$anonfun$iter$2;->apply$mcZI$sp(I)Z

    move-result v0

    return v0
.end method

.method public apply$mcZI$sp(I)Z
    .locals 1
    .param p1, "x$1"    # I

    .prologue
    .line 41
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
