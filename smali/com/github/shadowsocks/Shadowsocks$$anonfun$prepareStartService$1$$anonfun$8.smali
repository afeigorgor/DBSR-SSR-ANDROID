.class public final Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1$$anonfun$8;
.super Ljava/lang/Object;
.source "Shadowsocks.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;

    .prologue
    .line 249
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1$$anonfun$8;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1$$anonfun$8;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;->com$github$shadowsocks$Shadowsocks$$anonfun$$run$body$6()V

    return-void
.end method
