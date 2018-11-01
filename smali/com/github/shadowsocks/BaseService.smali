.class public interface abstract Lcom/github/shadowsocks/BaseService;
.super Ljava/lang/Object;
.source "BaseService.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/shadowsocks/BaseService$KcpcliParseException;,
        Lcom/github/shadowsocks/BaseService$NullConnectionException;,
        Lcom/github/shadowsocks/BaseService$NameNotResolvedException;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract binder()Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;
.end method

.method public abstract callbacks()Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;",
            ">;"
        }
    .end annotation
.end method

.method public abstract callbacksCount()I
.end method

.method public abstract callbacksCount_$eq(I)V
.end method

.method public abstract changeState(ILjava/lang/String;)V
.end method

.method public abstract changeState$default$2()Ljava/lang/String;
.end method

.method public abstract checkProfile(Lcom/github/shadowsocks/database/Profile;)Z
.end method

.method public abstract closeReceiverRegistered()Z
.end method

.method public abstract closeReceiverRegistered_$eq(Z)V
.end method

.method public abstract com$github$shadowsocks$BaseService$$closeReceiver()Landroid/content/BroadcastReceiver;
.end method

.method public abstract com$github$shadowsocks$BaseService$$state()I
.end method

.method public abstract com$github$shadowsocks$BaseService$$state_$eq(I)V
.end method

.method public abstract synthetic com$github$shadowsocks$BaseService$$super$onCreate()V
.end method

.method public abstract com$github$shadowsocks$BaseService$_setter_$binder_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;)V
.end method

.method public abstract com$github$shadowsocks$BaseService$_setter_$callbacks_$eq(Landroid/os/RemoteCallbackList;)V
.end method

.method public abstract com$github$shadowsocks$BaseService$_setter_$com$github$shadowsocks$BaseService$$closeReceiver_$eq(Landroid/content/BroadcastReceiver;)V
.end method

.method public abstract connect()V
.end method

.method public abstract getState()I
.end method

.method public abstract handler()Landroid/os/Handler;
.end method

.method public abstract profile()Lcom/github/shadowsocks/database/Profile;
.end method

.method public abstract profile_$eq(Lcom/github/shadowsocks/database/Profile;)V
.end method

.method public abstract startRunner(Lcom/github/shadowsocks/database/Profile;)V
.end method

.method public abstract stopRunner(ZLjava/lang/String;)V
.end method

.method public abstract stopRunner$default$2()Ljava/lang/String;
.end method

.method public abstract timer()Ljava/util/Timer;
.end method

.method public abstract timer_$eq(Ljava/util/Timer;)V
.end method

.method public abstract trafficMonitorThread()Lcom/github/shadowsocks/utils/TrafficMonitorThread;
.end method

.method public abstract trafficMonitorThread_$eq(Lcom/github/shadowsocks/utils/TrafficMonitorThread;)V
.end method

.method public abstract updateTrafficRate()V
.end method

.method public abstract updateTrafficTotal(JJ)V
.end method
