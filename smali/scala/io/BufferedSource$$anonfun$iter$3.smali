.class public final Lscala/io/BufferedSource$$anonfun$iter$3;
.super Lscala/runtime/AbstractFunction1;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/io/BufferedSource;)V
    .locals 0
    .param p1, "$outer"    # Lscala/io/BufferedSource;

    .prologue
    .line 42
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)C
    .locals 1
    .param p1, "x$2"    # I

    .prologue
    .line 42
    int-to-char v0, p1

    return v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/io/BufferedSource$$anonfun$iter$3;->apply(I)C

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method
