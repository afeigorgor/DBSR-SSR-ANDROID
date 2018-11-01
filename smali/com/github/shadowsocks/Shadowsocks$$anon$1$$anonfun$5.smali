.class public final Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;
.super Ljava/lang/Object;
.source "Shadowsocks.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/Shadowsocks$$anon$1;->trafficUpdated(JJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/Shadowsocks$$anon$1;

.field private final rxRate$1:J

.field private final rxTotal$1:J

.field private final txRate$1:J

.field private final txTotal$1:J


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/Shadowsocks$$anon$1;JJJJ)V
    .locals 2
    .param p1, "$outer"    # Lcom/github/shadowsocks/Shadowsocks$$anon$1;
    .param p2, "txRate$1"    # J
    .param p4, "rxRate$1"    # J
    .param p6, "txTotal$1"    # J
    .param p8, "rxTotal$1"    # J

    .prologue
    .line 166
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anon$1;

    iput-wide p2, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;->txRate$1:J

    iput-wide p4, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;->rxRate$1:J

    iput-wide p6, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;->txTotal$1:J

    iput-wide p8, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;->rxTotal$1:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 166
    iget-object v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anon$1;

    iget-wide v2, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;->txRate$1:J

    iget-wide v4, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;->rxRate$1:J

    iget-wide v6, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;->txTotal$1:J

    iget-wide v8, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$5;->rxTotal$1:J

    invoke-virtual/range {v1 .. v9}, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->com$github$shadowsocks$Shadowsocks$$anon$$run$body$4(JJJJ)V

    return-void
.end method
