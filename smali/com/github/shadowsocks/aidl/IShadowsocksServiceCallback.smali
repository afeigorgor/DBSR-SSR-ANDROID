.class public interface abstract Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;
.super Ljava/lang/Object;
.source "IShadowsocksServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract stateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract trafficUpdated(JJJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
