.class public final Lcom/github/shadowsocks/Shadowsocks$$anonfun$recovery$1;
.super Lscala/runtime/AbstractFunction0$mcZ$sp;
.source "Shadowsocks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/Shadowsocks;->recovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final h$1:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/Shadowsocks;Landroid/os/Handler;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/Shadowsocks;
    .param p2, "h$1"    # Landroid/os/Handler;

    .prologue
    .line 458
    iput-object p2, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$recovery$1;->h$1:Landroid/os/Handler;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcZ$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$recovery$1;->apply()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Z
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$recovery$1;->apply$mcZ$sp()Z

    move-result v0

    return v0
.end method

.method public apply$mcZ$sp()Z
    .locals 2

    .prologue
    .line 459
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->copyAssets()V

    .line 460
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$recovery$1;->h$1:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method
