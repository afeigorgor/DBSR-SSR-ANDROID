.class public final Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksNatService.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksNatService;->setupIptables()V
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
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksNatService;

.field private final cmd_bypass$1:Ljava/lang/String;

.field private final http_sb$1:Lscala/collection/mutable/ArrayBuffer;

.field private final init_sb$1:Lscala/collection/mutable/ArrayBuffer;

.field private final uidMap$1:Lscala/collection/immutable/Map;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksNatService;Lscala/collection/mutable/ArrayBuffer;Lscala/collection/mutable/ArrayBuffer;Ljava/lang/String;Lscala/collection/immutable/Map;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksNatService;
    .param p2, "init_sb$1"    # Lscala/collection/mutable/ArrayBuffer;
    .param p3, "http_sb$1"    # Lscala/collection/mutable/ArrayBuffer;
    .param p4, "cmd_bypass$1"    # Ljava/lang/String;
    .param p5, "uidMap$1"    # Lscala/collection/immutable/Map;

    .prologue
    .line 330
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->$outer:Lcom/github/shadowsocks/ShadowsocksNatService;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->init_sb$1:Lscala/collection/mutable/ArrayBuffer;

    iput-object p3, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->http_sb$1:Lscala/collection/mutable/ArrayBuffer;

    iput-object p4, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->cmd_bypass$1:Ljava/lang/String;

    iput-object p5, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->uidMap$1:Lscala/collection/immutable/Map;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 330
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->apply(Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)V
    .locals 9
    .param p1, "pn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 330
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->uidMap$1:Lscala/collection/immutable/Map;

    invoke-interface {v1, p1}, Lscala/collection/immutable/Map;->get(Ljava/lang/Object;)Lscala/Option;

    move-result-object v1

    .line 331
    instance-of v2, v1, Lscala/Some;

    if-eqz v2, :cond_1

    check-cast v1, Lscala/Some;

    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    .line 332
    .local v0, "uid":I
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->$outer:Lcom/github/shadowsocks/ShadowsocksNatService;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->bypass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->init_sb$1:Lscala/collection/mutable/ArrayBuffer;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->cmd_bypass$1:Ljava/lang/String;

    const-string v5, "-d 0.0.0.0"

    new-instance v6, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v6}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v7, "-m owner --uid-owner "

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 330
    .end local v0    # "uid":I
    :goto_0
    return-void

    .line 333
    .restart local v0    # "uid":I
    :cond_0
    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->http_sb$1:Lscala/collection/mutable/ArrayBuffer;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v4, [Ljava/lang/String;

    iget-object v4, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;->$outer:Lcom/github/shadowsocks/ShadowsocksNatService;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksNatService;->CMD_IPTABLES_DNAT_ADD_SOCKS()Ljava/lang/String;

    move-result-object v4

    .line 334
    const-string v5, "-t nat"

    new-instance v6, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v6}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v7, "-t nat -m owner --uid-owner "

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    check-cast v1, [Ljava/lang/Object;

    .line 333
    invoke-virtual {v3, v1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 338
    .end local v0    # "uid":I
    :cond_1
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method
