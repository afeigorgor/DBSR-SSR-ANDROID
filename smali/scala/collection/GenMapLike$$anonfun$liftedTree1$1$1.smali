.class public final Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;
.super Lscala/runtime/AbstractFunction1;
.source "GenMapLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/GenMapLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/Tuple2",
        "<TA;TB;>;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final x2$1:Lscala/collection/GenMap;


# direct methods
.method public constructor <init>(Lscala/collection/GenMapLike;Lscala/collection/GenMap;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/GenMapLike;
    .param p2, "x2$1"    # Lscala/collection/GenMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/GenMapLike",
            "<TA;TB;TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 119
    iput-object p2, p0, Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;->x2$1:Lscala/collection/GenMap;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 119
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;->apply(Lscala/Tuple2;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lscala/Tuple2;)Z
    .locals 5
    .param p1, "x0$1"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<TA;TB;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 119
    if-eqz p1, :cond_5

    .line 120
    iget-object v0, p0, Lscala/collection/GenMapLike$$anonfun$liftedTree1$1$1;->x2$1:Lscala/collection/GenMap;

    invoke-virtual {p1}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/GenMap;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_4

    check-cast v0, Lscala/Some;

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    move v0, v2

    .line 119
    :goto_1
    return v0

    .line 121
    :cond_0
    if-nez v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    instance-of v0, v1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Ljava/lang/Number;

    invoke-static {v0, v4}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v0, v1, Ljava/lang/Character;

    if-eqz v0, :cond_3

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, v4}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v3

    .line 123
    goto :goto_1

    .line 119
    :cond_5
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
