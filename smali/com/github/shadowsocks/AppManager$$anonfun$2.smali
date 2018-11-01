.class public final Lcom/github/shadowsocks/AppManager$$anonfun$2;
.super Landroid/content/BroadcastReceiver;
.source "AppManager.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/AppManager$;->com$github$shadowsocks$AppManager$$getApps(Landroid/content/pm/PackageManager;)[Lcom/github/shadowsocks/AppManager$ProxiedApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    sget-object v0, Lcom/github/shadowsocks/AppManager$;->MODULE$:Lcom/github/shadowsocks/AppManager$;

    invoke-virtual {v0, p1, p2}, Lcom/github/shadowsocks/AppManager$;->com$github$shadowsocks$AppManager$$onReceive$body$1(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
