.class public final Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$switchProfile$1;
.super Lscala/runtime/AbstractFunction0;
.source "ShadowsocksApplication.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksApplication;->switchProfile(I)Lcom/github/shadowsocks/database/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Lcom/github/shadowsocks/database/Profile;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksApplication;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksApplication;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksApplication;

    .prologue
    .line 114
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$switchProfile$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()Lcom/github/shadowsocks/database/Profile;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$switchProfile$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$switchProfile$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/ProfileManager;->createProfile$default$1()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->createProfile(Lcom/github/shadowsocks/database/Profile;)Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$switchProfile$1;->apply()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    return-object v0
.end method
