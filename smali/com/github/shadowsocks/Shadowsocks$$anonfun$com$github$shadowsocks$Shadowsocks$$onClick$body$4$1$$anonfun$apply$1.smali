.class public final Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction0;
.source "Shadowsocks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->apply()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Ljava/net/HttpURLConnection;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    .prologue
    .line 293
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$1;->apply()Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    .line 292
    new-instance v0, Ljava/net/URL;

    const-string v1, "https"

    const-string v2, "www.google.com"

    const-string v3, "/generate_204"

    invoke-direct {v0, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method
