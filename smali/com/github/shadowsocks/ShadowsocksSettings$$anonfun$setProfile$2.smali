.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$2;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->setProfile(Lcom/github/shadowsocks/database/Profile;)V
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

.field private final profile$1:Lcom/github/shadowsocks/database/Profile;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings;Lcom/github/shadowsocks/database/Profile;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings;
    .param p2, "profile$1"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 495
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$2;->profile$1:Lcom/github/shadowsocks/database/Profile;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 495
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$2;->apply(Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 495
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksSettings$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksSettings$;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v1, p1}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$2;->profile$1:Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v0, v1, p1, v2}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updatePreference(Landroid/preference/Preference;Ljava/lang/String;Lcom/github/shadowsocks/database/Profile;)V

    return-void
.end method
