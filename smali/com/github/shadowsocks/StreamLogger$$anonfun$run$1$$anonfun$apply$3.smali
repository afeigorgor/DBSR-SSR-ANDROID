.class public final Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$3;
.super Lscala/runtime/AbstractFunction1;
.source "GuardedProcess.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;

    .prologue
    .line 60
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$3;->$outer:Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/String;)I
    .locals 1
    .param p1, "x$2"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$3;->$outer:Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;

    invoke-virtual {v0}, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1;->com$github$shadowsocks$StreamLogger$$anonfun$$$outer()Lcom/github/shadowsocks/StreamLogger;

    move-result-object v0

    iget-object v0, v0, Lcom/github/shadowsocks/StreamLogger;->com$github$shadowsocks$StreamLogger$$tag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/StreamLogger$$anonfun$run$1$$anonfun$apply$3;->apply(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
