.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1$$anonfun$25;
.super Ljava/lang/Object;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;

.field private final result$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;Ljava/lang/String;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;
    .param p2, "result$1"    # Ljava/lang/String;

    .prologue
    .line 229
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1$$anonfun$25;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1$$anonfun$25;->result$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1$$anonfun$25;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1$$anonfun$25;->result$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;->com$github$shadowsocks$ShadowsocksSettings$$anon$$run$body$1(Ljava/lang/String;)V

    return-void
.end method
