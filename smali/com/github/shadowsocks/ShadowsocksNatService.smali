.class public Lcom/github/shadowsocks/ShadowsocksNatService;
.super Landroid/app/Service;
.source "ShadowsocksNatService.scala"

# interfaces
.implements Lcom/github/shadowsocks/BaseService;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final CMD_IPTABLES_DNAT_ADD_SOCKS:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final binder:Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

.field private volatile bitmap$0:B

.field private final callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private callbacksCount:I

.field private china_dns_address:Ljava/lang/String;

.field private china_dns_port:I

.field private closeReceiverRegistered:Z

.field private final com$github$shadowsocks$BaseService$$closeReceiver:Landroid/content/BroadcastReceiver;

.field private volatile com$github$shadowsocks$BaseService$$state:I

.field private dns_address:Ljava/lang/String;

.field private dns_port:I

.field private final handler:Landroid/os/Handler;

.field private host_arg:Ljava/lang/String;

.field private final myUid:I

.field private notification:Lcom/github/shadowsocks/ShadowsocksNotification;

.field private pdnsdProcess:Lcom/github/shadowsocks/GuardedProcess;

.field private volatile profile:Lcom/github/shadowsocks/database/Profile;

.field private proxychains_enable:Z

.field private redsocksProcess:Lcom/github/shadowsocks/GuardedProcess;

.field private sslocalProcess:Lcom/github/shadowsocks/GuardedProcess;

.field private sstunnelProcess:Lcom/github/shadowsocks/GuardedProcess;

.field private su:Leu/chainfire/libsuperuser/Shell$Interactive;

.field private timer:Ljava/util/Timer;

.field private trafficMonitorThread:Lcom/github/shadowsocks/utils/TrafficMonitorThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->$init$(Lcom/github/shadowsocks/BaseService;)V

    .line 64
    const-string v0, "ShadowsocksNatService"

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->TAG:Ljava/lang/String;

    .line 66
    const-string v0, "iptables -t nat -A OUTPUT -p tcp -j DNAT --to-destination 127.0.0.1:8123"

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->CMD_IPTABLES_DNAT_ADD_SOCKS:Ljava/lang/String;

    .line 70
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->myUid:I

    .line 77
    iput-boolean v1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->proxychains_enable:Z

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->host_arg:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_address:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_port:I

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_address:Ljava/lang/String;

    .line 82
    iput v1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_port:I

    return-void
.end method

