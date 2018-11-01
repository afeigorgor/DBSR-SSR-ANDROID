.class public Lcom/github/shadowsocks/ShadowsocksVpnService;
.super Landroid/net/VpnService;
.source "ShadowsocksVpnService.scala"

# interfaces
.implements Lcom/github/shadowsocks/BaseService;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final PRIVATE_VLAN:Ljava/lang/String;

.field private final PRIVATE_VLAN6:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final VPN_MTU:I

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

.field private conn:Landroid/os/ParcelFileDescriptor;

.field private dns_address:Ljava/lang/String;

.field private dns_port:I

.field private final handler:Landroid/os/Handler;

.field private host_arg:Ljava/lang/String;

.field private notification:Lcom/github/shadowsocks/ShadowsocksNotification;

.field private pdnsdProcess:Lcom/github/shadowsocks/GuardedProcess;

.field private volatile profile:Lcom/github/shadowsocks/database/Profile;

.field private final protectPath:Ljava/lang/String;

.field private proxychains_enable:Z

.field private sslocalProcess:Lcom/github/shadowsocks/GuardedProcess;

.field private sstunnelProcess:Lcom/github/shadowsocks/GuardedProcess;

.field private timer:Ljava/util/Timer;

.field private trafficMonitorThread:Lcom/github/shadowsocks/utils/TrafficMonitorThread;

.field private tun2socksProcess:Lcom/github/shadowsocks/GuardedProcess;

.field private vpnThread:Lcom/github/shadowsocks/ShadowsocksVpnThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/net/VpnService;-><init>()V

    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->$init$(Lcom/github/shadowsocks/BaseService;)V

    .line 62
    const-string v0, "ShadowsocksVpnService"

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->TAG:Ljava/lang/String;

    .line 63
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->VPN_MTU:I

    .line 64
    const-string v0, "26.26.26.%s"

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->PRIVATE_VLAN:Ljava/lang/String;

    .line 65
    const-string v0, "fdfe:dcba:9876::%s"

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->PRIVATE_VLAN6:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->proxychains_enable:Z

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->host_arg:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_address:Ljava/lang/String;

    .line 77
    iput v1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_port:I

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_address:Ljava/lang/String;

    .line 79
    iput v1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_port:I

    return-void
.end method

