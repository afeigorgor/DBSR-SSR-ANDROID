.class public final Lcom/github/shadowsocks/ShadowsocksTileService;
.super Landroid/service/quicksettings/TileService;
.source "ShadowsocksTileService.scala"

# interfaces
.implements Lcom/github/shadowsocks/ServiceBoundContext;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

.field private binder:Landroid/os/IBinder;

.field private volatile bitmap$0:B

.field private callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

.field private com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

.field private com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

.field private com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

.field private com$github$shadowsocks$ShadowsocksTileService$$iconBusy:Landroid/graphics/drawable/Icon;

.field private com$github$shadowsocks$ShadowsocksTileService$$iconConnected:Landroid/graphics/drawable/Icon;

.field private com$github$shadowsocks$ShadowsocksTileService$$iconIdle:Landroid/graphics/drawable/Icon;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->$init$(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method private callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 19
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->callback$lzycompute()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    goto :goto_0
.end method

.method private callback$lzycompute()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 19
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/shadowsocks/ShadowsocksTileService$$anon$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/ShadowsocksTileService$$anon$1;-><init>(Lcom/github/shadowsocks/ShadowsocksTileService;)V

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private com$github$shadowsocks$ShadowsocksTileService$$iconBusy$lzycompute()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const v0, 0x7f020083

    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconBusy:Landroid/graphics/drawable/Icon;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconBusy:Landroid/graphics/drawable/Icon;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private com$github$shadowsocks$ShadowsocksTileService$$iconConnected$lzycompute()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const v0, 0x7f020084

    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconConnected:Landroid/graphics/drawable/Icon;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconConnected:Landroid/graphics/drawable/Icon;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private com$github$shadowsocks$ShadowsocksTileService$$iconIdle$lzycompute()Landroid/graphics/drawable/Icon;
    .locals 2

    .prologue
    .line 16
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const v0, 0x7f020085

    invoke-static {p0, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconIdle:Landroid/graphics/drawable/Icon;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconIdle:Landroid/graphics/drawable/Icon;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private toggle()V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->getState()I

    move-result v0

    .line 57
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->STOPPED()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v0, p0}, Lcom/github/shadowsocks/utils/Utils$;->startSsService(Landroid/content/Context;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->CONNECTED()I

    move-result v1

    if-ne v1, v0, :cond_2

    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v0, p0}, Lcom/github/shadowsocks/utils/Utils$;->stopSsService(Landroid/content/Context;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 59
    :cond_2
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method


# virtual methods
.method public attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "callback"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 14
    invoke-static {p0, p1}, Lcom/github/shadowsocks/ServiceBoundContext$class;->attachService(Lcom/github/shadowsocks/ServiceBoundContext;Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    return-void
.end method

.method public bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-object v0
.end method

.method public bgService_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksService;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-void
.end method

.method public binder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public binderDied()V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->binderDied(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public binder_$eq(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "x$1"    # Landroid/os/IBinder;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection()Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection_$eq(Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-void
.end method

.method public com$github$shadowsocks$ShadowsocksTileService$$iconBusy()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 17
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconBusy$lzycompute()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconBusy:Landroid/graphics/drawable/Icon;

    goto :goto_0
.end method

.method public com$github$shadowsocks$ShadowsocksTileService$$iconConnected()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 18
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconConnected$lzycompute()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconConnected:Landroid/graphics/drawable/Icon;

    goto :goto_0
.end method

.method public com$github$shadowsocks$ShadowsocksTileService$$iconIdle()Landroid/graphics/drawable/Icon;
    .locals 1

    .prologue
    .line 16
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconIdle$lzycompute()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconIdle:Landroid/graphics/drawable/Icon;

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ShadowsocksTileService$$run$body$1()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->toggle()V

    return-void
.end method

.method public detachService()V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->detachService(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public onClick()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/shadowsocks/ShadowsocksTileService$$anonfun$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/ShadowsocksTileService$$anonfun$1;-><init>(Lcom/github/shadowsocks/ShadowsocksTileService;)V

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksTileService;->unlockAndRun(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->toggle()V

    goto :goto_0
.end method

.method public onServiceConnected()V
    .locals 4

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->getState()I

    move-result v1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->getProfileName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;->stateChanged(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->onServiceDisconnected(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public onStartListening()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 47
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksTileService;->attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    return-void
.end method

.method public onStopListening()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 51
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksTileService;->detachService()V

    return-void
.end method

.method public registerCallback()V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->registerCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public unregisterCallback()V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->unregisterCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method
