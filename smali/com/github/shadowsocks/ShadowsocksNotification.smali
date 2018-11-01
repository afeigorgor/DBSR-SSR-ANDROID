.class public Lcom/github/shadowsocks/ShadowsocksNotification;
.super Ljava/lang/Object;
.source "ShadowsocksNotification.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private volatile bitmap$0:B

.field private callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

.field private callbackRegistered:Z

.field private final com$github$shadowsocks$ShadowsocksNotification$$builder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private final com$github$shadowsocks$ShadowsocksNotification$$service:Lcom/github/shadowsocks/BaseService;

.field private com$github$shadowsocks$ShadowsocksNotification$$style:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

.field private isVisible:Z

.field private final keyGuard:Landroid/app/KeyguardManager;

.field private lockReceiver:Landroid/content/BroadcastReceiver;

.field private nm:Landroid/app/NotificationManager;

.field private final screenFilter:Landroid/content/IntentFilter;

.field private final visible:Z


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/BaseService;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "service"    # Lcom/github/shadowsocks/BaseService;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 18
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$service:Lcom/github/shadowsocks/BaseService;

    iput-boolean p3, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->visible:Z

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 19
    check-cast v1, Landroid/content/ContextWrapper;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->keyGuard:Landroid/app/KeyguardManager;

    .line 35
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    move-object v1, p1

    .line 37
    check-cast v1, Landroid/content/Context;

    const v3, 0x7f10003c

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    move-object v1, p1

    .line 38
    check-cast v1, Landroid/content/Context;

    const v3, 0x7f09005e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    move-object v1, p1

    .line 40
    check-cast v1, Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    move-object v2, p1

    check-cast v2, Landroid/content/Context;

    const-class v5, Lcom/github/shadowsocks/Shadowsocks;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    const/high16 v2, 0x20000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 40
    invoke-static {v1, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 42
    const v2, 0x7f020086

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 35
    iput-object v1, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$builder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 43
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$builder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f02007e

    move-object v1, p1

    .line 44
    check-cast v1, Landroid/content/Context;

    const v4, 0x7f0900bf

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/github/shadowsocks/utils/Action$;->MODULE$:Lcom/github/shadowsocks/utils/Action$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/Action$;->CLOSE()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v5, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 43
    invoke-virtual {v2, v3, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 45
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/ProfileManager;->getAllProfiles()Lscala/Option;

    move-result-object v1

    .line 46
    instance-of v2, v1, Lscala/Some;

    if-eqz v2, :cond_2

    check-cast v1, Lscala/Some;

    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    .local v0, "profiles":Lscala/collection/immutable/List;
    invoke-virtual {v0}, Lscala/collection/immutable/List;->length()I

    move-result v1

    if-le v1, v8, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$builder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const v3, 0x7f020072

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const v4, 0x7f090095

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    .line 48
    check-cast v1, Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/github/shadowsocks/utils/Action$;->MODULE$:Lcom/github/shadowsocks/utils/Action$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/Action$;->QUICK_SWITCH()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 47
    invoke-virtual {v2, v3, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 52
    .end local v0    # "profiles":Lscala/collection/immutable/List;
    :goto_0
    iput-boolean v8, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->isVisible:Z

    move-object v1, p1

    .line 53
    check-cast v1, Landroid/content/ContextWrapper;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 53
    :goto_1
    invoke-direct {p0, v1, v8}, Lcom/github/shadowsocks/ShadowsocksNotification;->update(Ljava/lang/String;Z)V

    .line 55
    new-instance v1, Lcom/github/shadowsocks/ShadowsocksNotification$$anonfun$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ShadowsocksNotification$$anonfun$1;-><init>(Lcom/github/shadowsocks/ShadowsocksNotification;)V

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/ShadowsocksNotification;->lockReceiver_$eq(Landroid/content/BroadcastReceiver;)V

    .line 56
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->screenFilter:Landroid/content/IntentFilter;

    .line 57
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->screenFilter()Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->screenFilter()Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    if-eqz p3, :cond_0

    sget-object v1, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Utils$;->isLollipopOrAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->screenFilter()Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "service":Lcom/github/shadowsocks/BaseService;
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->lockReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->screenFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 46
    .restart local v0    # "profiles":Lscala/collection/immutable/List;
    .restart local p1    # "service":Lcom/github/shadowsocks/BaseService;
    :cond_1
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 49
    .end local v0    # "profiles":Lscala/collection/immutable/List;
    :cond_2
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 54
    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    goto :goto_1
.end method

.method private callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 21
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->callback$lzycompute()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    goto :goto_0
.end method

.method private callback$lzycompute()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 21
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/shadowsocks/ShadowsocksNotification$$anon$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/ShadowsocksNotification$$anon$1;-><init>(Lcom/github/shadowsocks/ShadowsocksNotification;)V

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private callbackRegistered()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->callbackRegistered:Z

    return v0
.end method

.method private callbackRegistered_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->callbackRegistered:Z

    return-void
.end method

.method private com$github$shadowsocks$ShadowsocksNotification$$style$lzycompute()Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$builder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$style:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$style:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isVisible()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->isVisible:Z

    return v0
.end method

.method private isVisible_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->isVisible:Z

    return-void
.end method

.method private keyGuard()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->keyGuard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private lockReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->lockReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private lockReceiver_$eq(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "x$1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->lockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private nm()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 20
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->nm$lzycompute()Landroid/app/NotificationManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->nm:Landroid/app/NotificationManager;

    goto :goto_0
.end method

.method private nm$lzycompute()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$service()Lcom/github/shadowsocks/BaseService;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->nm:Landroid/app/NotificationManager;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->nm:Landroid/app/NotificationManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterCallback()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->callbackRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$service()Lcom/github/shadowsocks/BaseService;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->binder()Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

    move-result-object v0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;->unregisterCallback(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;)V

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/ShadowsocksNotification;->callbackRegistered_$eq(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method private update(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "forceShow"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 63
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$service()Lcom/github/shadowsocks/BaseService;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/shadowsocks/BaseService;->getState()I

    move-result v2

    sget-object v3, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/State$;->CONNECTED()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 64
    :cond_0
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    iget-boolean v2, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->visible:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Utils$;->isLollipopOrAbove()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/github/shadowsocks/ShadowsocksNotification;->setVisible(ZZ)V

    .line 66
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->unregisterCallback()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 63
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    iget-boolean v2, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->visible:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Utils$;->isLollipopOrAbove()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->keyGuard()Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_4

    move v1, v0

    :cond_4
    invoke-virtual {p0, v1, p2}, Lcom/github/shadowsocks/ShadowsocksNotification;->setVisible(ZZ)V

    .line 69
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$service()Lcom/github/shadowsocks/BaseService;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/shadowsocks/BaseService;->binder()Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

    move-result-object v1

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;->registerCallback(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;)V

    .line 70
    invoke-direct {p0, v0}, Lcom/github/shadowsocks/ShadowsocksNotification;->callbackRegistered_$eq(Z)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 71
    :cond_5
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0, p2}, Lcom/github/shadowsocks/ShadowsocksNotification;->setVisible(ZZ)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 63
    :cond_6
    new-instance v0, Lscala/MatchError;

    invoke-direct {v0, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private update$default$2()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public com$github$shadowsocks$ShadowsocksNotification$$builder()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$builder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object v0
.end method

.method public final com$github$shadowsocks$ShadowsocksNotification$$onReceive$body$1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->update$default$2()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/github/shadowsocks/ShadowsocksNotification;->update(Ljava/lang/String;Z)V

    return-void
.end method

.method public com$github$shadowsocks$ShadowsocksNotification$$service()Lcom/github/shadowsocks/BaseService;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$service:Lcom/github/shadowsocks/BaseService;

    return-object v0
.end method

.method public com$github$shadowsocks$ShadowsocksNotification$$style()Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .locals 1

    .prologue
    .line 51
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$style$lzycompute()Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$style:Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->lockReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$service()Lcom/github/shadowsocks/BaseService;

    move-result-object v0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->lockReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/ShadowsocksNotification;->lockReceiver_$eq(Landroid/content/BroadcastReceiver;)V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->unregisterCallback()V

    .line 93
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$service()Lcom/github/shadowsocks/BaseService;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0, v2}, Landroid/app/Service;->stopForeground(Z)V

    .line 94
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->nm()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public screenFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNotification;->screenFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public setVisible(ZZ)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "forceShow"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 80
    invoke-direct {p0, p1}, Lcom/github/shadowsocks/ShadowsocksNotification;->isVisible_$eq(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$builder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 82
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->show()V

    .line 79
    :cond_0
    :goto_1
    return-void

    .line 81
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 83
    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->show()V

    goto :goto_1
.end method

.method public show()V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$service()Lcom/github/shadowsocks/BaseService;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$builder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
