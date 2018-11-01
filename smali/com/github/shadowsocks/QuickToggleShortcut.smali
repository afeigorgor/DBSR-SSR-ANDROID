.class public Lcom/github/shadowsocks/QuickToggleShortcut;
.super Landroid/app/Activity;
.source "QuickToggleShortcut.scala"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->$init$(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method


# virtual methods
.method public attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "callback"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/github/shadowsocks/ServiceBoundContext$class;->attachService(Lcom/github/shadowsocks/ServiceBoundContext;Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    return-void
.end method

.method public attachService$default$1()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 12
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->attachService$default$1(Lcom/github/shadowsocks/ServiceBoundContext;)Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    return-object v0
.end method

.method public bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/github/shadowsocks/QuickToggleShortcut;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-object v0
.end method

.method public bgService_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksService;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/github/shadowsocks/QuickToggleShortcut;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-void
.end method

.method public binder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/github/shadowsocks/QuickToggleShortcut;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public binderDied()V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->binderDied(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public binder_$eq(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "x$1"    # Landroid/os/IBinder;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/github/shadowsocks/QuickToggleShortcut;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/github/shadowsocks/QuickToggleShortcut;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/github/shadowsocks/QuickToggleShortcut;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/github/shadowsocks/QuickToggleShortcut;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/github/shadowsocks/QuickToggleShortcut;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection()Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/github/shadowsocks/QuickToggleShortcut;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection_$eq(Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/github/shadowsocks/QuickToggleShortcut;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-void
.end method

.method public detachService()V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->detachService(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/github/shadowsocks/QuickToggleShortcut;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 18
    const-string v2, "android.intent.extra.shortcut.INTENT"

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/github/shadowsocks/QuickToggleShortcut;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 19
    const-string v2, "android.intent.extra.shortcut.NAME"

    const v3, 0x7f090096

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/QuickToggleShortcut;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 20
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 21
    const/high16 v3, 0x7f030000

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/QuickToggleShortcut;->setResult(ILandroid/content/Intent;)V

    .line 22
    invoke-virtual {p0}, Lcom/github/shadowsocks/QuickToggleShortcut;->finish()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 13
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/QuickToggleShortcut;->attachService$default$1()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/QuickToggleShortcut;->attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/QuickToggleShortcut;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    const-string v1, "toggle"

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    :cond_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/github/shadowsocks/QuickToggleShortcut;->detachService()V

    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onServiceConnected()V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/github/shadowsocks/QuickToggleShortcut;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->getState()I

    move-result v0

    .line 36
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->STOPPED()I

    move-result v1

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v0, p0}, Lcom/github/shadowsocks/utils/Utils$;->startSsService(Landroid/content/Context;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/QuickToggleShortcut;->finish()V

    return-void

    .line 37
    :cond_0
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->CONNECTED()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v0, p0}, Lcom/github/shadowsocks/utils/Utils$;->stopSsService(Landroid/content/Context;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->onServiceDisconnected(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public registerCallback()V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->registerCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public unregisterCallback()V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->unregisterCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method
