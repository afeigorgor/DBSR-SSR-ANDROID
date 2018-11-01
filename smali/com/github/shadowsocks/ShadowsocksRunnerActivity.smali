.class public Lcom/github/shadowsocks/ShadowsocksRunnerActivity;
.super Landroid/app/Activity;
.source "ShadowsocksRunnerActivity.scala"

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

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->$init$(Lcom/github/shadowsocks/ServiceBoundContext;)V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "callback"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/github/shadowsocks/ServiceBoundContext$class;->attachService(Lcom/github/shadowsocks/ServiceBoundContext;Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    return-void
.end method

.method public attachService$default$1()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->attachService$default$1(Lcom/github/shadowsocks/ServiceBoundContext;)Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    return-object v0
.end method

.method public bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-object v0
.end method

.method public bgService_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksService;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-void
.end method

.method public binder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public binderDied()V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->binderDied(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public binder_$eq(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "x$1"    # Landroid/os/IBinder;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection()Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection_$eq(Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-void
.end method

.method public final com$github$shadowsocks$ShadowsocksRunnerActivity$$onReceive$body$1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :cond_2
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->attachService$default$1()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ShadowsocksRunnerActivity$$run$body$1()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->startBackgroundService()V

    :cond_0
    return-void
.end method

.method public detachService()V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->detachService(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public handler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 109
    packed-switch p2, :pswitch_data_0

    .line 115
    const-string v0, "ShadowsocksRunnerActivity"

    const-string v1, "Failed to start VpnService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->finish()V

    return-void

    .line 111
    :pswitch_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->use(I)V

    .line 111
    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v3, "keyguard"

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 84
    .local v1, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 85
    .local v2, "locked":Z
    if-eqz v2, :cond_0

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/github/shadowsocks/ShadowsocksRunnerActivity$$anonfun$2;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity$$anonfun$2;-><init>(Lcom/github/shadowsocks/ShadowsocksRunnerActivity;)V

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->receiver_$eq(Landroid/content/BroadcastReceiver;)V

    .line 92
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->receiver()Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->finish()V

    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->attachService$default$1()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 101
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->detachService()V

    .line 102
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->receiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->receiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->receiver_$eq(Landroid/content/BroadcastReceiver;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 4

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ShadowsocksRunnerActivity$$anonfun$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity$$anonfun$1;-><init>(Lcom/github/shadowsocks/ShadowsocksRunnerActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->onServiceDisconnected(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public receiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public receiver_$eq(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "x$1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public registerCallback()V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->registerCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public startBackgroundService()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 68
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->isNatEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v1

    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->use(I)V

    .line 70
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->finish()V

    .line 68
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 76
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public unregisterCallback()V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->unregisterCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method
