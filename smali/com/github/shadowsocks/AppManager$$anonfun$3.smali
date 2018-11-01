.class public final Lcom/github/shadowsocks/AppManager$$anonfun$3;
.super Ljava/lang/Object;
.source "AppManager.scala"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/AppManager;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/AppManager;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/AppManager;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/AppManager;

    .prologue
    .line 224
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$$anonfun$3;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "x$2"    # Landroid/view/View;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$$anonfun$3;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$onClick$body$1(Landroid/view/View;)V

    return-void
.end method
