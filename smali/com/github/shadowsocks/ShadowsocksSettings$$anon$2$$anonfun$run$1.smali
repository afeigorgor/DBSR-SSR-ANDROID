.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2$$anonfun$run$1;
.super Lscala/runtime/AbstractFunction0;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Ljava/io/InputStream;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;

    .prologue
    .line 417
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 417
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2$$anonfun$run$1;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;

    iget-object v1, v1, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->url$1:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2$$anonfun$run$1;->apply()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
