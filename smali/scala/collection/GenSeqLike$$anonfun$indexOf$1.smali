.class public final Lscala/collection/GenSeqLike$$anonfun$indexOf$1;
.super Lscala/runtime/AbstractFunction1;
.source "GenSeqLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/GenSeqLike;->indexOf(Ljava/lang/Object;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final elem$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/GenSeqLike;Ljava/lang/Object;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/GenSeqLike;
    .param p2, "elem$1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenSeqLike",
            "<TA;TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    iput-object p2, p0, Lscala/collection/GenSeqLike$$anonfun$indexOf$1;->elem$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lscala/collection/GenSeqLike$$anonfun$indexOf$1;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "x$1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lscala/collection/GenSeqLike$$anonfun$indexOf$1;->elem$1:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    return v0

    :cond_0
    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v3, v0, Ljava/lang/Character;

    if-eqz v3, :cond_3

    check-cast v0, Ljava/lang/Character;

    invoke-static {v0, p1}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
