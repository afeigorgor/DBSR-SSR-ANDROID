.class public final Lcom/github/shadowsocks/AppManager$$anonfun$onMenuItemClick$1;
.super Lscala/runtime/AbstractFunction1;
.source "AppManager.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/AppManager;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lcom/github/shadowsocks/database/Profile;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final proxiedAppString$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/AppManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/AppManager;
    .param p2, "proxiedAppString$1"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p2, p0, Lcom/github/shadowsocks/AppManager$$anonfun$onMenuItemClick$1;->proxiedAppString$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p1, Lcom/github/shadowsocks/database/Profile;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/AppManager$$anonfun$onMenuItemClick$1;->apply(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lcom/github/shadowsocks/database/Profile;)Z
    .locals 1
    .param p1, "p"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$$anonfun$onMenuItemClick$1;->proxiedAppString$1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/github/shadowsocks/database/Profile;->individual_$eq(Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method
