.class public final Lcom/github/shadowsocks/ShadowsocksTileService$$anonfun$1;
.super Ljava/lang/Object;
.source "ShadowsocksTileService.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksTileService;->onClick()V
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
    .line 54
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksTileService$$anonfun$1;->$outer:Lcom/github/shadowsocks/ShadowsocksTileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksTileService$$anonfun$1;->$outer:Lcom/github/shadowsocks/ShadowsocksTileService;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksTileService;->com$github$shadowsocks$ShadowsocksTileService$$run$body$1()V

    return-void
.end method
