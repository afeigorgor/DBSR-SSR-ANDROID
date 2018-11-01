.class public final Lcom/github/shadowsocks/Shadowsocks$$anonfun$11;
.super Ljava/lang/Object;
.source "Shadowsocks.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$onClick$body$4(Landroid/view/View;)V
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
    .line 287
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$11;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$11;->$outer:Lcom/github/shadowsocks/Shadowsocks;

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$run$body$7()V

    return-void
.end method
