.class public final Lcom/github/shadowsocks/utils/TrafficMonitorThread$$anonfun$1;
.super Ljava/lang/Object;
.source "TrafficMonitorThread.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/utils/TrafficMonitorThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/utils/TrafficMonitorThread;

.field private final socket$1:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/utils/TrafficMonitorThread;Landroid/net/LocalSocket;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/utils/TrafficMonitorThread;
    .param p2, "socket$1"    # Landroid/net/LocalSocket;

    .prologue
    .line 95
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread$$anonfun$1;->$outer:Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    iput-object p2, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread$$anonfun$1;->socket$1:Landroid/net/LocalSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread$$anonfun$1;->$outer:Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    iget-object v1, p0, Lcom/github/shadowsocks/utils/TrafficMonitorThread$$anonfun$1;->socket$1:Landroid/net/LocalSocket;

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->com$github$shadowsocks$utils$TrafficMonitorThread$$run$body$1(Landroid/net/LocalSocket;)V

    return-void
.end method
