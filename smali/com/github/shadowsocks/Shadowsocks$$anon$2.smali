.class public final Lcom/github/shadowsocks/Shadowsocks$$anon$2;
.super Landroid/os/Handler;
.source "Shadowsocks.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/Shadowsocks;->showProgress(I)Landroid/os/Handler;
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
    .line 229
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$2;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$2;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->clearDialog()V

    return-void
.end method
