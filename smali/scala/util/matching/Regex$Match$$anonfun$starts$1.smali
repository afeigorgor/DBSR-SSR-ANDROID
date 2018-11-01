.class public final Lscala/util/matching/Regex$Match$$anonfun$starts$1;
.super Lscala/runtime/AbstractFunction1$mcII$sp;
.source "Regex.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/matching/Regex$Match;->starts()[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field public final synthetic $outer:Lscala/util/matching/Regex$Match;


# direct methods
.method public constructor <init>(Lscala/util/matching/Regex$Match;)V
    .locals 1
    .param p1, "$outer"    # Lscala/util/matching/Regex$Match;

    .prologue
    .line 683
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/util/matching/Regex$Match$$anonfun$starts$1;->$outer:Lscala/util/matching/Regex$Match;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcII$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .locals 1
    .param p1, "x$1"    # I

    .prologue
    .line 683
    iget-object v0, p0, Lscala/util/matching/Regex$Match$$anonfun$starts$1;->$outer:Lscala/util/matching/Regex$Match;

    invoke-virtual {v0}, Lscala/util/matching/Regex$Match;->matcher()Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 683
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/util/matching/Regex$Match$$anonfun$starts$1;->apply(I)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
