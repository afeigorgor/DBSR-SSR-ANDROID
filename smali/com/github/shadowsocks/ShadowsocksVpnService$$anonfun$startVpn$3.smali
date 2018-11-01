.class public final Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$3;
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
        "Landroid/net/VpnService$Builder;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final builder$1:Landroid/net/VpnService$Builder;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksVpnService;Landroid/net/VpnService$Builder;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksVpnService;
    .param p2, "builder$1"    # Landroid/net/VpnService$Builder;

    .prologue
    .line 458
    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$3;->builder$1:Landroid/net/VpnService$Builder;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/String;)Landroid/net/VpnService$Builder;
    .locals 6
    .param p1, "cidr"    # Ljava/lang/String;

    .prologue
    .line 459
    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2, p1}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Lscala/collection/immutable/StringOps;->split(C)[Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "addr":[Ljava/lang/String;
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$3;->builder$1:Landroid/net/VpnService$Builder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    move-result-object v1

    return-object v1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 458
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$3;->apply(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v0

    return-object v0
.end method
