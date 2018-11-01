.class public abstract Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IShadowsocksServiceCallback.java"

# interfaces
.implements Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.github.shadowsocks.aidl.IShadowsocksServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;
    .locals 2

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "com.github.shadowsocks.aidl.IShadowsocksServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v1, "com.github.shadowsocks.aidl.IShadowsocksServiceCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.github.shadowsocks.aidl.IShadowsocksServiceCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {p0, v1, v2, v3}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;->stateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v1, "com.github.shadowsocks.aidl.IShadowsocksServiceCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object v1, p0

    .line 68
    invoke-virtual/range {v1 .. v9}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;->trafficUpdated(JJJJ)V

    goto :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
