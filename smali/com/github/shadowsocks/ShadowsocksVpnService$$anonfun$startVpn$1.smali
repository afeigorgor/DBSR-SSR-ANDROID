.class public final Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "ShadowsocksVpnService.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksVpnService;->startVpn()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksVpnService;

.field private final fd$1:I


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksVpnService;I)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksVpnService;
    .param p2, "fd$1"    # I

    .prologue
    .line 494
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$1;->$outer:Lcom/github/shadowsocks/ShadowsocksVpnService;

    iput p2, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$1;->fd$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 0

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$1;->apply$mcV$sp()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$1;->$outer:Lcom/github/shadowsocks/ShadowsocksVpnService;

    iget v1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$1;->fd$1:I

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService;->sendFd(I)Z

    return-void
.end method