.method private handler$lzycompute()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->handler(Lcom/github/shadowsocks/BaseService;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->handler:Landroid/os/Handler;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->handler:Landroid/os/Handler;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notification()Lcom/github/shadowsocks/ShadowsocksNotification;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->notification:Lcom/github/shadowsocks/ShadowsocksNotification;

    return-object v0
.end method

.method private notification_$eq(Lcom/github/shadowsocks/ShadowsocksNotification;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/ShadowsocksNotification;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->notification:Lcom/github/shadowsocks/ShadowsocksNotification;

    return-void
.end method


# virtual methods
.method public CMD_IPTABLES_DNAT_ADD_SOCKS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->CMD_IPTABLES_DNAT_ADD_SOCKS:Ljava/lang/String;

    return-object v0
.end method

.method public TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public binder()Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->binder:Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

    return-object v0
.end method

.method public final callbacks()Landroid/os/RemoteCallbackList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public callbacksCount()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->callbacksCount:I

    return v0
.end method

.method public callbacksCount_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->callbacksCount:I

    return-void
.end method

.method public changeState(ILjava/lang/String;)V
    .locals 0
    .param p1, "s"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0, p1, p2}, Lcom/github/shadowsocks/BaseService$class;->changeState(Lcom/github/shadowsocks/BaseService;ILjava/lang/String;)V

    return-void
.end method

.method public changeState$default$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->changeState$default$2(Lcom/github/shadowsocks/BaseService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkProfile(Lcom/github/shadowsocks/database/Profile;)Z
    .locals 1
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/github/shadowsocks/BaseService$class;->checkProfile(Lcom/github/shadowsocks/BaseService;Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public china_dns_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_address:Ljava/lang/String;

    return-object v0
.end method

.method public china_dns_address_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_address:Ljava/lang/String;

    return-void
.end method

.method public china_dns_port()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_port:I

    return v0
.end method

.method public china_dns_port_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_port:I

    return-void
.end method

.method public closeReceiverRegistered()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->closeReceiverRegistered:Z

    return v0
.end method

.method public closeReceiverRegistered_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->closeReceiverRegistered:Z

    return-void
.end method

.method public com$github$shadowsocks$BaseService$$closeReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->com$github$shadowsocks$BaseService$$closeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public com$github$shadowsocks$BaseService$$state()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->com$github$shadowsocks$BaseService$$state:I

    return v0
.end method

.method public com$github$shadowsocks$BaseService$$state_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->com$github$shadowsocks$BaseService$$state:I

    return-void
.end method

.method public synthetic com$github$shadowsocks$BaseService$$super$onCreate()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public com$github$shadowsocks$BaseService$_setter_$binder_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->binder:Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

    return-void
.end method

.method public final com$github$shadowsocks$BaseService$_setter_$callbacks_$eq(Landroid/os/RemoteCallbackList;)V
    .locals 0
    .param p1, "x$1"    # Landroid/os/RemoteCallbackList;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->callbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public com$github$shadowsocks$BaseService$_setter_$com$github$shadowsocks$BaseService$$closeReceiver_$eq(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "x$1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->com$github$shadowsocks$BaseService$$closeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public final com$github$shadowsocks$ShadowsocksNatService$$onCommandResult$body$1(IILjava/util/List;Lcom/github/shadowsocks/database/Profile;)V
    .locals 2
    .param p1, "x$1"    # I
    .param p2, "exitCode"    # I
    .param p3, "x$2"    # Ljava/util/List;
    .param p4, "profile$1"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 346
    if-nez p2, :cond_0

    invoke-static {p0, p4}, Lcom/github/shadowsocks/BaseService$class;->startRunner(Lcom/github/shadowsocks/BaseService;Lcom/github/shadowsocks/database/Profile;)V

    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->su()Leu/chainfire/libsuperuser/Shell$Interactive;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->su()Leu/chainfire/libsuperuser/Shell$Interactive;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->close()V

    .line 349
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksNatService;->su_$eq(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 351
    :cond_1
    const/4 v0, 0x1

    const v1, 0x7f090079

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ShadowsocksNatService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/github/shadowsocks/BaseService$class;->stopRunner(Lcom/github/shadowsocks/BaseService;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public connect()V
    .locals 9

    .prologue
    const/16 v8, 0x35

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 355
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->connect(Lcom/github/shadowsocks/BaseService;)V

    .line 358
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->killProcesses()V

    .line 360
    new-instance v3, Ljava/io/File;

    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, "/proxychains.conf"

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 361
    invoke-virtual {p0, v7}, Lcom/github/shadowsocks/ShadowsocksNatService;->proxychains_enable_$eq(Z)V

    .line 369
    :goto_0
    :try_start_0
    sget-object v4, Lscala/util/Random$;->MODULE$:Lscala/util/Random$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->dns()Ljava/lang/String;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v5, v3}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v3

    invoke-interface {v3}, Lscala/collection/mutable/ArrayOps;->toList()Lscala/collection/immutable/List;

    move-result-object v3

    sget-object v5, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v5}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lscala/util/Random$;->shuffle(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/TraversableOnce;

    move-result-object v3

    check-cast v3, Lscala/collection/IterableLike;

    invoke-interface {v3}, Lscala/collection/IterableLike;->head()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 370
    .local v2, "dns":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_address_$eq(Ljava/lang/String;)V

    .line 371
    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_port_$eq(I)V

    .line 373
    sget-object v4, Lscala/util/Random$;->MODULE$:Lscala/util/Random$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->china_dns()Ljava/lang/String;

    move-result-object v3

    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v5, v3}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v3

    invoke-interface {v3}, Lscala/collection/mutable/ArrayOps;->toList()Lscala/collection/immutable/List;

    move-result-object v3

    sget-object v5, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v5}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lscala/util/Random$;->shuffle(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/TraversableOnce;

    move-result-object v3

    check-cast v3, Lscala/collection/IterableLike;

    invoke-interface {v3}, Lscala/collection/IterableLike;->head()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    .local v1, "china_dns":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_address_$eq(Ljava/lang/String;)V

    .line 375
    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_port_$eq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    .end local v1    # "china_dns":Ljava/lang/String;
    .end local v2    # "dns":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksNatService;->host_arg_$eq(Ljava/lang/String;)V

    .line 386
    sget-object v3, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/utils/Utils$;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/github/shadowsocks/utils/Utils$;->resolve(Ljava/lang/String;Z)Lscala/Option;

    move-result-object v3

    .line 387
    instance-of v4, v3, Lscala/Some;

    if-eqz v4, :cond_5

    check-cast v3, Lscala/Some;

    invoke-virtual {v3}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "a":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/github/shadowsocks/database/Profile;->host_$eq(Ljava/lang/String;)V

    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 391
    .end local v0    # "a":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->handleConnection()V

    .line 393
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/Route$;->ALL()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    .line 394
    :cond_1
    sget-object v3, Lcom/github/shadowsocks/job/AclSyncJob$;->MODULE$:Lcom/github/shadowsocks/job/AclSyncJob$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/job/AclSyncJob$;->schedule(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 396
    :goto_2
    sget-object v3, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/State$;->CONNECTED()I

    move-result v3

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->changeState$default$2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/github/shadowsocks/ShadowsocksNatService;->changeState(ILjava/lang/String;)V

    .line 398
    new-instance v3, Lcom/github/shadowsocks/ShadowsocksNotification;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v7}, Lcom/github/shadowsocks/ShadowsocksNotification;-><init>(Lcom/github/shadowsocks/BaseService;Ljava/lang/String;Z)V

    invoke-direct {p0, v3}, Lcom/github/shadowsocks/ShadowsocksNatService;->notification_$eq(Lcom/github/shadowsocks/ShadowsocksNotification;)V

    return-void

    .line 365
    :cond_2
    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/ShadowsocksNatService;->proxychains_enable_$eq(Z)V

    goto/16 :goto_0

    .line 377
    :catch_0
    move-exception v3

    .line 378
    const-string v3, "8.8.8.8"

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_address_$eq(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, v8}, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_port_$eq(I)V

    .line 381
    const-string v3, "223.5.5.5"

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_address_$eq(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0, v8}, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_port_$eq(I)V

    goto/16 :goto_1

    .line 393
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 388
    :cond_5
    sget-object v4, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v3, Lcom/github/shadowsocks/BaseService$NameNotResolvedException;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/BaseService$NameNotResolvedException;-><init>(Lcom/github/shadowsocks/BaseService;)V

    throw v3

    .line 386
    :cond_6
    new-instance v4, Lscala/MatchError;

    invoke-direct {v4, v3}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public dns_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_address:Ljava/lang/String;

    return-object v0
.end method

.method public dns_address_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_address:Ljava/lang/String;

    return-void
.end method

.method public dns_port()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_port:I

    return v0
.end method

.method public dns_port_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_port:I

    return-void
.end method

.method public getBlackList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->getBlackList(Lcom/github/shadowsocks/BaseService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->getState(Lcom/github/shadowsocks/BaseService;)I

    move-result v0

    return v0
.end method

.method public handleConnection()V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->startTunnel()V

    .line 244
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->udpdns()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->startDnsDaemon()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->startRedsocksDaemon()V

    .line 246
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->startShadowsocksDaemon()V

    .line 247
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->setupIptables()V

    return-void
.end method

.method public handler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->handler$lzycompute()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public host_arg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->host_arg:Ljava/lang/String;

    return-object v0
.end method

.method public host_arg_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->host_arg:Ljava/lang/String;

    return-void
.end method

.method public killProcesses()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->sslocalProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->sslocalProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 262
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ShadowsocksNatService;->sslocalProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->sstunnelProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->sstunnelProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 266
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ShadowsocksNatService;->sstunnelProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->redsocksProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->redsocksProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 270
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ShadowsocksNatService;->redsocksProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->pdnsdProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->pdnsdProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 274
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ShadowsocksNatService;->pdnsdProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 277
    :cond_3
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->su()Leu/chainfire/libsuperuser/Shell$Interactive;

    move-result-object v0

    const-string v1, "iptables -t nat -F OUTPUT"

    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/String;)V

    return-void
.end method

.method public myUid()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->myUid:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget-object v0, Lcom/github/shadowsocks/utils/Action$;->MODULE$:Lcom/github/shadowsocks/utils/Action$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Action$;->SERVICE()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 255
    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    return-object v0

    .line 252
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->binder()Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->onCreate(Lcom/github/shadowsocks/BaseService;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 62
    invoke-static {p0, p1, p2, p3}, Lcom/github/shadowsocks/BaseService$class;->onStartCommand(Lcom/github/shadowsocks/BaseService;Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public pdnsdProcess()Lcom/github/shadowsocks/GuardedProcess;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->pdnsdProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-object v0
.end method

.method public pdnsdProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/GuardedProcess;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->pdnsdProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-void
.end method

.method public profile()Lcom/github/shadowsocks/database/Profile;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->profile:Lcom/github/shadowsocks/database/Profile;

    return-object v0
.end method

.method public profile_$eq(Lcom/github/shadowsocks/database/Profile;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->profile:Lcom/github/shadowsocks/database/Profile;

    return-void
.end method

.method public proxychains_enable()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->proxychains_enable:Z

    return v0
.end method

.method public proxychains_enable_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->proxychains_enable:Z

    return-void
.end method

.method public redsocksProcess()Lcom/github/shadowsocks/GuardedProcess;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->redsocksProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-object v0
.end method

.method public redsocksProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/GuardedProcess;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->redsocksProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-void
.end method

.method public setupIptables()V
    .locals 21

    .prologue
    .line 281
    new-instance v4, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v4}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    .line 282
    .local v4, "init_sb":Lscala/collection/mutable/ArrayBuffer;
    new-instance v5, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v5}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    .line 284
    .local v5, "http_sb":Lscala/collection/mutable/ArrayBuffer;
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "ulimit -n 4096"

    aput-object v18, v2, v17

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v4, v2}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 285
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "iptables -t nat -F OUTPUT"

    aput-object v18, v2, v17

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v4, v2}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 287
    const-string v6, "iptables -t nat -A OUTPUT -p tcp -d 0.0.0.0 -j RETURN"

    .line 288
    .local v6, "cmd_bypass":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-nez v2, :cond_3

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->proxychains_enable()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 290
    new-instance v11, Ljava/io/RandomAccessFile;

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v3, "/proxychains.conf"

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "r"

    invoke-direct {v11, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v11, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    .line 292
    .local v12, "len":J
    const-string v10, ""

    .line 293
    .local v10, "lastLine":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_1

    .line 294
    const-wide/16 v2, 0x1

    sub-long v14, v12, v2

    .line 295
    .local v14, "pos":J
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_1

    .line 296
    const-wide/16 v2, 0x1

    sub-long/2addr v14, v2

    .line 297
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 298
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 303
    .end local v14    # "pos":J
    :cond_1
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 305
    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v3, v10}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lscala/collection/immutable/StringOps;->split(C)[Ljava/lang/String;

    move-result-object v16

    .line 306
    .local v16, "str_array":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v9, v16, v2

    .line 308
    .local v9, "host":Ljava/lang/String;
    sget-object v2, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v2, v9}, Lcom/github/shadowsocks/utils/Utils$;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    const/4 v3, 0x1

    invoke-virtual {v2, v9, v3}, Lcom/github/shadowsocks/utils/Utils$;->resolve(Ljava/lang/String;Z)Lscala/Option;

    move-result-object v2

    .line 309
    instance-of v3, v2, Lscala/Some;

    if-eqz v3, :cond_7

    check-cast v2, Lscala/Some;

    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "a":Ljava/lang/String;
    move-object v9, v8

    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 313
    .end local v8    # "a":Ljava/lang/String;
    :cond_2
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "-p tcp -d 0.0.0.0"

    new-instance v19, Lscala/collection/mutable/StringBuilder;

    invoke-direct/range {v19 .. v19}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v20, "-d "

    invoke-virtual/range {v19 .. v20}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v4, v2}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 318
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "lastLine":Ljava/lang/String;
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .end local v12    # "len":J
    .end local v16    # "str_array":[Ljava/lang/String;
    :cond_3
    :goto_1
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "-p tcp -d 0.0.0.0"

    const-string v19, "-d 127.0.0.1"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v4, v2}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 319
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "-p tcp -d 0.0.0.0"

    new-instance v19, Lscala/collection/mutable/StringBuilder;

    invoke-direct/range {v19 .. v19}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v20, "-m owner --uid-owner "

    invoke-virtual/range {v19 .. v20}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->myUid()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v4, v2}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 320
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "-d 0.0.0.0"

    const-string v19, "--dport 53"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v4, v2}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 322
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v17, 0x0

    .line 323
    new-instance v18, Lscala/collection/mutable/StringBuilder;

    invoke-direct/range {v18 .. v18}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 322
    const-string v19, "iptables -t nat -A OUTPUT -p udp --dport 53 -j DNAT --to-destination 127.0.0.1:"

    invoke-virtual/range {v18 .. v19}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v18

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v19

    add-int/lit8 v19, v19, 0x35

    invoke-static/range {v19 .. v19}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    check-cast v2, [Ljava/lang/Object;

    .line 322
    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v4, v2}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->proxyApps()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->bypass()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 326
    :cond_4
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->CMD_IPTABLES_DNAT_ADD_SOCKS()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v5, v2}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 328
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->proxyApps()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 329
    sget-object v2, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/JavaConversions$;->asScalaBuffer(Ljava/util/List;)Lscala/collection/mutable/Buffer;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$2;-><init>(Lcom/github/shadowsocks/ShadowsocksNatService;)V

    sget-object v17, Lscala/collection/mutable/Buffer$;->MODULE$:Lscala/collection/mutable/Buffer$;

    invoke-virtual/range {v17 .. v17}, Lscala/collection/mutable/Buffer$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v0}, Lscala/collection/mutable/Buffer;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/TraversableOnce;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v3}, Lscala/Predef$;->$conforms()Lscala/Predef$$less$colon$less;

    move-result-object v3

    invoke-interface {v2, v3}, Lscala/collection/TraversableOnce;->toMap(Lscala/Predef$$less$colon$less;)Lscala/collection/immutable/Map;

    move-result-object v7

    .line 330
    .local v7, "uidMap":Lscala/collection/immutable/Map;
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v17, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/github/shadowsocks/database/Profile;->individual()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lscala/collection/immutable/StringOps;->split(C)[Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v17

    new-instance v2, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$setupIptables$1;-><init>(Lcom/github/shadowsocks/ShadowsocksNatService;Lscala/collection/mutable/ArrayBuffer;Lscala/collection/mutable/ArrayBuffer;Ljava/lang/String;Lscala/collection/immutable/Map;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 341
    .end local v7    # "uidMap":Lscala/collection/immutable/Map;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->su()Leu/chainfire/libsuperuser/Shell$Interactive;

    move-result-object v3

    invoke-virtual {v4, v5}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/mutable/Buffer;

    move-result-object v2

    sget-object v17, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v18, Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lscala/collection/mutable/Buffer;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand([Ljava/lang/String;)V

    return-void

    .line 310
    .restart local v9    # "host":Ljava/lang/String;
    .restart local v10    # "lastLine":Ljava/lang/String;
    .restart local v11    # "raf":Ljava/io/RandomAccessFile;
    .restart local v12    # "len":J
    .restart local v16    # "str_array":[Ljava/lang/String;
    :cond_7
    sget-object v3, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v2, Lcom/github/shadowsocks/BaseService$NameNotResolvedException;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/github/shadowsocks/BaseService$NameNotResolvedException;-><init>(Lcom/github/shadowsocks/BaseService;)V

    throw v2

    .line 308
    :cond_8
    new-instance v3, Lscala/MatchError;

    invoke-direct {v3, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 315
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "lastLine":Ljava/lang/String;
    .end local v11    # "raf":Ljava/io/RandomAccessFile;
    .end local v12    # "len":J
    .end local v16    # "str_array":[Ljava/lang/String;
    :cond_9
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "-p tcp -d 0.0.0.0"

    new-instance v19, Lscala/collection/mutable/StringBuilder;

    invoke-direct/range {v19 .. v19}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v20, "-d "

    invoke-virtual/range {v19 .. v20}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v2, v17

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v4, v2}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    goto/16 :goto_1
.end method

.method public sslocalProcess()Lcom/github/shadowsocks/GuardedProcess;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->sslocalProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-object v0
.end method

.method public sslocalProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/GuardedProcess;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->sslocalProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-void
.end method

.method public sstunnelProcess()Lcom/github/shadowsocks/GuardedProcess;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->sstunnelProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-object v0
.end method

.method public sstunnelProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/GuardedProcess;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->sstunnelProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-void
.end method

.method public startDnsDaemon()V
    .locals 15

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->ipv6()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v5, "224.0.0.0/3"

    .line 161
    .local v5, "reject":Ljava/lang/String;
    :goto_0
    const-string v9, ""

    invoke-static {v9}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v1

    .line 163
    .local v1, "china_dns_settings":Lscala/runtime/ObjectRef;
    const/4 v9, 0x0

    invoke-static {v9}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v6

    .line 165
    .local v6, "remote_dns":Lscala/runtime/BooleanRef;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v10}, Lcom/github/shadowsocks/utils/Route$;->ACL()Ljava/lang/String;

    move-result-object v10

    if-nez v9, :cond_8

    if-eqz v10, :cond_9

    .line 175
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v10

    .line 176
    sget-object v9, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/utils/Route$;->BYPASS_CHN()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_a

    if-eqz v10, :cond_b

    :cond_1
    sget-object v9, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/utils/Route$;->BYPASS_LAN_CHN()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_c

    if-eqz v10, :cond_d

    :cond_2
    sget-object v9, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/utils/Route$;->GFWLIST()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_e

    if-eqz v10, :cond_f

    :cond_3
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_10

    .line 177
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getBlackList()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "black_list":Ljava/lang/String;
    :goto_3
    sget-object v10, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->china_dns()Ljava/lang/String;

    move-result-object v9

    const-string v11, ","

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v10, v9}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v9

    new-instance v10, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$2;

    invoke-direct {v10, p0, v5, v1, v0}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$2;-><init>(Lcom/github/shadowsocks/ShadowsocksNatService;Ljava/lang/String;Lscala/runtime/ObjectRef;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 196
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v10

    .line 197
    sget-object v9, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/utils/Route$;->BYPASS_CHN()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_15

    if-eqz v10, :cond_16

    :cond_4
    sget-object v9, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/utils/Route$;->BYPASS_LAN_CHN()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_17

    if-eqz v10, :cond_18

    :cond_5
    sget-object v9, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/utils/Route$;->GFWLIST()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_19

    if-eqz v10, :cond_1a

    :cond_6
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_1b

    .line 198
    new-instance v10, Lscala/collection/immutable/StringOps;

    sget-object v9, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v11, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_DIRECT()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v9, 0x7

    new-array v13, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v14, ""

    aput-object v14, v13, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v14, v13, v9

    const/4 v9, 0x2

    .line 199
    const-string v14, "127.0.0.1"

    aput-object v14, v13, v9

    .line 198
    const/4 v9, 0x3

    .line 199
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v14

    add-int/lit8 v14, v14, 0x35

    invoke-static {v14}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    .line 198
    const/4 v14, 0x4

    .line 199
    iget-object v9, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    aput-object v9, v13, v14

    .line 198
    const/4 v9, 0x5

    .line 199
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v14

    add-int/lit8 v14, v14, 0x3f

    invoke-static {v14}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    .line 198
    const/4 v9, 0x6

    .line 199
    aput-object v5, v13, v9

    .line 198
    invoke-virtual {v12, v13}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "conf":Ljava/lang/String;
    :goto_5
    sget-object v9, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v10, Ljava/io/File;

    new-instance v11, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v11}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    const-string v12, "/pdnsd-nat.conf"

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$3;

    invoke-direct {v11, p0, v3}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$3;-><init>(Lcom/github/shadowsocks/ShadowsocksNatService;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v11}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 223
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v11, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v11}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    const-string v12, "/pdnsd"

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "-c"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    new-instance v11, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v11}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    const-string v12, "/pdnsd-nat.conf"

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    check-cast v9, [Ljava/lang/Object;

    move-object v2, v9

    check-cast v2, [Ljava/lang/String;

    .line 227
    .local v2, "cmd":[Ljava/lang/String;
    new-instance v4, Lcom/github/shadowsocks/GuardedProcess;

    sget-object v9, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast v2, [Ljava/lang/Object;

    .end local v2    # "cmd":[Ljava/lang/String;
    invoke-virtual {v9, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/github/shadowsocks/GuardedProcess;-><init>(Lscala/collection/Seq;)V

    .local v4, "qual$3":Lcom/github/shadowsocks/GuardedProcess;
    invoke-virtual {v4}, Lcom/github/shadowsocks/GuardedProcess;->start$default$1()Lscala/Function0;

    move-result-object v8

    .local v8, "x$5":Lscala/Function0;
    invoke-virtual {v4, v8}, Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/github/shadowsocks/ShadowsocksNatService;->pdnsdProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    return-void

    .line 159
    .end local v0    # "black_list":Ljava/lang/String;
    .end local v1    # "china_dns_settings":Lscala/runtime/ObjectRef;
    .end local v3    # "conf":Ljava/lang/String;
    .end local v4    # "qual$3":Lcom/github/shadowsocks/GuardedProcess;
    .end local v5    # "reject":Ljava/lang/String;
    .end local v6    # "remote_dns":Lscala/runtime/BooleanRef;
    .end local v8    # "x$5":Lscala/Function0;
    :cond_7
    const-string v5, "224.0.0.0/3, ::/0"

    goto/16 :goto_0

    .line 165
    .restart local v1    # "china_dns_settings":Lscala/runtime/ObjectRef;
    .restart local v5    # "reject":Ljava/lang/String;
    .restart local v6    # "remote_dns":Lscala/runtime/BooleanRef;
    :cond_8
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 167
    :cond_9
    sget-object v9, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    new-instance v10, Ljava/io/File;

    new-instance v11, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v11}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    const/16 v12, 0x2f

    invoke-static {v12}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    const-string v12, ".acl"

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v11, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v11}, Lscala/io/Codec$;->fallbackSystemCodec()Lscala/io/Codec;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lscala/io/Source$;->fromFile(Ljava/io/File;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object v9

    invoke-virtual {v9}, Lscala/io/BufferedSource;->getLines()Lscala/collection/Iterator;

    move-result-object v7

    .line 168
    .local v7, "total_lines":Lscala/collection/Iterator;
    new-instance v9, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$1;

    invoke-direct {v9, p0, v6}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startDnsDaemon$1;-><init>(Lcom/github/shadowsocks/ShadowsocksNatService;Lscala/runtime/BooleanRef;)V

    invoke-interface {v7, v9}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    goto/16 :goto_1

    .line 176
    .end local v7    # "total_lines":Lscala/collection/Iterator;
    :cond_a
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_b
    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_d
    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_f
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 179
    :cond_10
    sget-object v9, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/utils/Route$;->ACL()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_12

    if-eqz v10, :cond_13

    .line 187
    :cond_11
    const-string v0, ""

    goto/16 :goto_3

    .line 179
    :cond_12
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 180
    :cond_13
    iget-boolean v9, v6, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v9, :cond_14

    .line 181
    const-string v9, ""

    :goto_6
    move-object v0, v9

    .line 180
    goto/16 :goto_3

    .line 183
    :cond_14
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getBlackList()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    .line 197
    .restart local v0    # "black_list":Ljava/lang/String;
    :cond_15
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_16
    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_18
    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_19
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_1a
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 201
    :cond_1b
    sget-object v9, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/utils/Route$;->CHINALIST()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1e

    if-eqz v10, :cond_1f

    .line 205
    :cond_1c
    sget-object v9, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/utils/Route$;->ACL()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_20

    if-eqz v10, :cond_21

    .line 215
    :cond_1d
    new-instance v9, Lscala/collection/immutable/StringOps;

    sget-object v10, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v11, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_LOCAL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v11, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, ""

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 216
    const-string v14, "127.0.0.1"

    aput-object v14, v12, v13

    .line 215
    const/4 v13, 0x3

    .line 216
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v14

    add-int/lit8 v14, v14, 0x35

    invoke-static {v14}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 215
    const/4 v13, 0x4

    .line 216
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v14

    add-int/lit8 v14, v14, 0x3f

    invoke-static {v14}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 215
    const/4 v13, 0x5

    .line 216
    aput-object v5, v12, v13

    .line 215
    invoke-virtual {v11, v12}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 201
    :cond_1e
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 202
    :cond_1f
    new-instance v10, Lscala/collection/immutable/StringOps;

    sget-object v9, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v11, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_DIRECT()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v9, 0x7

    new-array v13, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v14, ""

    aput-object v14, v13, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v14, v13, v9

    const/4 v9, 0x2

    .line 203
    const-string v14, "127.0.0.1"

    aput-object v14, v13, v9

    .line 202
    const/4 v9, 0x3

    .line 203
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v14

    add-int/lit8 v14, v14, 0x35

    invoke-static {v14}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    .line 202
    const/4 v14, 0x4

    .line 203
    iget-object v9, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    aput-object v9, v13, v14

    .line 202
    const/4 v9, 0x5

    .line 203
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v14

    add-int/lit8 v14, v14, 0x3f

    invoke-static {v14}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    .line 202
    const/4 v9, 0x6

    .line 203
    aput-object v5, v13, v9

    .line 202
    invoke-virtual {v12, v13}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 205
    :cond_20
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 206
    :cond_21
    iget-boolean v9, v6, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v9, :cond_22

    .line 210
    new-instance v9, Lscala/collection/immutable/StringOps;

    sget-object v10, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v11, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_LOCAL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v11, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, ""

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    .line 211
    const-string v14, "127.0.0.1"

    aput-object v14, v12, v13

    .line 210
    const/4 v13, 0x3

    .line 211
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v14

    add-int/lit8 v14, v14, 0x35

    invoke-static {v14}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 210
    const/4 v13, 0x4

    .line 211
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v14

    add-int/lit8 v14, v14, 0x3f

    invoke-static {v14}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 210
    const/4 v13, 0x5

    .line 211
    aput-object v5, v12, v13

    .line 210
    invoke-virtual {v11, v12}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v9

    :goto_7
    move-object v3, v9

    .line 206
    goto/16 :goto_5

    .line 207
    :cond_22
    new-instance v10, Lscala/collection/immutable/StringOps;

    sget-object v9, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v11, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_DIRECT()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v9, 0x7

    new-array v13, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v14, ""

    aput-object v14, v13, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v14, v13, v9

    const/4 v9, 0x2

    .line 208
    const-string v14, "127.0.0.1"

    aput-object v14, v13, v9

    .line 207
    const/4 v9, 0x3

    .line 208
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v14

    add-int/lit8 v14, v14, 0x35

    invoke-static {v14}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    .line 207
    const/4 v14, 0x4

    .line 208
    iget-object v9, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    aput-object v9, v13, v14

    .line 207
    const/4 v9, 0x5

    .line 208
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v14

    add-int/lit8 v14, v14, 0x3f

    invoke-static {v14}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    .line 207
    const/4 v9, 0x6

    .line 208
    aput-object v5, v13, v9

    .line 207
    invoke-virtual {v12, v13}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v9

    goto :goto_7
.end method

.method public startRedsocksDaemon()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 231
    new-instance v4, Lscala/collection/immutable/StringOps;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v6, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/ConfigUtils$;->REDSOCKS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v8

    invoke-static {v8}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "conf":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    new-instance v5, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v5}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    const-string v6, "/redsocks"

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "-c"

    aput-object v5, v4, v10

    const/4 v5, 0x2

    new-instance v6, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v6}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    const-string v7, "/redsocks-nat.conf"

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    check-cast v4, [Ljava/lang/Object;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    .line 233
    .local v0, "cmd":[Ljava/lang/String;
    sget-object v4, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v5, Ljava/io/File;

    new-instance v6, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v6}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    const-string v7, "/redsocks-nat.conf"

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startRedsocksDaemon$1;

    invoke-direct {v6, p0, v1}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startRedsocksDaemon$1;-><init>(Lcom/github/shadowsocks/ShadowsocksNatService;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 238
    new-instance v2, Lcom/github/shadowsocks/GuardedProcess;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast v0, [Ljava/lang/Object;

    .end local v0    # "cmd":[Ljava/lang/String;
    invoke-virtual {v4, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/github/shadowsocks/GuardedProcess;-><init>(Lscala/collection/Seq;)V

    .local v2, "qual$4":Lcom/github/shadowsocks/GuardedProcess;
    invoke-virtual {v2}, Lcom/github/shadowsocks/GuardedProcess;->start$default$1()Lscala/Function0;

    move-result-object v3

    .local v3, "x$6":Lscala/Function0;
    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/github/shadowsocks/ShadowsocksNatService;->redsocksProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    return-void
.end method

.method public startRunner(Lcom/github/shadowsocks/database/Profile;)V
    .locals 2
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->su()Leu/chainfire/libsuperuser/Shell$Interactive;

    move-result-object v0

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Builder;

    invoke-direct {v0}, Leu/chainfire/libsuperuser/Shell$Builder;-><init>()V

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Builder;->useSU()Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->setWantSTDERR(Z)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->setWatchdogTimeout(I)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$1;

    invoke-direct {v1, p0, p1}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$1;-><init>(Lcom/github/shadowsocks/ShadowsocksNatService;Lcom/github/shadowsocks/database/Profile;)V

    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->open(Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;)Leu/chainfire/libsuperuser/Shell$Interactive;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksNatService;->su_$eq(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 344
    :cond_0
    return-void
.end method

.method public startShadowsocksDaemon()V
    .locals 11

    .prologue
    .line 87
    new-instance v4, Lscala/collection/immutable/StringOps;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    .line 86
    sget-object v6, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    .line 87
    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/ConfigUtils$;->SHADOWSOCKS()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->remotePort()I

    move-result v9

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v9

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 88
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 87
    const/4 v8, 0x4

    .line 88
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 87
    const/4 v8, 0x5

    .line 88
    const/16 v9, 0x258

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 87
    const/4 v8, 0x6

    .line 88
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->protocol()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 87
    const/4 v8, 0x7

    .line 88
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->obfs()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 87
    const/16 v8, 0x8

    .line 88
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->obfs_param()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 87
    const/16 v8, 0x9

    .line 88
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->protocol_param()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 87
    invoke-virtual {v6, v7}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "conf":Ljava/lang/String;
    sget-object v4, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v5, Ljava/io/File;

    new-instance v6, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v6}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    const-string v7, "/ss-local-nat.conf"

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startShadowsocksDaemon$1;

    invoke-direct {v6, p0, v1}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startShadowsocksDaemon$1;-><init>(Lcom/github/shadowsocks/ShadowsocksNatService;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 93
    sget-object v5, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    const-string v9, "/ss-local"

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "-x"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    .line 94
    const-string v8, "-b"

    aput-object v8, v4, v7

    .line 93
    const/4 v7, 0x3

    .line 94
    const-string v8, "127.0.0.1"

    aput-object v8, v4, v7

    .line 93
    const/4 v7, 0x4

    .line 95
    const-string v8, "-t"

    aput-object v8, v4, v7

    .line 93
    const/4 v7, 0x5

    .line 95
    const-string v8, "600"

    aput-object v8, v4, v7

    .line 93
    const/4 v7, 0x6

    .line 96
    const-string v8, "--host"

    aput-object v8, v4, v7

    .line 93
    const/4 v7, 0x7

    .line 96
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->host_arg()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 93
    const/16 v7, 0x8

    .line 97
    const-string v8, "-P"

    aput-object v8, v4, v7

    .line 93
    const/16 v7, 0x9

    .line 97
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v8, v4, v7

    .line 93
    const/16 v7, 0xa

    .line 98
    const-string v8, "-c"

    aput-object v8, v4, v7

    .line 93
    const/16 v7, 0xb

    .line 98
    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    const-string v9, "/ss-local-nat.conf"

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 93
    invoke-virtual {v6, v4}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v5, v4}, Lscala/collection/mutable/ArrayBuffer$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuffer;

    .line 100
    .local v0, "cmd":Lscala/collection/mutable/ArrayBuffer;
    sget-object v4, Lcom/github/shadowsocks/utils/TcpFastOpen$;->MODULE$:Lcom/github/shadowsocks/utils/TcpFastOpen$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/TcpFastOpen$;->sendEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "--fast-open"

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/utils/Route$;->ALL()Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    .line 103
    :cond_0
    const-string v4, "--acl"

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 104
    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, ".acl"

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 107
    :goto_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->proxychains_enable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "LD_PRELOAD="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    const-string v8, "/lib/libproxychains4.so"

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->prepend(Lscala/collection/Seq;)V

    .line 109
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "PROXYCHAINS_CONF_FILE="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    const-string v8, "/proxychains.conf"

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->prepend(Lscala/collection/Seq;)V

    .line 110
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "PROXYCHAINS_PROTECT_FD_PREFIX="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->prepend(Lscala/collection/Seq;)V

    .line 111
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "env"

    aput-object v7, v4, v6

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v5, v4}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->prepend(Lscala/collection/Seq;)V

    .line 115
    :cond_1
    new-instance v2, Lcom/github/shadowsocks/GuardedProcess;

    invoke-direct {v2, v0}, Lcom/github/shadowsocks/GuardedProcess;-><init>(Lscala/collection/Seq;)V

    .local v2, "qual$1":Lcom/github/shadowsocks/GuardedProcess;
    invoke-virtual {v2}, Lcom/github/shadowsocks/GuardedProcess;->start$default$1()Lscala/Function0;

    move-result-object v3

    .local v3, "x$3":Lscala/Function0;
    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/github/shadowsocks/ShadowsocksNatService;->sslocalProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    return-void

    .line 100
    .end local v2    # "qual$1":Lcom/github/shadowsocks/GuardedProcess;
    .end local v3    # "x$3":Lscala/Function0;
    :cond_2
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 102
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_1
.end method

.method public startTunnel()V
    .locals 12

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v5

    add-int/lit8 v2, v5, 0x3f

    .line 120
    .local v2, "localPort":I
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->udpdns()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v5

    add-int/lit8 v2, v5, 0x35

    .line 125
    :cond_0
    new-instance v5, Lscala/collection/immutable/StringOps;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    .line 124
    sget-object v7, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    .line 125
    invoke-virtual {v7}, Lcom/github/shadowsocks/utils/ConfigUtils$;->SHADOWSOCKS()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->remotePort()I

    move-result v10

    invoke-static {v10}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    .line 126
    sget-object v10, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 125
    const/4 v9, 0x4

    .line 126
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 125
    const/4 v9, 0x5

    .line 126
    const/16 v10, 0x258

    invoke-static {v10}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 125
    const/4 v9, 0x6

    .line 126
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->protocol()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 125
    const/4 v9, 0x7

    .line 126
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->obfs()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 125
    const/16 v9, 0x8

    .line 126
    sget-object v10, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/shadowsocks/database/Profile;->obfs_param()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 125
    const/16 v9, 0x9

    .line 126
    sget-object v10, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/shadowsocks/database/Profile;->protocol_param()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 125
    invoke-virtual {v7, v8}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "conf":Ljava/lang/String;
    sget-object v5, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v6, Ljava/io/File;

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    const-string v8, "/ss-tunnel-nat.conf"

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startTunnel$1;

    invoke-direct {v7, p0, v1}, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$startTunnel$1;-><init>(Lcom/github/shadowsocks/ShadowsocksNatService;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 130
    sget-object v6, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v5, 0xe

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v9}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v9

    const-string v10, "/ss-local"

    invoke-virtual {v9, v10}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    .line 131
    const-string v9, "-u"

    aput-object v9, v5, v8

    .line 130
    const/4 v8, 0x2

    .line 132
    const-string v9, "-t"

    aput-object v9, v5, v8

    .line 130
    const/4 v8, 0x3

    .line 132
    const-string v9, "60"

    aput-object v9, v5, v8

    .line 130
    const/4 v8, 0x4

    .line 133
    const-string v9, "--host"

    aput-object v9, v5, v8

    .line 130
    const/4 v8, 0x5

    .line 133
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->host_arg()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 130
    const/4 v8, 0x6

    .line 134
    const-string v9, "-b"

    aput-object v9, v5, v8

    .line 130
    const/4 v8, 0x7

    .line 134
    const-string v9, "127.0.0.1"

    aput-object v9, v5, v8

    .line 130
    const/16 v8, 0x8

    .line 135
    const-string v9, "-l"

    aput-object v9, v5, v8

    .line 130
    const/16 v8, 0x9

    .line 135
    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 130
    const/16 v8, 0xa

    .line 136
    const-string v9, "-P"

    aput-object v9, v5, v8

    .line 130
    const/16 v8, 0xb

    .line 136
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v9, v5, v8

    .line 130
    const/16 v8, 0xc

    .line 137
    const-string v9, "-c"

    aput-object v9, v5, v8

    .line 130
    const/16 v8, 0xd

    .line 137
    new-instance v9, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v9}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v9

    const-string v10, "/ss-tunnel-nat.conf"

    invoke-virtual {v9, v10}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    check-cast v5, [Ljava/lang/Object;

    .line 130
    invoke-virtual {v7, v5}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-virtual {v6, v5}, Lscala/collection/mutable/ArrayBuffer$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuffer;

    .line 139
    .local v0, "cmd":Lscala/collection/mutable/ArrayBuffer;
    const-string v5, "-L"

    invoke-virtual {v0, v5}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 140
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/Route$;->CHINALIST()Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_3

    if-eqz v6, :cond_4

    .line 143
    :cond_1
    new-instance v5, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v5}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_address()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->dns_port()I

    move-result v6

    invoke-static {v6}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->proxychains_enable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 146
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v9, "LD_PRELOAD="

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    const-string v9, "/lib/libproxychains4.so"

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v6, v5}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-virtual {v0, v5}, Lscala/collection/mutable/ArrayBuffer;->prepend(Lscala/collection/Seq;)V

    .line 147
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v9, "PROXYCHAINS_CONF_FILE="

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    const-string v9, "/proxychains.conf"

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v6, v5}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-virtual {v0, v5}, Lscala/collection/mutable/ArrayBuffer;->prepend(Lscala/collection/Seq;)V

    .line 148
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v9, "PROXYCHAINS_PROTECT_FD_PREFIX="

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v6, v5}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-virtual {v0, v5}, Lscala/collection/mutable/ArrayBuffer;->prepend(Lscala/collection/Seq;)V

    .line 149
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "env"

    aput-object v8, v5, v7

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v6, v5}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-virtual {v0, v5}, Lscala/collection/mutable/ArrayBuffer;->prepend(Lscala/collection/Seq;)V

    .line 154
    :cond_2
    new-instance v3, Lcom/github/shadowsocks/GuardedProcess;

    invoke-direct {v3, v0}, Lcom/github/shadowsocks/GuardedProcess;-><init>(Lscala/collection/Seq;)V

    .local v3, "qual$2":Lcom/github/shadowsocks/GuardedProcess;
    invoke-virtual {v3}, Lcom/github/shadowsocks/GuardedProcess;->start$default$1()Lscala/Function0;

    move-result-object v4

    .local v4, "x$4":Lscala/Function0;
    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/github/shadowsocks/ShadowsocksNatService;->sstunnelProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    return-void

    .line 140
    .end local v3    # "qual$2":Lcom/github/shadowsocks/GuardedProcess;
    .end local v4    # "x$4":Lscala/Function0;
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    :cond_4
    new-instance v5, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v5}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_address()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->china_dns_port()I

    move-result v6

    invoke-static {v6}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    goto/16 :goto_0
