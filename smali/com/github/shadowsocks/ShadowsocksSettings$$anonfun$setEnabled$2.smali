.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$2;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->setEnabled(Z)V
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
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksSettings;

.field private final enabled$1:Z


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings;Z)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings;
    .param p2, "enabled$1"    # Z

    .prologue
    .line 485
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iput-boolean p2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$2;->enabled$1:Z

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 485
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$2;->apply(Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v1, p1}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 487
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$2;->enabled$1:Z

    if-eqz v1, :cond_4

    .line 488
    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->proxyApps()Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_2

    if-eqz v1, :cond_3

    .line 487
    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 485
    :cond_1
    return-void

    .line 488
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    sget-object v1, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Utils$;->isLollipopOrAbove()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->isNatEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method
