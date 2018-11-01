.class public final Lcom/github/shadowsocks/BaseService$$anon$1;
.super Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;
.source "BaseService.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/BaseService;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/BaseService;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 88
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-direct {p0}, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic com$github$shadowsocks$BaseService$$anon$$$outer()Lcom/github/shadowsocks/BaseService;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$$state()I

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;)V
    .locals 12
    .param p1, "cb"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;

    .prologue
    const-wide/16 v2, 0x3e8

    .line 106
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->callbacks()Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    iget-object v4, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v4}, Lcom/github/shadowsocks/BaseService;->callbacksCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-interface {v0, v4}, Lcom/github/shadowsocks/BaseService;->callbacksCount_$eq(I)V

    .line 108
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->callbacksCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->timer()Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    new-instance v1, Lcom/github/shadowsocks/BaseService$$anon$1$$anon$2;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/BaseService$$anon$1$$anon$2;-><init>(Lcom/github/shadowsocks/BaseService$$anon$1;)V

    .line 114
    .local v1, "task":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    new-instance v4, Ljava/util/Timer;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/Timer;-><init>(Z)V

    invoke-interface {v0, v4}, Lcom/github/shadowsocks/BaseService;->timer_$eq(Ljava/util/Timer;)V

    .line 115
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->timer()Ljava/util/Timer;

    move-result-object v0

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 117
    .end local v1    # "task":Ljava/util/TimerTask;
    :cond_0
    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->updateRate()Z

    .line 118
    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txRate()J

    move-result-wide v4

    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxRate()J

    move-result-wide v6

    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txTotal()J

    move-result-wide v8

    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxTotal()J

    move-result-wide v10

    move-object v3, p1

    invoke-interface/range {v3 .. v11}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;->trafficUpdated(JJJJ)V

    .line 106
    :cond_1
    return-void
.end method

.method public unregisterCallback(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->callbacks()Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v1}, Lcom/github/shadowsocks/BaseService;->callbacksCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/github/shadowsocks/BaseService;->callbacksCount_$eq(I)V

    .line 98
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->callbacksCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->timer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->timer()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 100
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/github/shadowsocks/BaseService;->timer_$eq(Ljava/util/Timer;)V

    .line 96
    :cond_0
    return-void
.end method

.method public use(I)V
    .locals 4
    .param p1, "profileId"    # I

    .prologue
    .line 122
    monitor-enter p0

    if-gez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v3}, Lcom/github/shadowsocks/BaseService;->stopRunner$default$2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/github/shadowsocks/BaseService;->stopRunner(ZLjava/lang/String;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/github/shadowsocks/database/ProfileManager;->getProfile(I)Lscala/Option;

    move-result-object v1

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2}, Lscala/Predef$;->$conforms()Lscala/Predef$$less$colon$less;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Option;->orNull(Lscala/Predef$$less$colon$less;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    .line 124
    .local v0, "profile":Lcom/github/shadowsocks/database/Profile;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v3}, Lcom/github/shadowsocks/BaseService;->stopRunner$default$2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/github/shadowsocks/BaseService;->stopRunner(ZLjava/lang/String;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v1}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$$state()I

    move-result v1

    .line 125
    sget-object v2, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/State$;->STOPPED()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v1, v0}, Lcom/github/shadowsocks/BaseService;->checkProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v1, v0}, Lcom/github/shadowsocks/BaseService;->startRunner(Lcom/github/shadowsocks/database/Profile;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    :cond_2
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 126
    :cond_3
    sget-object v2, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/State$;->CONNECTED()I

    move-result v2

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v1}, Lcom/github/shadowsocks/BaseService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v1, v0}, Lcom/github/shadowsocks/BaseService;->checkProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v3}, Lcom/github/shadowsocks/BaseService;->stopRunner$default$2()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/github/shadowsocks/BaseService;->stopRunner(ZLjava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v1, v0}, Lcom/github/shadowsocks/BaseService;->startRunner(Lcom/github/shadowsocks/database/Profile;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 126
    :cond_4
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 130
    :cond_5
    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v3, "Illegal state when invoking use: "

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/github/shadowsocks/BaseService$$anon$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v3}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$$state()I

    move-result v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 122
    .end local v0    # "profile":Lcom/github/shadowsocks/database/Profile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public useSync(I)V
    .locals 0
    .param p1, "profileId"    # I

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/BaseService$$anon$1;->use(I)V

    return-void
.end method