.end method

.method public stopRunner(ZLjava/lang/String;)V
    .locals 3
    .param p1, "stopService"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->notification()Lcom/github/shadowsocks/ShadowsocksNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->notification()Lcom/github/shadowsocks/ShadowsocksNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksNotification;->destroy()V

    .line 406
    :cond_0
    sget-object v0, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/State$;->STOPPING()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->changeState$default$2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/ShadowsocksNatService;->changeState(ILjava/lang/String;)V

    .line 408
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->killProcesses()V

    .line 413
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksNatService;->su()Leu/chainfire/libsuperuser/Shell$Interactive;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->close()V

    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksNatService;->su_$eq(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 416
    invoke-static {p0, p1, p2}, Lcom/github/shadowsocks/BaseService$class;->stopRunner(Lcom/github/shadowsocks/BaseService;ZLjava/lang/String;)V

    return-void
.end method

.method public stopRunner$default$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    return-object v0
.end method

.method public su()Leu/chainfire/libsuperuser/Shell$Interactive;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->su:Leu/chainfire/libsuperuser/Shell$Interactive;

    return-object v0
.end method

.method public su_$eq(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0
    .param p1, "x$1"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->su:Leu/chainfire/libsuperuser/Shell$Interactive;

    return-void
.end method

.method public timer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public timer_$eq(Ljava/util/Timer;)V
    .locals 0
    .param p1, "x$1"    # Ljava/util/Timer;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->timer:Ljava/util/Timer;

    return-void
.end method

.method public trafficMonitorThread()Lcom/github/shadowsocks/utils/TrafficMonitorThread;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->trafficMonitorThread:Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    return-object v0
.end method

.method public trafficMonitorThread_$eq(Lcom/github/shadowsocks/utils/TrafficMonitorThread;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService;->trafficMonitorThread:Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    return-void
.end method

.method public updateTrafficRate()V
    .locals 0

    .prologue
    .line 62
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->updateTrafficRate(Lcom/github/shadowsocks/BaseService;)V

    return-void
.end method

.method public updateTrafficTotal(JJ)V
    .locals 1
    .param p1, "tx"    # J
    .param p3, "rx"    # J

    .prologue
    .line 62
    invoke-static {p0, p1, p2, p3, p4}, Lcom/github/shadowsocks/BaseService$class;->updateTrafficTotal(Lcom/github/shadowsocks/BaseService;JJ)V

    return-void
.end method
