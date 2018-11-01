.class public final Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$1;
.super Ljava/lang/Object;
.source "Shadowsocks.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/Shadowsocks$$anon$1;->stateChanged(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/Shadowsocks$$anon$1;

.field private final m$1:Ljava/lang/String;

.field private final s$1:I


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/Shadowsocks$$anon$1;ILjava/lang/String;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/Shadowsocks$$anon$1;
    .param p2, "s$1"    # I
    .param p3, "m$1"    # Ljava/lang/String;

    .prologue
    .line 113
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$1;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anon$1;

    iput p2, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$1;->s$1:I

    iput-object p3, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$1;->m$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$1;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anon$1;

    iget v1, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$1;->s$1:I

    iget-object v2, p0, Lcom/github/shadowsocks/Shadowsocks$$anon$1$$anonfun$1;->m$1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/Shadowsocks$$anon$1;->com$github$shadowsocks$Shadowsocks$$anon$$run$body$1(ILjava/lang/String;)V

    return-void
.end method
