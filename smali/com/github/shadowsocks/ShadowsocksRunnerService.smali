.class public Lcom/github/shadowsocks/ShadowsocksRunnerService;
.super Landroid/app/Service;
.source "ShadowsocksRunnerService.scala"

# interfaces
.implements Lcom/github/shadowsocks/ServiceBoundContext;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

.field private binder:Landroid/os/IBinder;

.field private com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

.field private com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

.field private com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->$init$(Lcom/github/shadowsocks/ServiceBoundContext;)V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "callback"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/github/shadowsocks/ServiceBoundContext$class;->attachService(Lcom/github/shadowsocks/ServiceBoundContext;Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    return-void
.end method

.method public attachService$default$1()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->attachService$default$1(Lcom/github/shadowsocks/ServiceBoundContext;)Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    return-object v0
.end method

.method public bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-object v0
.end method

.method public bgService_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-void
.end method

.method public binder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public binderDied()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->binderDied(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public binder_$eq(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "x$1"    # Landroid/os/IBinder;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection()Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection_$eq(Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-void
.end method

.method public final com$github$shadowsocks$ShadowsocksRunnerService$$run$body$1()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerService;->stopSelf()V

    return-void
.end method

.method public detachService()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->detachService(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public handler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 68
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerService;->attachService$default$1()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksRunnerService;->attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerService;->detachService()V

    return-void
.end method

.method public onServiceConnected()V
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerService;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->isNatEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerService;->startBackgroundService()V

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerService;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ShadowsocksRunnerService$$anonfun$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ShadowsocksRunnerService$$anonfun$1;-><init>(Lcom/github/shadowsocks/ShadowsocksRunnerService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    :cond_1
    return-void

    .line 59
    :cond_2
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerService;->startBackgroundService()V

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->onServiceDisconnected(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public registerCallback()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->registerCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public startBackgroundService()V
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerService;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->useSync(I)V

    return-void
.end method

.method public unregisterCallback()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->unregisterCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method
