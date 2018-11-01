.class public final Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$4;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksApplication.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/io/FileOutputStream;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final in$1:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;
    .param p2, "in$1"    # Ljava/io/InputStream;

    .prologue
    .line 218
    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$4;->in$1:Ljava/io/InputStream;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p1, Ljava/io/FileOutputStream;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$4;->apply(Ljava/io/FileOutputStream;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/io/FileOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/FileOutputStream;

    .prologue
    .line 219
    sget-object v0, Lcom/github/shadowsocks/utils/IOUtils$;->MODULE$:Lcom/github/shadowsocks/utils/IOUtils$;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$4;->in$1:Ljava/io/InputStream;

    invoke-virtual {v0, v1, p1}, Lcom/github/shadowsocks/utils/IOUtils$;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method
