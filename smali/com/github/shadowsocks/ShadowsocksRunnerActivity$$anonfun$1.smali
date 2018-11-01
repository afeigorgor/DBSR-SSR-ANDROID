.class public final Lcom/github/shadowsocks/ShadowsocksRunnerActivity$$anonfun$1;
.super Ljava/lang/Object;
.source "ShadowsocksRunnerActivity.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksRunnerActivity;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksRunnerActivity;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksRunnerActivity;

    .prologue
    .line 64
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity$$anonfun$1;->$outer:Lcom/github/shadowsocks/ShadowsocksRunnerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksRunnerActivity$$anonfun$1;->$outer:Lcom/github/shadowsocks/ShadowsocksRunnerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksRunnerActivity;->com$github$shadowsocks$ShadowsocksRunnerActivity$$run$body$1()V

    return-void
.end method
