.class public final Lcom/github/shadowsocks/ShadowsocksTileService$$anon$1;
.super Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
.source "ShadowsocksTileService.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ShadowsocksTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksTileService;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksTileService;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksTileService;

    .prologue
    .line 19
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksTileService$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksTileService;

    invoke-direct {p0}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f090041

    .line 22
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksTileService$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksTileService;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 23
    .local v0, "tile":Landroid/service/quicksettings/Tile;
    if-eqz v0, :cond_0

    .line 25
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->STOPPED()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 26
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksTileService$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksTileService;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconIdle()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 27
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksTileService$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksTileService;

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/ShadowsocksTileService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 28
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 38
    .end local p2    # "profileName":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 21
    :cond_0
    return-void

    .line 29
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->CONNECTED()I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 30
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksTileService$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksTileService;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconConnected()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 31
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksTileService$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksTileService;

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/ShadowsocksTileService;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "profileName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, p2}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 32
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 34
    .restart local p2    # "profileName":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksTileService$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksTileService;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$iconBusy()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 35
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksTileService$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksTileService;

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/ShadowsocksTileService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 36
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public trafficUpdated(JJJJ)V
    .locals 0
    .param p1, "txRate"    # J
    .param p3, "rxRate"    # J
    .param p5, "txTotal"    # J
    .param p7, "rxTotal"    # J

    .prologue
    .line 20
    return-void
.end method
