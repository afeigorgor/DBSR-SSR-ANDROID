.class Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IShadowsocksService.java"

# interfaces
.implements Lcom/github/shadowsocks/aidl/IShadowsocksService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 103
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 135
    :try_start_0
    const-string v0, "com.github.shadowsocks.aidl.IShadowsocksService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 137
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 138
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 141
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 144
    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    throw v0
.end method

.method public getState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 115
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 118
    :try_start_0
    const-string v0, "com.github.shadowsocks.aidl.IShadowsocksService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 120
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 121
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 124
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    return v0

    .line 124
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 126
    throw v0
.end method

.method public registerCallback(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 150
    :try_start_0
    const-string v2, "com.github.shadowsocks.aidl.IShadowsocksService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 152
    iget-object v0, p0, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    return-void

    .line 155
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw v0
.end method

.method public unregisterCallback(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 162
    :try_start_0
    const-string v2, "com.github.shadowsocks.aidl.IShadowsocksService"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 164
    iget-object v0, p0, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 168
    throw v0
.end method

.method public use(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 174
    :try_start_0
    const-string v0, "com.github.shadowsocks.aidl.IShadowsocksService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    throw v0
.end method

.method public useSync(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 187
    :try_start_0
    const-string v0, "com.github.shadowsocks.aidl.IShadowsocksService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget-object v0, p0, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 190
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 196
    return-void

    .line 193
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    throw v0
.end method
