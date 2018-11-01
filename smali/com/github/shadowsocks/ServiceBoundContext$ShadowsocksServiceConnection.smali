.class public Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;
.super Ljava/lang/Object;
.source "ServiceBoundContext.scala"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ServiceBoundContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShadowsocksServiceConnection"
.end annotation


# instance fields
.field public final synthetic $outer:Lcom/github/shadowsocks/ServiceBoundContext;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ServiceBoundContext;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ServiceBoundContext;

    .prologue
    .line 13
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;->$outer:Lcom/github/shadowsocks/ServiceBoundContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic com$github$shadowsocks$ServiceBoundContext$ShadowsocksServiceConnection$$$outer()Lcom/github/shadowsocks/ServiceBoundContext;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;->$outer:Lcom/github/shadowsocks/ServiceBoundContext;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;->com$github$shadowsocks$ServiceBoundContext$ShadowsocksServiceConnection$$$outer()Lcom/github/shadowsocks/ServiceBoundContext;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/github/shadowsocks/ServiceBoundContext;->binder_$eq(Landroid/os/IBinder;)V

    .line 16
    invoke-virtual {p0}, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;->com$github$shadowsocks$ServiceBoundContext$ShadowsocksServiceConnection$$$outer()Lcom/github/shadowsocks/ServiceBoundContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 17
    invoke-virtual {p0}, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;->com$github$shadowsocks$ServiceBoundContext$ShadowsocksServiceConnection$$$outer()Lcom/github/shadowsocks/ServiceBoundContext;

    move-result-object v0

    invoke-static {p2}, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/shadowsocks/ServiceBoundContext;->bgService_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService;)V

    .line 18
    invoke-virtual {p0}, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;->com$github$shadowsocks$ServiceBoundContext$ShadowsocksServiceConnection$$$outer()Lcom/github/shadowsocks/ServiceBoundContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/shadowsocks/ServiceBoundContext;->registerCallback()V

    .line 19
    invoke-virtual {p0}, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;->com$github$shadowsocks$ServiceBoundContext$ShadowsocksServiceConnection$$$outer()Lcom/github/shadowsocks/ServiceBoundContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/shadowsocks/ServiceBoundContext;->onServiceConnected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0}, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;->com$github$shadowsocks$ServiceBoundContext$ShadowsocksServiceConnection$$$outer()Lcom/github/shadowsocks/ServiceBoundContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/shadowsocks/ServiceBoundContext;->unregisterCallback()V

    .line 23
    invoke-virtual {p0}, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;->com$github$shadowsocks$ServiceBoundContext$ShadowsocksServiceConnection$$$outer()Lcom/github/shadowsocks/ServiceBoundContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/shadowsocks/ServiceBoundContext;->onServiceDisconnected()V

    .line 24
    invoke-virtual {p0}, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;->com$github$shadowsocks$ServiceBoundContext$ShadowsocksServiceConnection$$$outer()Lcom/github/shadowsocks/ServiceBoundContext;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/github/shadowsocks/ServiceBoundContext;->bgService_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService;)V

    .line 25
    invoke-virtual {p0}, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;->com$github$shadowsocks$ServiceBoundContext$ShadowsocksServiceConnection$$$outer()Lcom/github/shadowsocks/ServiceBoundContext;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/github/shadowsocks/ServiceBoundContext;->binder_$eq(Landroid/os/IBinder;)V

    return-void
.end method
