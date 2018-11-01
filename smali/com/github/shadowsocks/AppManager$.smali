.class public final Lcom/github/shadowsocks/AppManager$;
.super Ljava/lang/Object;
.source "AppManager.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/AppManager$;


# instance fields
.field private cachedApps:[Lcom/github/shadowsocks/AppManager$ProxiedApp;

.field private com$github$shadowsocks$AppManager$$instance:Lcom/github/shadowsocks/AppManager;

.field private receiverRegistered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/AppManager$;

    invoke-direct {v0}, Lcom/github/shadowsocks/AppManager$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/AppManager$;->MODULE$:Lcom/github/shadowsocks/AppManager$;

    return-void
.end method

.method private cachedApps()[Lcom/github/shadowsocks/AppManager$ProxiedApp;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$;->cachedApps:[Lcom/github/shadowsocks/AppManager$ProxiedApp;

    return-object v0
.end method

.method private cachedApps_$eq([Lcom/github/shadowsocks/AppManager$ProxiedApp;)V
    .locals 0
    .param p1, "x$1"    # [Lcom/github/shadowsocks/AppManager$ProxiedApp;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$;->cachedApps:[Lcom/github/shadowsocks/AppManager$ProxiedApp;

    return-void
.end method

.method private com$github$shadowsocks$AppManager$$instance()Lcom/github/shadowsocks/AppManager;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$;->com$github$shadowsocks$AppManager$$instance:Lcom/github/shadowsocks/AppManager;

    return-object v0
.end method

.method private receiverRegistered()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/github/shadowsocks/AppManager$;->receiverRegistered:Z

    return v0
.end method

.method private receiverRegistered_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/github/shadowsocks/AppManager$;->receiverRegistered:Z

    return-void
.end method


# virtual methods
.method public com$github$shadowsocks$AppManager$$getApps(Landroid/content/pm/PackageManager;)[Lcom/github/shadowsocks/AppManager$ProxiedApp;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$;->receiverRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 75
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/AppManager$$anonfun$2;

    invoke-direct {v2}, Lcom/github/shadowsocks/AppManager$$anonfun$2;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/AppManager$;->receiverRegistered_$eq(Z)V

    .line 84
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    monitor-enter p0

    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$;->cachedApps()[Lcom/github/shadowsocks/AppManager$ProxiedApp;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    const/16 v2, 0x1000

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/JavaConversions$;->asScalaBuffer(Ljava/util/List;)Lscala/collection/mutable/Buffer;

    move-result-object v1

    .line 86
    new-instance v2, Lcom/github/shadowsocks/AppManager$$anonfun$com$github$shadowsocks$AppManager$$getApps$1;

    invoke-direct {v2}, Lcom/github/shadowsocks/AppManager$$anonfun$com$github$shadowsocks$AppManager$$getApps$1;-><init>()V

    invoke-interface {v1, v2}, Lscala/collection/mutable/Buffer;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/TraversableLike;

    .line 87
    new-instance v2, Lcom/github/shadowsocks/AppManager$$anonfun$com$github$shadowsocks$AppManager$$getApps$2;

    invoke-direct {v2, p1}, Lcom/github/shadowsocks/AppManager$$anonfun$com$github$shadowsocks$AppManager$$getApps$2;-><init>(Landroid/content/pm/PackageManager;)V

    sget-object v3, Lscala/collection/mutable/Buffer$;->MODULE$:Lscala/collection/mutable/Buffer$;

    invoke-virtual {v3}, Lscala/collection/mutable/Buffer$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/collection/TraversableLike;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/TraversableOnce;

    .line 88
    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v3, Lcom/github/shadowsocks/AppManager$ProxiedApp;

    invoke-virtual {v2, v3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-interface {v1, v2}, Lscala/collection/TraversableOnce;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/github/shadowsocks/AppManager$ProxiedApp;

    .line 85
    invoke-direct {p0, v1}, Lcom/github/shadowsocks/AppManager$;->cachedApps_$eq([Lcom/github/shadowsocks/AppManager$ProxiedApp;)V

    .line 89
    :cond_1
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$;->cachedApps()[Lcom/github/shadowsocks/AppManager$ProxiedApp;

    move-result-object v1

    .line 84
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast v1, [Lcom/github/shadowsocks/AppManager$ProxiedApp;

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public com$github$shadowsocks$AppManager$$instance_$eq(Lcom/github/shadowsocks/AppManager;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/AppManager;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$;->com$github$shadowsocks$AppManager$$instance:Lcom/github/shadowsocks/AppManager;

    return-void
.end method

.method public final com$github$shadowsocks$AppManager$$onReceive$body$1(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 78
    :cond_0
    :goto_0
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/github/shadowsocks/AppManager$;->cachedApps_$eq([Lcom/github/shadowsocks/AppManager$ProxiedApp;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$;->com$github$shadowsocks$AppManager$$instance()Lcom/github/shadowsocks/AppManager;

    move-result-object v0

    .line 80
    .local v0, "instance":Lcom/github/shadowsocks/AppManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/github/shadowsocks/AppManager;->reloadApps()V

    .line 76
    .end local v0    # "instance":Lcom/github/shadowsocks/AppManager;
    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    :cond_3
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
