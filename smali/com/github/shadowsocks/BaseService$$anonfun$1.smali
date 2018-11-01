.class public final Lcom/github/shadowsocks/BaseService$$anonfun$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseService.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/BaseService;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/BaseService;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 82
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/BaseService$$anonfun$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anonfun$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-static {v0, p1, p2}, Lcom/github/shadowsocks/BaseService$class;->onReceive$body$1(Lcom/github/shadowsocks/BaseService;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
