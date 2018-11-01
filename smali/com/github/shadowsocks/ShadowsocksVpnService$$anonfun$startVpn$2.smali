.class public final Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$2;
.super Lscala/runtime/AbstractFunction1;
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
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksVpnService;

.field private final builder$1:Landroid/net/VpnService$Builder;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksVpnService;Landroid/net/VpnService$Builder;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksVpnService;
    .param p2, "builder$1"    # Landroid/net/VpnService$Builder;

    .prologue
    .line 439
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$2;->$outer:Lcom/github/shadowsocks/ShadowsocksVpnService;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$2;->builder$1:Landroid/net/VpnService$Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 439
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$2;->apply(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$2;->$outer:Lcom/github/shadowsocks/ShadowsocksVpnService;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->bypass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$2;->builder$1:Landroid/net/VpnService$Builder;

    invoke-virtual {v0, p1}, Landroid/net/VpnService$Builder;->addDisallowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v0

    .line 440
    :goto_0
    return-object v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$2;->builder$1:Landroid/net/VpnService$Builder;

    invoke-virtual {v0, p1}, Landroid/net/VpnService$Builder;->addAllowedApplication(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$2;->$outer:Lcom/github/shadowsocks/ShadowsocksVpnService;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksVpnService;->TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid package name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
