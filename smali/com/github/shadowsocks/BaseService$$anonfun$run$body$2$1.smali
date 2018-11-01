.class public final Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;
.super Lscala/runtime/AbstractFunction1$mcVI$sp;
.source "BaseService.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/BaseService;

.field private final rxRate$1:J

.field private final rxTotal$1:J

.field private final txRate$1:J

.field private final txTotal$1:J


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/BaseService;JJJJ)V
    .locals 2
    .param p1, "$outer"    # Lcom/github/shadowsocks/BaseService;
    .param p2, "txRate$1"    # J
    .param p4, "rxRate$1"    # J
    .param p6, "txTotal$1"    # J
    .param p8, "rxTotal$1"    # J

    .prologue
    .line 263
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->$outer:Lcom/github/shadowsocks/BaseService;

    iput-wide p2, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->txRate$1:J

    iput-wide p4, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->rxRate$1:J

    iput-wide p6, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->txTotal$1:J

    iput-wide p8, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->rxTotal$1:J

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 263
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->apply(I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 10
    .param p1, "i"    # I

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->callbacks()Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;

    iget-wide v2, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->txRate$1:J

    iget-wide v4, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->rxRate$1:J

    iget-wide v6, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->txTotal$1:J

    iget-wide v8, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;->rxTotal$1:J

    invoke-interface/range {v1 .. v9}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;->trafficUpdated(JJJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
