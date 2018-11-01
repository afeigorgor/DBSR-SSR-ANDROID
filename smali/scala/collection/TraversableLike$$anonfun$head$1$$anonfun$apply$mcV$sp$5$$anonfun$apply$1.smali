.class public final Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction0;
.source "TraversableLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<TA;>;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final x$5:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;Ljava/lang/Object;)V
    .locals 0
    .param p1, "$outer"    # Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5;
    .param p2, "x$5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableLike",
            "<TA;TRepr;>.5;)V"
        }
    .end annotation

    .prologue
    .line 400
    iput-object p2, p0, Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5$$anonfun$apply$1;->x$5:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lscala/collection/TraversableLike$$anonfun$head$1$$anonfun$apply$mcV$sp$5$$anonfun$apply$1;->x$5:Ljava/lang/Object;

    return-object v0
.end method
