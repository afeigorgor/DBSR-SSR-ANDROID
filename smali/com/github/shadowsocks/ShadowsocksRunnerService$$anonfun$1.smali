.class public final Lcom/github/shadowsocks/ShadowsocksRunnerService$$anonfun$1;
.super Ljava/lang/Object;
.source "ShadowsocksRunnerService.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksRunnerService;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksRunnerService;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksRunnerService;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksRunnerService;

    .prologue
    .line 60
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService$$anonfun$1;->$outer:Lcom/github/shadowsocks/ShadowsocksRunnerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerService$$anonfun$1;->$outer:Lcom/github/shadowsocks/ShadowsocksRunnerService;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksRunnerService;->com$github$shadowsocks$ShadowsocksRunnerService$$run$body$1()V

    return-void
.end method
