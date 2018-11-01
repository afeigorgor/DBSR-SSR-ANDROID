.class public final Lcom/github/shadowsocks/AppManager$$anonfun$4;
.super Ljava/lang/Object;
.source "AppManager.scala"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
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
    .line 238
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$$anonfun$4;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "x$3"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 238
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$$anonfun$4;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v0, p1, p2}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$onCheckedChanged$body$1(Landroid/widget/CompoundButton;Z)V

    return-void
.end method
