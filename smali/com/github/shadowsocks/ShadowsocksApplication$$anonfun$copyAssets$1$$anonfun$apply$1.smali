.class public final Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction0;
.source "ShadowsocksApplication.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;->apply(Ljava/lang/String;)V
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
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;

.field private final file$1:Ljava/lang/String;


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
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$1;->file$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;

    iget-object v1, v0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;->assetManager$1:Landroid/content/res/AssetManager;

    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v3, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;

    iget-object v3, v3, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;->path$1:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;

    iget-object v2, v2, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;->path$1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$1;->file$1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$1;->file$1:Ljava/lang/String;

    goto :goto_0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$1;->apply()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
