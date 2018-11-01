.class public interface abstract Lcom/github/shadowsocks/ServiceBoundContext;
.super Ljava/lang/Object;
.source "ServiceBoundContext.scala"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# virtual methods
.method public abstract bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;
.end method

.method public abstract bgService_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService;)V
.end method

.method public abstract binder()Landroid/os/IBinder;
.end method

.method public abstract binder_$eq(Landroid/os/IBinder;)V
.end method

.method public abstract com$github$shadowsocks$ServiceBoundContext$$callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
.end method

.method public abstract com$github$shadowsocks$ServiceBoundContext$$callbackRegistered()Z
.end method

.method public abstract com$github$shadowsocks$ServiceBoundContext$$callbackRegistered_$eq(Z)V
.end method

.method public abstract com$github$shadowsocks$ServiceBoundContext$$callback_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
.end method

.method public abstract com$github$shadowsocks$ServiceBoundContext$$connection()Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;
.end method

.method public abstract com$github$shadowsocks$ServiceBoundContext$$connection_$eq(Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;)V
.end method

.method public abstract onServiceConnected()V
.end method

.method public abstract onServiceDisconnected()V
.end method

.method public abstract registerCallback()V
.end method

.method public abstract unregisterCallback()V
.end method
