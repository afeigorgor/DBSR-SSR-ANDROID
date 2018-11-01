.class public abstract Lcom/github/shadowsocks/ServiceBoundContext$class;
.super Ljava/lang/Object;
.source "ServiceBoundContext.scala"


# direct methods
.method public static $init$(Lcom/github/shadowsocks/ServiceBoundContext;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/shadowsocks/ServiceBoundContext;

    .prologue
    .line 12
    return-void
.end method

.method public static attachService(Lcom/github/shadowsocks/ServiceBoundContext;Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 5
    .param p0, "$this"    # Lcom/github/shadowsocks/ServiceBoundContext;
    .param p1, "callback"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 56
    invoke-interface {p0, p1}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$callback_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    .line 57
    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 58
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->isNatEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v1, Lcom/github/shadowsocks/ShadowsocksNatService;

    .line 60
    .local v1, "s":Ljava/lang/Class;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/github/shadowsocks/utils/Action$;->MODULE$:Lcom/github/shadowsocks/utils/Action$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Action$;->SERVICE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    new-instance v2, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;-><init>(Lcom/github/shadowsocks/ServiceBoundContext;)V

    invoke-interface {p0, v2}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$connection_$eq(Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;)V

    move-object v2, p0

    .line 64
    check-cast v2, Landroid/content/Context;

    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$connection()Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 55
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "s":Ljava/lang/Class;
    :cond_0
    return-void

    .line 58
    :cond_1
    const-class v1, Lcom/github/shadowsocks/ShadowsocksVpnService;

    goto :goto_0
.end method

.method public static attachService$default$1(Lcom/github/shadowsocks/ServiceBoundContext;)Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1
    .param p0, "$this"    # Lcom/github/shadowsocks/ServiceBoundContext;

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public static binderDied(Lcom/github/shadowsocks/ServiceBoundContext;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/shadowsocks/ServiceBoundContext;

    .prologue
    .line 45
    return-void
.end method

.method public static detachService(Lcom/github/shadowsocks/ServiceBoundContext;)V
    .locals 4
    .param p0, "$this"    # Lcom/github/shadowsocks/ServiceBoundContext;

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->unregisterCallback()V

    .line 70
    invoke-interface {p0, v3}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$callback_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    .line 71
    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$connection()Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$connection()Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    invoke-interface {p0, v3}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$connection_$eq(Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;)V

    .line 77
    :cond_0
    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->binder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 78
    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->binder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 79
    invoke-interface {p0, v3}, Lcom/github/shadowsocks/ServiceBoundContext;->binder_$eq(Landroid/os/IBinder;)V

    .line 81
    :cond_1
    invoke-interface {p0, v3}, Lcom/github/shadowsocks/ServiceBoundContext;->bgService_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static onServiceConnected(Lcom/github/shadowsocks/ServiceBoundContext;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/shadowsocks/ServiceBoundContext;

    .prologue
    .line 43
    return-void
.end method

.method public static onServiceDisconnected(Lcom/github/shadowsocks/ServiceBoundContext;)V
    .locals 0
    .param p0, "$this"    # Lcom/github/shadowsocks/ServiceBoundContext;

    .prologue
    .line 44
    return-void
.end method

.method public static registerCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V
    .locals 2
    .param p0, "$this"    # Lcom/github/shadowsocks/ServiceBoundContext;

    .prologue
    .line 29
    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    :try_start_0
    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->registerCallback(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;)V

    .line 31
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered_$eq(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static unregisterCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V
    .locals 2
    .param p0, "$this"    # Lcom/github/shadowsocks/ServiceBoundContext;

    .prologue
    .line 37
    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    invoke-interface {p0}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->unregisterCallback(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/github/shadowsocks/ServiceBoundContext;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered_$eq(Z)V

    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method
