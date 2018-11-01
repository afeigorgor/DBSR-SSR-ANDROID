.class public final Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;
.super Lscala/runtime/AbstractFunction1;
.source "Utils.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/utils/Utils$;->isIPv6Support()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/net/NetworkInterface;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final nonLocalReturnKey2$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "nonLocalReturnKey2$1"    # Ljava/lang/Object;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;->nonLocalReturnKey2$1:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 234
    check-cast p1, Ljava/net/NetworkInterface;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;->apply(Ljava/net/NetworkInterface;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/net/NetworkInterface;)V
    .locals 2
    .param p1, "intf"    # Ljava/net/NetworkInterface;

    .prologue
    .line 235
    sget-object v0, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/JavaConversions$;->enumerationAsScalaIterator(Ljava/util/Enumeration;)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1$$anonfun$apply$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1$$anonfun$apply$1;-><init>(Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-void
.end method
