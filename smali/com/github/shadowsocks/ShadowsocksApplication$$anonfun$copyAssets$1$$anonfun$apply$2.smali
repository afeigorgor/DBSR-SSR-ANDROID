.class public final Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksApplication.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/io/InputStream;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;

.field public final file$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;Ljava/lang/String;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;
    .param p2, "file$1"    # Ljava/lang/String;

    .prologue
    .line 217
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;->file$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 217
    check-cast p1, Ljava/io/InputStream;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;->apply(Ljava/io/InputStream;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 218
    sget-object v0, Lcom/github/shadowsocks/utils/CloseUtils$;->MODULE$:Lcom/github/shadowsocks/utils/CloseUtils$;

    new-instance v1, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$3;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$3;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;)V

    new-instance v2, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$4;

    invoke-direct {v2, p0, p1}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$4;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;Ljava/io/InputStream;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/utils/CloseUtils$;->autoClose(Lscala/Function0;Lscala/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic com$github$shadowsocks$ShadowsocksApplication$$anonfun$$anonfun$$$outer()Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;

    return-object v0
.end method
