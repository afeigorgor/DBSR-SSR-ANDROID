.class public final Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$2;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksNatService.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksNatService;->startDnsDaemon()V
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
.field private final black_list$1:Ljava/lang/String;

.field private final china_dns_settings$1:Lscala/runtime/ObjectRef;

.field private final reject$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksNatService;Ljava/lang/String;Lscala/runtime/ObjectRef;Ljava/lang/String;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksNatService;
    .param p2, "reject$1"    # Ljava/lang/String;
    .param p3, "china_dns_settings$1"    # Lscala/runtime/ObjectRef;
    .param p4, "black_list$1"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$2;->reject$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$2;->china_dns_settings$1:Lscala/runtime/ObjectRef;

    iput-object p4, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$2;->black_list$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$2;->apply(Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)V
    .locals 10
    .param p1, "china_dns"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 192
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$2;->china_dns_settings$1:Lscala/runtime/ObjectRef;

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$2;->china_dns_settings$1:Lscala/runtime/ObjectRef;

    iget-object v0, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/ConfigUtils$;->REMOTE_SERVER()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    new-instance v6, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v6

    invoke-static {v6}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    .line 193
    iget-object v7, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$2;->black_list$1:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 192
    const/4 v6, 0x3

    .line 193
    iget-object v7, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$2;->reject$1:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 192
    invoke-virtual {v4, v5}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    return-void
.end method
