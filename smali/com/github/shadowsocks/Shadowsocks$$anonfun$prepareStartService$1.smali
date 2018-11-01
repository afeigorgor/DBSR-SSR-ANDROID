.class public final Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;
.super Lscala/runtime/AbstractFunction0;
.source "Shadowsocks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/Shadowsocks;->prepareStartService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/Shadowsocks;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/Shadowsocks;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/Shadowsocks;

    .prologue
    .line 243
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 243
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->isNatEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->serviceLoad()V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    return-object v1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-static {v1}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 249
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v1}, Lcom/github/shadowsocks/Shadowsocks;->handler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1$$anonfun$8;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1$$anonfun$8;-><init>(Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/github/shadowsocks/Shadowsocks;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public final com$github$shadowsocks$Shadowsocks$$anonfun$$run$body$6()V
    .locals 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/shadowsocks/Shadowsocks;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method
