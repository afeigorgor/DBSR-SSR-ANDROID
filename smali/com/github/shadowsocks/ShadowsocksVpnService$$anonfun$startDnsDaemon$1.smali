.class public final Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsDaemon$1;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksVpnService.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksVpnService;->startDnsDaemon()V
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
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final remote_dns$1:Lscala/runtime/BooleanRef;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksVpnService;Lscala/runtime/BooleanRef;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksVpnService;
    .param p2, "remote_dns$1"    # Lscala/runtime/BooleanRef;

    .prologue
    .line 355
    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsDaemon$1;->remote_dns$1:Lscala/runtime/BooleanRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 355
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsDaemon$1;->apply(Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 356
    const-string v0, "[remote_dns]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsDaemon$1;->remote_dns$1:Lscala/runtime/BooleanRef;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lscala/runtime/BooleanRef;->elem:Z

    .line 356
    :cond_0
    return-void
.end method
