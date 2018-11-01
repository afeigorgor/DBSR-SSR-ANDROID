.class public final Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$1;
.super Ljava/lang/Object;
.source "ShadowsocksNatService.scala"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksNatService;->startRunner(Lcom/github/shadowsocks/database/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksNatService;

.field private final profile$1:Lcom/github/shadowsocks/database/Profile;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksNatService;Lcom/github/shadowsocks/database/Profile;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksNatService;
    .param p2, "profile$1"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 345
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$1;->$outer:Lcom/github/shadowsocks/ShadowsocksNatService;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$1;->profile$1:Lcom/github/shadowsocks/database/Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCommandResult(IILjava/util/List;)V
    .locals 2
    .param p1, "x$1"    # I
    .param p2, "exitCode"    # I
    .param p3, "x$2"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$1;->$outer:Lcom/github/shadowsocks/ShadowsocksNatService;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksNatService$$anonfun$1;->profile$1:Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/github/shadowsocks/ShadowsocksNatService;->com$github$shadowsocks$ShadowsocksNatService$$onCommandResult$body$1(IILjava/util/List;Lcom/github/shadowsocks/database/Profile;)V

    return-void
.end method
