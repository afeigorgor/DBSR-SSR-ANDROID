.class public final Lscala/PartialFunction$$anonfun$runWith$1;
.super Lscala/runtime/AbstractFunction1;
.source "PartialFunction.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/PartialFunction;->runWith(Lscala/Function1;)Lscala/Function1;
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
.field private final synthetic $outer:Lscala/PartialFunction;

.field private final action$1:Lscala/Function1;


# direct methods
.method public constructor <init>(Lscala/PartialFunction;Lscala/Function1;)V
    .locals 1
    .param p1, "$outer"    # Lscala/PartialFunction;
    .param p2, "action$1"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/PartialFunction",
            "<TA;TB;>;)V"
        }
    .end annotation

    .prologue
    .line 140
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/PartialFunction$$anonfun$runWith$1;->$outer:Lscala/PartialFunction;

    iput-object p2, p0, Lscala/PartialFunction$$anonfun$runWith$1;->action$1:Lscala/Function1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lscala/PartialFunction$$anonfun$runWith$1;->apply(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "x"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Lscala/PartialFunction$$anonfun$runWith$1;->$outer:Lscala/PartialFunction;

    sget-object v2, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {v2}, Lscala/PartialFunction$;->scala$PartialFunction$$checkFallback()Lscala/PartialFunction;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lscala/PartialFunction;->applyOrElse(Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "z":Ljava/lang/Object;
    sget-object v1, Lscala/PartialFunction$;->MODULE$:Lscala/PartialFunction$;

    invoke-virtual {v1, v0}, Lscala/PartialFunction$;->scala$PartialFunction$$fallbackOccurred(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 140
    :goto_0
    return v1

    .line 142
    :cond_0
    iget-object v1, p0, Lscala/PartialFunction$$anonfun$runWith$1;->action$1:Lscala/Function1;

    invoke-interface {v1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    goto :goto_0
.end method
