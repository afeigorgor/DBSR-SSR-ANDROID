.class public final Lcom/github/shadowsocks/Shadowsocks$$anonfun$6;
.super Ljava/lang/Object;
.source "Shadowsocks.scala"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/Shadowsocks;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/Shadowsocks;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/Shadowsocks;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/Shadowsocks;

    .prologue
    .line 185
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$6;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "x$2"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$6;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$onClick$body$2(Landroid/view/View;)V

    return-void
.end method