.method private handler$lzycompute()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->handler(Lcom/github/shadowsocks/BaseService;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->handler:Landroid/os/Handler;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->handler:Landroid/os/Handler;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private notification()Lcom/github/shadowsocks/ShadowsocksNotification;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->notification:Lcom/github/shadowsocks/ShadowsocksNotification;

    return-object v0
.end method

.method private notification_$eq(Lcom/github/shadowsocks/ShadowsocksNotification;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/ShadowsocksNotification;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->notification:Lcom/github/shadowsocks/ShadowsocksNotification;

    return-void
.end method

.method private protectPath$lzycompute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->protectPath(Lcom/github/shadowsocks/BaseService;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->protectPath:Ljava/lang/String;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->bitmap$0:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->protectPath:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public PRIVATE_VLAN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->PRIVATE_VLAN:Ljava/lang/String;

    return-object v0
.end method

.method public PRIVATE_VLAN6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->PRIVATE_VLAN6:Ljava/lang/String;

    return-object v0
.end method

.method public TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public VPN_MTU()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->VPN_MTU:I

    return v0
.end method

.method public binder()Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->binder:Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

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
    .line 61
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->callbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public callbacksCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->callbacksCount:I

    return v0
.end method

.method public callbacksCount_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->callbacksCount:I

    return-void
.end method

.method public changeState(ILjava/lang/String;)V
    .locals 0
    .param p1, "s"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/github/shadowsocks/BaseService$class;->changeState(Lcom/github/shadowsocks/BaseService;ILjava/lang/String;)V

    return-void
.end method

.method public changeState$default$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->changeState$default$2(Lcom/github/shadowsocks/BaseService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkProfile(Lcom/github/shadowsocks/database/Profile;)Z
    .locals 1
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/github/shadowsocks/BaseService$class;->checkProfile(Lcom/github/shadowsocks/BaseService;Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public china_dns_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_address:Ljava/lang/String;

    return-object v0
.end method

.method public china_dns_address_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_address:Ljava/lang/String;

    return-void
.end method

.method public china_dns_port()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_port:I

    return v0
.end method

.method public china_dns_port_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_port:I

    return-void
.end method

.method public closeReceiverRegistered()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->closeReceiverRegistered:Z

    return v0
.end method

.method public closeReceiverRegistered_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->closeReceiverRegistered:Z

    return-void
.end method

.method public com$github$shadowsocks$BaseService$$closeReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->com$github$shadowsocks$BaseService$$closeReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public com$github$shadowsocks$BaseService$$state()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->com$github$shadowsocks$BaseService$$state:I

    return v0
.end method

.method public com$github$shadowsocks$BaseService$$state_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->com$github$shadowsocks$BaseService$$state:I

    return-void
.end method

.method public synthetic com$github$shadowsocks$BaseService$$super$onCreate()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public com$github$shadowsocks$BaseService$_setter_$binder_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->binder:Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

    return-void
.end method

.method public final com$github$shadowsocks$BaseService$_setter_$callbacks_$eq(Landroid/os/RemoteCallbackList;)V
    .locals 0
    .param p1, "x$1"    # Landroid/os/RemoteCallbackList;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->callbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method public com$github$shadowsocks$BaseService$_setter_$com$github$shadowsocks$BaseService$$closeReceiver_$eq(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "x$1"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->com$github$shadowsocks$BaseService$$closeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public conn()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->conn:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public conn_$eq(Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p1, "x$1"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->conn:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public connect()V
    .locals 9

    .prologue
    const/16 v8, 0x35

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 155
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->connect(Lcom/github/shadowsocks/BaseService;)V

    .line 157
    new-instance v3, Ljava/io/File;

    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    .line 158
    invoke-virtual {p0, v7}, Lcom/github/shadowsocks/ShadowsocksVpnService;->proxychains_enable_$eq(Z)V

    .line 166
    :goto_0
    :try_start_0
    sget-object v4, Lscala/util/Random$;->MODULE$:Lscala/util/Random$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

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

    .line 167
    .local v2, "dns":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_address_$eq(Ljava/lang/String;)V

    .line 168
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

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_port_$eq(I)V

    .line 170
    sget-object v4, Lscala/util/Random$;->MODULE$:Lscala/util/Random$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

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

    .line 171
    .local v1, "china_dns":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_address_$eq(Ljava/lang/String;)V

    .line 172
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

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_port_$eq(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v1    # "china_dns":Ljava/lang/String;
    .end local v2    # "dns":Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/github/shadowsocks/ShadowsocksVpnThread;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;-><init>(Lcom/github/shadowsocks/ShadowsocksVpnService;)V

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService;->vpnThread_$eq(Lcom/github/shadowsocks/ShadowsocksVpnThread;)V

    .line 184
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->vpnThread()Lcom/github/shadowsocks/ShadowsocksVpnThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->start()V

    .line 187
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->killProcesses()V

    .line 190
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService;->host_arg_$eq(Ljava/lang/String;)V

    .line 191
    sget-object v3, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/utils/Utils$;->isNumeric(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7}, Lcom/github/shadowsocks/utils/Utils$;->resolve(Ljava/lang/String;Z)Lscala/Option;

    move-result-object v3

    .line 192
    instance-of v4, v3, Lscala/Some;

    if-eqz v4, :cond_5

    check-cast v3, Lscala/Some;

    invoke-virtual {v3}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/github/shadowsocks/database/Profile;->host_$eq(Ljava/lang/String;)V

    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 196
    .end local v0    # "addr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->handleConnection()V

    .line 197
    sget-object v3, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/State$;->CONNECTED()I

    move-result v3

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->changeState$default$2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/github/shadowsocks/ShadowsocksVpnService;->changeState(ILjava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/Route$;->ALL()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    .line 200
    :cond_1
    sget-object v3, Lcom/github/shadowsocks/job/AclSyncJob$;->MODULE$:Lcom/github/shadowsocks/job/AclSyncJob$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/job/AclSyncJob$;->schedule(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 202
    :goto_2
    new-instance v3, Lcom/github/shadowsocks/ShadowsocksNotification;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/github/shadowsocks/ShadowsocksNotification$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksNotification$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksNotification$;->$lessinit$greater$default$3()Z

    move-result v5

    invoke-direct {v3, p0, v4, v5}, Lcom/github/shadowsocks/ShadowsocksNotification;-><init>(Lcom/github/shadowsocks/BaseService;Ljava/lang/String;Z)V

    invoke-direct {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService;->notification_$eq(Lcom/github/shadowsocks/ShadowsocksNotification;)V

    return-void

    .line 162
    :cond_2
    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/ShadowsocksVpnService;->proxychains_enable_$eq(Z)V

    goto/16 :goto_0

    .line 174
    :catch_0
    move-exception v3

    .line 175
    const-string v3, "8.8.8.8"

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_address_$eq(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v8}, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_port_$eq(I)V

    .line 178
    const-string v3, "223.5.5.5"

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_address_$eq(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, v8}, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_port_$eq(I)V

    goto/16 :goto_1

    .line 199
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_4
    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 193
    :cond_5
    sget-object v4, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v3, Lcom/github/shadowsocks/BaseService$NameNotResolvedException;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/BaseService$NameNotResolvedException;-><init>(Lcom/github/shadowsocks/BaseService;)V

    throw v3

    .line 191
    :cond_6
    new-instance v4, Lscala/MatchError;

    invoke-direct {v4, v3}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public dns_address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_address:Ljava/lang/String;

    return-object v0
.end method

.method public dns_address_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_address:Ljava/lang/String;

    return-void
.end method

.method public dns_port()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_port:I

    return v0
.end method

.method public dns_port_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_port:I

    return-void
.end method

.method public getBlackList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->getBlackList(Lcom/github/shadowsocks/BaseService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->getState(Lcom/github/shadowsocks/BaseService;)I

    move-result v0

    return v0
.end method

.method public handleConnection()V
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->startVpn()I

    move-result v0

    .line 209
    .local v0, "fd":I
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->sendFd(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->startShadowsocksDaemon()V

    .line 213
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->udpdns()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->startShadowsocksUDPDaemon()V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->udpdns()Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->startDnsDaemon()V

    .line 219
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->startDnsTunnel()V

    .line 206
    :cond_1
    return-void

    .line 209
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "sendFd failed"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 61
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->handler$lzycompute()Landroid/os/Handler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public host_arg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->host_arg:Ljava/lang/String;

    return-object v0
.end method

.method public host_arg_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->host_arg:Ljava/lang/String;

    return-void
.end method

.method public killProcesses()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->sslocalProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->sslocalProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 124
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService;->sslocalProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->sstunnelProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->sstunnelProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 128
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService;->sstunnelProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->tun2socksProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->tun2socksProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 132
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService;->tun2socksProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->pdnsdProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 135
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->pdnsdProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 136
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService;->pdnsdProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 121
    :cond_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.VpnService"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-super {p0, p1}, Landroid/net/VpnService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v1

    .line 88
    :goto_0
    return-object v1

    .line 85
    :cond_0
    sget-object v1, Lcom/github/shadowsocks/utils/Action$;->MODULE$:Lcom/github/shadowsocks/utils/Action$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Action$;->SERVICE()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 88
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->binder()Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->onCreate(Lcom/github/shadowsocks/BaseService;)V

    return-void
.end method

.method public onRevoke()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->stopRunner$default$2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService;->stopRunner(ZLjava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3}, Lcom/github/shadowsocks/BaseService$class;->onStartCommand(Lcom/github/shadowsocks/BaseService;Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public pdnsdProcess()Lcom/github/shadowsocks/GuardedProcess;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->pdnsdProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-object v0
.end method

.method public pdnsdProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/GuardedProcess;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->pdnsdProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-void
.end method

.method public profile()Lcom/github/shadowsocks/database/Profile;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile:Lcom/github/shadowsocks/database/Profile;

    return-object v0
.end method

.method public profile_$eq(Lcom/github/shadowsocks/database/Profile;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile:Lcom/github/shadowsocks/database/Profile;

    return-void
.end method

.method public protectPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->protectPath$lzycompute()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->protectPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public proxychains_enable()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->proxychains_enable:Z

    return v0
.end method

.method public proxychains_enable_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->proxychains_enable:Z

    return-void
.end method

.method public sendFd(I)Z
    .locals 5
    .param p1, "fd"    # I

    .prologue
    const/4 v4, -0x1

    .line 500
    if-eq p1, v4, :cond_1

    .line 501
    const/4 v0, 0x1

    .line 502
    .local v0, "tries":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 503
    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 504
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, "/sock_path"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/github/shadowsocks/System;->sendfd(ILjava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 505
    const/4 v1, 0x1

    .line 510
    .end local v0    # "tries":I
    :goto_1
    return v1

    .line 507
    .restart local v0    # "tries":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    .end local v0    # "tries":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public sslocalProcess()Lcom/github/shadowsocks/GuardedProcess;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->sslocalProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-object v0
.end method

.method public sslocalProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/GuardedProcess;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->sslocalProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-void
.end method

.method public sstunnelProcess()Lcom/github/shadowsocks/GuardedProcess;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->sstunnelProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-object v0
.end method

.method public sstunnelProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/GuardedProcess;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->sstunnelProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-void
.end method

.method public startDnsDaemon()V
    .locals 17

    .prologue
    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/shadowsocks/database/Profile;->ipv6()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v7, "224.0.0.0/3"

    .line 346
    .local v7, "reject":Ljava/lang/String;
    :goto_0
    new-instance v11, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v11}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v12, "protect = \""

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->protectPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    const-string v12, "\";"

    invoke-virtual {v11, v12}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "protect":Ljava/lang/String;
    const-string v11, ""

    invoke-static {v11}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v2

    .line 350
    .local v2, "china_dns_settings":Lscala/runtime/ObjectRef;
    const/4 v11, 0x0

    invoke-static {v11}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v8

    .line 352
    .local v8, "remote_dns":Lscala/runtime/BooleanRef;
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v12}, Lcom/github/shadowsocks/utils/Route$;->ACL()Ljava/lang/String;

    move-result-object v12

    if-nez v11, :cond_8

    if-eqz v12, :cond_9

    .line 362
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v12

    .line 363
    sget-object v11, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/Route$;->BYPASS_CHN()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_a

    if-eqz v12, :cond_b

    :cond_1
    sget-object v11, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/Route$;->BYPASS_LAN_CHN()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_c

    if-eqz v12, :cond_d

    :cond_2
    sget-object v11, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/Route$;->GFWLIST()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_e

    if-eqz v12, :cond_f

    :cond_3
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_10

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getBlackList()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "black_list":Ljava/lang/String;
    :goto_3
    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/shadowsocks/database/Profile;->china_dns()Ljava/lang/String;

    move-result-object v11

    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v12, v11}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v11

    new-instance v12, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsDaemon$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v7, v2, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsDaemon$2;-><init>(Lcom/github/shadowsocks/ShadowsocksVpnService;Ljava/lang/String;Lscala/runtime/ObjectRef;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 383
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v12

    .line 384
    sget-object v11, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/Route$;->BYPASS_CHN()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_15

    if-eqz v12, :cond_16

    :cond_4
    sget-object v11, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/Route$;->BYPASS_LAN_CHN()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_17

    if-eqz v12, :cond_18

    :cond_5
    sget-object v11, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/Route$;->GFWLIST()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_19

    if-eqz v12, :cond_1a

    :cond_6
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_1b

    .line 385
    new-instance v12, Lscala/collection/immutable/StringOps;

    sget-object v11, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v13, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v13}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_DIRECT()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v14, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v11, 0x7

    new-array v15, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v15, v11

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, v11

    const/4 v11, 0x2

    .line 386
    const-string v16, "0.0.0.0"

    aput-object v16, v15, v11

    .line 385
    const/4 v11, 0x3

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v16

    add-int/lit8 v16, v16, 0x35

    invoke-static/range {v16 .. v16}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    .line 385
    const/16 v16, 0x4

    .line 386
    iget-object v11, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    aput-object v11, v15, v16

    .line 385
    const/4 v11, 0x5

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v16

    add-int/lit8 v16, v16, 0x3f

    invoke-static/range {v16 .. v16}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    .line 385
    const/4 v11, 0x6

    .line 386
    aput-object v7, v15, v11

    .line 385
    invoke-virtual {v14, v15}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v11

    invoke-virtual {v12, v13, v11}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, "conf":Ljava/lang/String;
    :goto_5
    sget-object v11, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v12, Ljava/io/File;

    new-instance v13, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v13}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v13

    const-string v14, "/pdnsd-vpn.conf"

    invoke-virtual {v13, v14}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsDaemon$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsDaemon$3;-><init>(Lcom/github/shadowsocks/ShadowsocksVpnService;Ljava/lang/String;)V

    invoke-virtual {v11, v12, v13}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 410
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v13}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v13

    const-string v14, "/pdnsd"

    invoke-virtual {v13, v14}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "-c"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    new-instance v13, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v13}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v13

    const-string v14, "/pdnsd-vpn.conf"

    invoke-virtual {v13, v14}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    check-cast v11, [Ljava/lang/Object;

    move-object v3, v11

    check-cast v3, [Ljava/lang/String;

    .line 414
    .local v3, "cmd":[Ljava/lang/String;
    new-instance v6, Lcom/github/shadowsocks/GuardedProcess;

    sget-object v11, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "cmd":[Ljava/lang/String;
    invoke-virtual {v11, v3}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/github/shadowsocks/GuardedProcess;-><init>(Lscala/collection/Seq;)V

    .local v6, "qual$4":Lcom/github/shadowsocks/GuardedProcess;
    invoke-virtual {v6}, Lcom/github/shadowsocks/GuardedProcess;->start$default$1()Lscala/Function0;

    move-result-object v10

    .local v10, "x$4":Lscala/Function0;
    invoke-virtual {v6, v10}, Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/github/shadowsocks/ShadowsocksVpnService;->pdnsdProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    return-void

    .line 345
    .end local v1    # "black_list":Ljava/lang/String;
    .end local v2    # "china_dns_settings":Lscala/runtime/ObjectRef;
    .end local v4    # "conf":Ljava/lang/String;
    .end local v5    # "protect":Ljava/lang/String;
    .end local v6    # "qual$4":Lcom/github/shadowsocks/GuardedProcess;
    .end local v7    # "reject":Ljava/lang/String;
    .end local v8    # "remote_dns":Lscala/runtime/BooleanRef;
    .end local v10    # "x$4":Lscala/Function0;
    :cond_7
    const-string v7, "224.0.0.0/3, ::/0"

    goto/16 :goto_0

    .line 352
    .restart local v2    # "china_dns_settings":Lscala/runtime/ObjectRef;
    .restart local v5    # "protect":Ljava/lang/String;
    .restart local v7    # "reject":Ljava/lang/String;
    .restart local v8    # "remote_dns":Lscala/runtime/BooleanRef;
    :cond_8
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 354
    :cond_9
    sget-object v11, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    new-instance v12, Ljava/io/File;

    new-instance v13, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v13}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v13

    const/16 v14, 0x2f

    invoke-static {v14}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v14

    invoke-virtual {v13, v14}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v13

    const-string v14, ".acl"

    invoke-virtual {v13, v14}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v13, Lscala/io/Codec$;->MODULE$:Lscala/io/Codec$;

    invoke-virtual {v13}, Lscala/io/Codec$;->fallbackSystemCodec()Lscala/io/Codec;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lscala/io/Source$;->fromFile(Ljava/io/File;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object v11

    invoke-virtual {v11}, Lscala/io/BufferedSource;->getLines()Lscala/collection/Iterator;

    move-result-object v9

    .line 355
    .local v9, "total_lines":Lscala/collection/Iterator;
    new-instance v11, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsDaemon$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v8}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsDaemon$1;-><init>(Lcom/github/shadowsocks/ShadowsocksVpnService;Lscala/runtime/BooleanRef;)V

    invoke-interface {v9, v11}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    goto/16 :goto_1

    .line 363
    .end local v9    # "total_lines":Lscala/collection/Iterator;
    :cond_a
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_d
    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_f
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 366
    :cond_10
    sget-object v11, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/Route$;->ACL()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_12

    if-eqz v12, :cond_13

    .line 374
    :cond_11
    const-string v1, ""

    goto/16 :goto_3

    .line 366
    :cond_12
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 367
    :cond_13
    iget-boolean v11, v8, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v11, :cond_14

    .line 368
    const-string v11, ""

    :goto_6
    move-object v1, v11

    .line 367
    goto/16 :goto_3

    .line 370
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getBlackList()Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 384
    .restart local v1    # "black_list":Ljava/lang/String;
    :cond_15
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_16
    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_18
    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_19
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_1a
    const/4 v11, 0x1

    goto/16 :goto_4

    .line 388
    :cond_1b
    sget-object v11, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/Route$;->CHINALIST()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1e

    if-eqz v12, :cond_1f

    .line 392
    :cond_1c
    sget-object v11, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/utils/Route$;->ACL()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_20

    if-eqz v12, :cond_21

    .line 402
    :cond_1d
    new-instance v11, Lscala/collection/immutable/StringOps;

    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v13, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v13}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_LOCAL()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v13, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 403
    const-string v16, "0.0.0.0"

    aput-object v16, v14, v15

    .line 402
    const/4 v15, 0x3

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v16

    add-int/lit8 v16, v16, 0x35

    invoke-static/range {v16 .. v16}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 402
    const/4 v15, 0x4

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v16

    add-int/lit8 v16, v16, 0x3f

    invoke-static/range {v16 .. v16}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 402
    const/4 v15, 0x5

    .line 403
    aput-object v7, v14, v15

    .line 402
    invoke-virtual {v13, v14}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 388
    :cond_1e
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    .line 389
    :cond_1f
    new-instance v12, Lscala/collection/immutable/StringOps;

    sget-object v11, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v13, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v13}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_DIRECT()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v14, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v11, 0x7

    new-array v15, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v15, v11

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, v11

    const/4 v11, 0x2

    .line 390
    const-string v16, "0.0.0.0"

    aput-object v16, v15, v11

    .line 389
    const/4 v11, 0x3

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v16

    add-int/lit8 v16, v16, 0x35

    invoke-static/range {v16 .. v16}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    .line 389
    const/16 v16, 0x4

    .line 390
    iget-object v11, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    aput-object v11, v15, v16

    .line 389
    const/4 v11, 0x5

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v16

    add-int/lit8 v16, v16, 0x3f

    invoke-static/range {v16 .. v16}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    .line 389
    const/4 v11, 0x6

    .line 390
    aput-object v7, v15, v11

    .line 389
    invoke-virtual {v14, v15}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v11

    invoke-virtual {v12, v13, v11}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 392
    :cond_20
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 393
    :cond_21
    iget-boolean v11, v8, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v11, :cond_22

    .line 397
    new-instance v11, Lscala/collection/immutable/StringOps;

    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v13, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v13}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_LOCAL()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v13, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    .line 398
    const-string v16, "0.0.0.0"

    aput-object v16, v14, v15

    .line 397
    const/4 v15, 0x3

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v16

    add-int/lit8 v16, v16, 0x35

    invoke-static/range {v16 .. v16}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 397
    const/4 v15, 0x4

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v16

    add-int/lit8 v16, v16, 0x3f

    invoke-static/range {v16 .. v16}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 397
    const/4 v15, 0x5

    .line 398
    aput-object v7, v14, v15

    .line 397
    invoke-virtual {v13, v14}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v11

    :goto_7
    move-object v4, v11

    .line 393
    goto/16 :goto_5

    .line 394
    :cond_22
    new-instance v12, Lscala/collection/immutable/StringOps;

    sget-object v11, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v13, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {v13}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_DIRECT()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v14, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v11, 0x7

    new-array v15, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v15, v11

    const/4 v11, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v15, v11

    const/4 v11, 0x2

    .line 395
    const-string v16, "0.0.0.0"

    aput-object v16, v15, v11

    .line 394
    const/4 v11, 0x3

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v16

    add-int/lit8 v16, v16, 0x35

    invoke-static/range {v16 .. v16}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    .line 394
    const/16 v16, 0x4

    .line 395
    iget-object v11, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    aput-object v11, v15, v16

    .line 394
    const/4 v11, 0x5

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v16

    add-int/lit8 v16, v16, 0x3f

    invoke-static/range {v16 .. v16}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v11

    .line 394
    const/4 v11, 0x6

    .line 395
    aput-object v7, v15, v11

    .line 394
    invoke-virtual {v14, v15}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v11

    invoke-virtual {v12, v13, v11}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v11

    goto :goto_7
.end method

.method public startDnsTunnel()V
    .locals 11

    .prologue
    .line 304
    new-instance v4, Lscala/collection/immutable/StringOps;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    .line 303
    sget-object v6, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    .line 304
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

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->remotePort()I

    move-result v9

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v9

    add-int/lit8 v9, v9, 0x3f

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 305
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 304
    const/4 v8, 0x4

    .line 305
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 304
    const/4 v8, 0x5

    .line 305
    const/16 v9, 0x258

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 304
    const/4 v8, 0x6

    .line 305
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->protocol()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 304
    const/4 v8, 0x7

    .line 305
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->obfs()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 304
    const/16 v8, 0x8

    .line 305
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->obfs_param()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 304
    const/16 v8, 0x9

    .line 305
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->protocol_param()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 304
    invoke-virtual {v6, v7}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "conf":Ljava/lang/String;
    sget-object v4, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v5, Ljava/io/File;

    new-instance v6, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v6}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    const-string v7, "/ss-tunnel-vpn.conf"

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsTunnel$1;

    invoke-direct {v6, p0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startDnsTunnel$1;-><init>(Lcom/github/shadowsocks/ShadowsocksVpnService;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 315
    sget-object v5, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    .line 316
    const-string v8, "-V"

    aput-object v8, v4, v7

    .line 315
    const/4 v7, 0x2

    .line 317
    const-string v8, "-u"

    aput-object v8, v4, v7

    .line 315
    const/4 v7, 0x3

    .line 318
    const-string v8, "-t"

    aput-object v8, v4, v7

    .line 315
    const/4 v7, 0x4

    .line 318
    const-string v8, "60"

    aput-object v8, v4, v7

    .line 315
    const/4 v7, 0x5

    .line 319
    const-string v8, "--host"

    aput-object v8, v4, v7

    .line 315
    const/4 v7, 0x6

    .line 319
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->host_arg()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 315
    const/4 v7, 0x7

    .line 320
    const-string v8, "-b"

    aput-object v8, v4, v7

    .line 315
    const/16 v7, 0x8

    .line 320
    const-string v8, "127.0.0.1"

    aput-object v8, v4, v7

    .line 315
    const/16 v7, 0x9

    .line 321
    const-string v8, "-P"

    aput-object v8, v4, v7

    .line 315
    const/16 v7, 0xa

    .line 321
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v8, v4, v7

    .line 315
    const/16 v7, 0xb

    .line 322
    const-string v8, "-c"

    aput-object v8, v4, v7

    .line 315
    const/16 v7, 0xc

    .line 322
    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    const-string v9, "/ss-tunnel-vpn.conf"

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 315
    invoke-virtual {v6, v4}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v5, v4}, Lscala/collection/mutable/ArrayBuffer$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuffer;

    .line 324
    .local v0, "cmd":Lscala/collection/mutable/ArrayBuffer;
    const-string v4, "-L"

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 325
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/utils/Route$;->CHINALIST()Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    .line 328
    :cond_0
    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_port()I

    move-result v5

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 330
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->proxychains_enable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 331
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "LD_PRELOAD="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    .line 332
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "PROXYCHAINS_CONF_FILE="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    .line 333
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "PROXYCHAINS_PROTECT_FD_PREFIX="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    .line 334
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

    .line 339
    :cond_1
    new-instance v2, Lcom/github/shadowsocks/GuardedProcess;

    invoke-direct {v2, v0}, Lcom/github/shadowsocks/GuardedProcess;-><init>(Lscala/collection/Seq;)V

    .local v2, "qual$1":Lcom/github/shadowsocks/GuardedProcess;
    invoke-virtual {v2}, Lcom/github/shadowsocks/GuardedProcess;->start$default$1()Lscala/Function0;

    move-result-object v3

    .local v3, "x$1":Lscala/Function0;
    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/github/shadowsocks/ShadowsocksVpnService;->sstunnelProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    return-void

    .line 325
    .end local v2    # "qual$1":Lcom/github/shadowsocks/GuardedProcess;
    .end local v3    # "x$1":Lscala/Function0;
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    :cond_3
    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_port()I

    move-result v5

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    goto/16 :goto_0
.end method

.method public startRunner(Lcom/github/shadowsocks/database/Profile;)V
    .locals 3
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 143
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 151
    invoke-static {p0, p1}, Lcom/github/shadowsocks/BaseService$class;->startRunner(Lcom/github/shadowsocks/BaseService;Lcom/github/shadowsocks/database/Profile;)V

    :goto_0
    return-void

    .line 144
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->startActivity(Landroid/content/Intent;)V

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->stopRunner$default$2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/github/shadowsocks/ShadowsocksVpnService;->stopRunner(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public startShadowsocksDaemon()V
    .locals 11

    .prologue
    .line 261
    new-instance v4, Lscala/collection/immutable/StringOps;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    .line 260
    sget-object v6, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    .line 261
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

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->remotePort()I

    move-result v9

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v9

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 262
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 261
    const/4 v8, 0x4

    .line 262
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 261
    const/4 v8, 0x5

    .line 262
    const/16 v9, 0x258

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 261
    const/4 v8, 0x6

    .line 262
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->protocol()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 261
    const/4 v8, 0x7

    .line 262
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->obfs()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 261
    const/16 v8, 0x8

    .line 262
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->obfs_param()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 261
    const/16 v8, 0x9

    .line 262
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->protocol_param()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 261
    invoke-virtual {v6, v7}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "conf":Ljava/lang/String;
    sget-object v4, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v5, Ljava/io/File;

    new-instance v6, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v6}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    const-string v7, "/ss-local-vpn.conf"

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startShadowsocksDaemon$1;

    invoke-direct {v6, p0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startShadowsocksDaemon$1;-><init>(Lcom/github/shadowsocks/ShadowsocksVpnService;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 272
    sget-object v5, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    const-string v8, "-V"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "-x"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    .line 273
    const-string v8, "-b"

    aput-object v8, v4, v7

    .line 272
    const/4 v7, 0x4

    .line 273
    const-string v8, "127.0.0.1"

    aput-object v8, v4, v7

    .line 272
    const/4 v7, 0x5

    .line 274
    const-string v8, "-t"

    aput-object v8, v4, v7

    .line 272
    const/4 v7, 0x6

    .line 274
    const-string v8, "600"

    aput-object v8, v4, v7

    .line 272
    const/4 v7, 0x7

    .line 275
    const-string v8, "--host"

    aput-object v8, v4, v7

    .line 272
    const/16 v7, 0x8

    .line 275
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->host_arg()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 272
    const/16 v7, 0x9

    .line 276
    const-string v8, "-P"

    aput-object v8, v4, v7

    .line 272
    const/16 v7, 0xa

    .line 276
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v8, v4, v7

    .line 272
    const/16 v7, 0xb

    .line 277
    const-string v8, "-c"

    aput-object v8, v4, v7

    .line 272
    const/16 v7, 0xc

    .line 277
    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    const-string v9, "/ss-local-vpn.conf"

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 272
    invoke-virtual {v6, v4}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v5, v4}, Lscala/collection/mutable/ArrayBuffer$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuffer;

    .line 279
    .local v0, "cmd":Lscala/collection/mutable/ArrayBuffer;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->udpdns()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "-u"

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 281
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/utils/Route$;->ALL()Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_3

    if-eqz v5, :cond_4

    .line 282
    :cond_0
    const-string v4, "--acl"

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 283
    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

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

    .line 286
    :goto_1
    sget-object v4, Lcom/github/shadowsocks/utils/TcpFastOpen$;->MODULE$:Lcom/github/shadowsocks/utils/TcpFastOpen$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/TcpFastOpen$;->sendEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "--fast-open"

    invoke-virtual {v0, v4}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 288
    :goto_2
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->proxychains_enable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 289
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "LD_PRELOAD="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    .line 290
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "PROXYCHAINS_CONF_FILE="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    .line 291
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "PROXYCHAINS_PROTECT_FD_PREFIX="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    .line 292
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

    .line 297
    :cond_1
    new-instance v2, Lcom/github/shadowsocks/GuardedProcess;

    invoke-direct {v2, v0}, Lcom/github/shadowsocks/GuardedProcess;-><init>(Lscala/collection/Seq;)V

    .local v2, "qual$3":Lcom/github/shadowsocks/GuardedProcess;
    invoke-virtual {v2}, Lcom/github/shadowsocks/GuardedProcess;->start$default$1()Lscala/Function0;

    move-result-object v3

    .local v3, "x$3":Lscala/Function0;
    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/github/shadowsocks/ShadowsocksVpnService;->sslocalProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    return-void

    .line 279
    .end local v2    # "qual$3":Lcom/github/shadowsocks/GuardedProcess;
    .end local v3    # "x$3":Lscala/Function0;
    :cond_2
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 281
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_1

    .line 286
    :cond_5
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_2
.end method

.method public startShadowsocksUDPDaemon()V
    .locals 11

    .prologue
    .line 226
    new-instance v4, Lscala/collection/immutable/StringOps;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    .line 225
    sget-object v6, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    .line 226
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

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->remotePort()I

    move-result v9

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v9

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    .line 227
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 226
    const/4 v8, 0x4

    .line 227
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 226
    const/4 v8, 0x5

    .line 227
    const/16 v9, 0x258

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 226
    const/4 v8, 0x6

    .line 227
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->protocol()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 226
    const/4 v8, 0x7

    .line 227
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->obfs()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 226
    const/16 v8, 0x8

    .line 227
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->obfs_param()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 226
    const/16 v8, 0x9

    .line 227
    sget-object v9, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->protocol_param()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/utils/ConfigUtils$;->EscapedJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 226
    invoke-virtual {v6, v7}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "conf":Ljava/lang/String;
    sget-object v4, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v5, Ljava/io/File;

    new-instance v6, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v6}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    const-string v7, "/ss-local-udp-vpn.conf"

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startShadowsocksUDPDaemon$1;

    invoke-direct {v6, p0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startShadowsocksUDPDaemon$1;-><init>(Lcom/github/shadowsocks/ShadowsocksVpnService;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 237
    sget-object v5, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    const-string v8, "-V"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "-U"

    aput-object v8, v4, v7

    const/4 v7, 0x3

    .line 238
    const-string v8, "-b"

    aput-object v8, v4, v7

    .line 237
    const/4 v7, 0x4

    .line 238
    const-string v8, "127.0.0.1"

    aput-object v8, v4, v7

    .line 237
    const/4 v7, 0x5

    .line 239
    const-string v8, "-t"

    aput-object v8, v4, v7

    .line 237
    const/4 v7, 0x6

    .line 239
    const-string v8, "600"

    aput-object v8, v4, v7

    .line 237
    const/4 v7, 0x7

    .line 240
    const-string v8, "--host"

    aput-object v8, v4, v7

    .line 237
    const/16 v7, 0x8

    .line 240
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->host_arg()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 237
    const/16 v7, 0x9

    .line 241
    const-string v8, "-P"

    aput-object v8, v4, v7

    .line 237
    const/16 v7, 0xa

    .line 241
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v8, v4, v7

    .line 237
    const/16 v7, 0xb

    .line 242
    const-string v8, "-c"

    aput-object v8, v4, v7

    .line 237
    const/16 v7, 0xc

    .line 242
    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    const-string v9, "/ss-local-udp-vpn.conf"

    invoke-virtual {v8, v9}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 237
    invoke-virtual {v6, v4}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v5, v4}, Lscala/collection/mutable/ArrayBuffer$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/ArrayBuffer;

    .line 244
    .local v0, "cmd":Lscala/collection/mutable/ArrayBuffer;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->proxychains_enable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "LD_PRELOAD="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    .line 246
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "PROXYCHAINS_CONF_FILE="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    .line 247
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "PROXYCHAINS_PROTECT_FD_PREFIX="

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

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

    .line 248
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

    .line 253
    :cond_0
    new-instance v2, Lcom/github/shadowsocks/GuardedProcess;

    invoke-direct {v2, v0}, Lcom/github/shadowsocks/GuardedProcess;-><init>(Lscala/collection/Seq;)V

    .local v2, "qual$2":Lcom/github/shadowsocks/GuardedProcess;
    invoke-virtual {v2}, Lcom/github/shadowsocks/GuardedProcess;->start$default$1()Lscala/Function0;

    move-result-object v3

    .local v3, "x$2":Lscala/Function0;
    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/github/shadowsocks/ShadowsocksVpnService;->sstunnelProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    return-void
.end method

.method public startVpn()I
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 420
    new-instance v1, Landroid/net/VpnService$Builder;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/net/VpnService$Builder;-><init>(Landroid/net/VpnService;)V

    .line 422
    .local v1, "builder":Landroid/net/VpnService$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/VpnService$Builder;->setSession(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    move-result-object v5

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->VPN_MTU()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/VpnService$Builder;->setMtu(I)Landroid/net/VpnService$Builder;

    move-result-object v5

    .line 424
    new-instance v6, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->PRIVATE_VLAN()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "1"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x18

    invoke-virtual {v5, v6, v7}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/Route$;->CHINALIST()Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_5

    if-eqz v6, :cond_6

    .line 429
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    .line 431
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->ipv6()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 432
    new-instance v5, Lscala/collection/immutable/StringOps;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->PRIVATE_VLAN6()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v8, v9

    invoke-virtual {v7, v8}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x7e

    invoke-virtual {v1, v5, v6}, Landroid/net/VpnService$Builder;->addAddress(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 433
    const-string v5, "::"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 436
    :goto_1
    sget-object v5, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/utils/Utils$;->isLollipopOrAbove()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->proxyApps()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 439
    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v5, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/shadowsocks/database/Profile;->individual()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Lscala/collection/immutable/StringOps;->split(C)[Ljava/lang/String;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v6, v5}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v5

    new-instance v6, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$2;-><init>(Lcom/github/shadowsocks/ShadowsocksVpnService;Landroid/net/VpnService$Builder;)V

    invoke-interface {v5, v6}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 454
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/Route$;->ALL()Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_8

    if-eqz v6, :cond_9

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/Route$;->BYPASS_CHN()Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_a

    if-eqz v6, :cond_9

    .line 457
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 458
    .local v4, "privateList":[Ljava/lang/String;
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast v4, [Ljava/lang/Object;

    .end local v4    # "privateList":[Ljava/lang/String;
    invoke-virtual {v5, v4}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v5

    new-instance v6, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$3;-><init>(Lcom/github/shadowsocks/ShadowsocksVpnService;Landroid/net/VpnService$Builder;)V

    invoke-interface {v5, v6}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 456
    sget-object v5, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 464
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/Route$;->CHINALIST()Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_b

    if-eqz v6, :cond_c

    .line 467
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->dns_address()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v1, v5, v6}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    .line 469
    :goto_3
    invoke-virtual {v1}, Landroid/net/VpnService$Builder;->establish()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/github/shadowsocks/ShadowsocksVpnService;->conn_$eq(Landroid/os/ParcelFileDescriptor;)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->conn()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-nez v5, :cond_d

    new-instance v5, Lcom/github/shadowsocks/BaseService$NullConnectionException;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/github/shadowsocks/BaseService$NullConnectionException;-><init>(Lcom/github/shadowsocks/BaseService;)V

    throw v5

    .line 426
    :cond_5
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 427
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_address()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/net/VpnService$Builder;->addDnsServer(Ljava/lang/String;)Landroid/net/VpnService$Builder;

    goto/16 :goto_0

    .line 431
    :cond_7
    sget-object v5, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_1

    .line 454
    :cond_8
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 455
    :cond_9
    :goto_4
    const-string v5, "0.0.0.0"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    goto :goto_2

    .line 454
    :cond_a
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_4

    .line 464
    :cond_b
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 465
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->china_dns_address()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v1, v5, v6}, Landroid/net/VpnService$Builder;->addRoute(Ljava/lang/String;I)Landroid/net/VpnService$Builder;

    goto :goto_3

    .line 472
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->conn()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    .line 474
    .local v3, "fd":I
    sget-object v6, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v5, 0xf

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v9}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v9

    const-string v10, "/tun2socks"

    invoke-virtual {v9, v10}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    const/4 v8, 0x1

    .line 475
    const-string v9, "--netif-ipaddr"

    aput-object v9, v5, v8

    .line 474
    const/4 v8, 0x2

    .line 475
    new-instance v9, Lscala/collection/immutable/StringOps;

    sget-object v10, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->PRIVATE_VLAN()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v11, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "2"

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 474
    const/4 v8, 0x3

    .line 476
    const-string v9, "--netif-netmask"

    aput-object v9, v5, v8

    .line 474
    const/4 v8, 0x4

    .line 476
    const-string v9, "255.255.255.0"

    aput-object v9, v5, v8

    .line 474
    const/4 v8, 0x5

    .line 477
    const-string v9, "--socks-server-addr"

    aput-object v9, v5, v8

    .line 474
    const/4 v8, 0x6

    .line 477
    new-instance v9, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v9}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v10, "127.0.0.1:"

    invoke-virtual {v9, v10}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v10

    invoke-static {v10}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 474
    const/4 v8, 0x7

    .line 478
    const-string v9, "--tunfd"

    aput-object v9, v5, v8

    .line 474
    const/16 v8, 0x8

    .line 478
    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 474
    const/16 v8, 0x9

    .line 479
    const-string v9, "--tunmtu"

    aput-object v9, v5, v8

    .line 474
    const/16 v8, 0xa

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->VPN_MTU()I

    move-result v9

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 474
    const/16 v8, 0xb

    .line 480
    const-string v9, "--sock-path"

    aput-object v9, v5, v8

    .line 474
    const/16 v8, 0xc

    .line 480
    new-instance v9, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v9}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v9

    const-string v10, "/sock_path"

    invoke-virtual {v9, v10}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v8

    .line 474
    const/16 v8, 0xd

    .line 481
    const-string v9, "--loglevel"

    aput-object v9, v5, v8

    .line 474
    const/16 v8, 0xe

    .line 481
    const-string v9, "3"

    aput-object v9, v5, v8

    check-cast v5, [Ljava/lang/Object;

    .line 474
    invoke-virtual {v7, v5}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-virtual {v6, v5}, Lscala/collection/mutable/ArrayBuffer$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object v2

    check-cast v2, Lscala/collection/mutable/ArrayBuffer;

    .line 483
    .local v2, "cmd":Lscala/collection/mutable/ArrayBuffer;
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->ipv6()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 484
    const-string v6, "--netif-ip6addr"

    new-instance v5, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->PRIVATE_VLAN6()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "2"

    aput-object v11, v9, v10

    invoke-virtual {v8, v9}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v8, v5}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-virtual {v2, v6, v7, v5}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    .line 486
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/Profile;->udpdns()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 487
    const-string v5, "--enable-udprelay"

    invoke-virtual {v2, v5}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 494
    :goto_6
    new-instance v5, Lcom/github/shadowsocks/GuardedProcess;

    invoke-direct {v5, v2}, Lcom/github/shadowsocks/GuardedProcess;-><init>(Lscala/collection/Seq;)V

    new-instance v6, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService$$anonfun$startVpn$1;-><init>(Lcom/github/shadowsocks/ShadowsocksVpnService;I)V

    invoke-virtual {v5, v6}, Lcom/github/shadowsocks/GuardedProcess;->start(Lscala/Function0;)Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/github/shadowsocks/ShadowsocksVpnService;->tun2socksProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 496
    return v3

    .line 483
    :cond_e
    sget-object v5, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_5

    .line 489
    :cond_f
    const-string v6, "--dnsgw"

    new-instance v5, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v8, "%s:%d"

    invoke-virtual {v7, v8}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Lscala/collection/immutable/StringOps;

    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->PRIVATE_VLAN()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v13, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "1"

    aput-object v16, v14, v15

    invoke-virtual {v13, v14}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v11

    add-int/lit8 v11, v11, 0x35

    invoke-static {v11}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 489
    invoke-virtual {v8, v9}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v8, v5}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-virtual {v2, v6, v7, v5}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;Ljava/lang/Object;Lscala/collection/Seq;)Lscala/collection/generic/Growable;

    goto :goto_6
.end method

.method public stopRunner(ZLjava/lang/String;)V
    .locals 4
    .param p1, "stopService"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->vpnThread()Lcom/github/shadowsocks/ShadowsocksVpnThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->vpnThread()Lcom/github/shadowsocks/ShadowsocksVpnThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksVpnThread;->stopThread()V

    .line 99
    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService;->vpnThread_$eq(Lcom/github/shadowsocks/ShadowsocksVpnThread;)V

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->notification()Lcom/github/shadowsocks/ShadowsocksNotification;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->notification()Lcom/github/shadowsocks/ShadowsocksNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksNotification;->destroy()V

    .line 105
    :cond_1
    sget-object v0, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/State$;->STOPPING()I

    move-result v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->changeState$default$2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/ShadowsocksVpnService;->changeState(ILjava/lang/String;)V

    .line 107
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->killProcesses()V

    .line 113
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->conn()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksVpnService;->conn()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 115
    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksVpnService;->conn_$eq(Landroid/os/ParcelFileDescriptor;)V

    .line 118
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/github/shadowsocks/BaseService$class;->stopRunner(Lcom/github/shadowsocks/BaseService;ZLjava/lang/String;)V

    return-void
.end method

.method public stopRunner$default$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public timer()Ljava/util/Timer;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method public timer_$eq(Ljava/util/Timer;)V
    .locals 0
    .param p1, "x$1"    # Ljava/util/Timer;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->timer:Ljava/util/Timer;

    return-void
.end method

.method public trafficMonitorThread()Lcom/github/shadowsocks/utils/TrafficMonitorThread;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->trafficMonitorThread:Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    return-object v0
.end method

.method public trafficMonitorThread_$eq(Lcom/github/shadowsocks/utils/TrafficMonitorThread;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->trafficMonitorThread:Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    return-void
.end method

.method public tun2socksProcess()Lcom/github/shadowsocks/GuardedProcess;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->tun2socksProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-object v0
.end method

.method public tun2socksProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/GuardedProcess;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->tun2socksProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-void
.end method

.method public updateTrafficRate()V
    .locals 0

    .prologue
    .line 61
    invoke-static {p0}, Lcom/github/shadowsocks/BaseService$class;->updateTrafficRate(Lcom/github/shadowsocks/BaseService;)V

    return-void
.end method

.method public updateTrafficTotal(JJ)V
    .locals 1
    .param p1, "tx"    # J
    .param p3, "rx"    # J

    .prologue
    .line 61
    invoke-static {p0, p1, p2, p3, p4}, Lcom/github/shadowsocks/BaseService$class;->updateTrafficTotal(Lcom/github/shadowsocks/BaseService;JJ)V

    return-void
.end method

.method public vpnThread()Lcom/github/shadowsocks/ShadowsocksVpnThread;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->vpnThread:Lcom/github/shadowsocks/ShadowsocksVpnThread;

    return-object v0
.end method

.method public vpnThread_$eq(Lcom/github/shadowsocks/ShadowsocksVpnThread;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/ShadowsocksVpnThread;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksVpnService;->vpnThread:Lcom/github/shadowsocks/ShadowsocksVpnThread;

    return-void
.end method
