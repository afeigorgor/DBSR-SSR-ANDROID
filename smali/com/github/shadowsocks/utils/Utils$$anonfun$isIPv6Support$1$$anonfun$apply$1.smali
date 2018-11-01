.class public final Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "Utils.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/net/InetAddress;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;

    .prologue
    .line 235
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1$$anonfun$apply$1;->$outer:Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 235
    check-cast p1, Ljava/net/InetAddress;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1$$anonfun$apply$1;->apply(Ljava/net/InetAddress;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "addr"    # Ljava/net/InetAddress;

    .prologue
    .line 236
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Lscala/runtime/NonLocalReturnControl$mcZ$sp;

    iget-object v1, p0, Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1$$anonfun$apply$1;->$outer:Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;

    iget-object v1, v1, Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;->nonLocalReturnKey2$1:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lscala/runtime/NonLocalReturnControl$mcZ$sp;-><init>(Ljava/lang/Object;Z)V

    throw v0

    .line 236
    :cond_0
    return-void
.end method
