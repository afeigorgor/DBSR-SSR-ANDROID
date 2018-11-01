.class public final Lcom/github/shadowsocks/BaseService$$anon$1$$anon$2;
.super Ljava/util/TimerTask;
.source "BaseService.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/BaseService$$anon$1;->registerCallback(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/BaseService$$anon$1;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/BaseService$$anon$1;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/BaseService$$anon$1;

    .prologue
    .line 109
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/BaseService$$anon$1$$anon$2;->$outer:Lcom/github/shadowsocks/BaseService$$anon$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->updateRate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1$$anon$2;->$outer:Lcom/github/shadowsocks/BaseService$$anon$1;

    invoke-virtual {v0}, Lcom/github/shadowsocks/BaseService$$anon$1;->com$github$shadowsocks$BaseService$$anon$$$outer()Lcom/github/shadowsocks/BaseService;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->updateTrafficRate()V

    :cond_0
    return-void
.end method
