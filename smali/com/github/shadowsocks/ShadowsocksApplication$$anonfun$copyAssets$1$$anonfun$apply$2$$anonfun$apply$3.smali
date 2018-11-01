.class public final Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$3;
.super Lscala/runtime/AbstractFunction0;
.source "ShadowsocksApplication.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;->apply(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Ljava/io/FileOutputStream;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;

    .prologue
    .line 218
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$3;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/io/FileOutputStream;
    .locals 3

    .prologue
    .line 218
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$3;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;->com$github$shadowsocks$ShadowsocksApplication$$anonfun$$anonfun$$$outer()Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;->com$github$shadowsocks$ShadowsocksApplication$$anonfun$$$outer()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$3;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;

    iget-object v2, v2, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;->file$1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2$$anonfun$apply$3;->apply()Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method
