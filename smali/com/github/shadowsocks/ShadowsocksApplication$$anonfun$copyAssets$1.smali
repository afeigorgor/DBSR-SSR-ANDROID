.class public final Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksApplication.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksApplication;->copyAssets(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/lang/String;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksApplication;

.field public final assetManager$1:Landroid/content/res/AssetManager;

.field public final path$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksApplication;Ljava/lang/String;Landroid/content/res/AssetManager;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksApplication;
    .param p2, "path$1"    # Ljava/lang/String;
    .param p3, "assetManager$1"    # Landroid/content/res/AssetManager;

    .prologue
    .line 216
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;->path$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;->assetManager$1:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 216
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;->apply(Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v0, Lcom/github/shadowsocks/utils/CloseUtils$;->MODULE$:Lcom/github/shadowsocks/utils/CloseUtils$;

    new-instance v1, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$1;

    invoke-direct {v1, p0, p1}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$1;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;Ljava/lang/String;)V

    new-instance v2, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;

    invoke-direct {v2, p0, p1}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1$$anonfun$apply$2;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/utils/CloseUtils$;->autoClose(Lscala/Function0;Lscala/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic com$github$shadowsocks$ShadowsocksApplication$$anonfun$$$outer()Lcom/github/shadowsocks/ShadowsocksApplication;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    return-object v0
.end method
