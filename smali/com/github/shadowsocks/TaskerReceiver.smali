.class public Lcom/github/shadowsocks/TaskerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TaskerReceiver.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    sget-object v2, Lcom/github/shadowsocks/utils/TaskerSettings$;->MODULE$:Lcom/github/shadowsocks/utils/TaskerSettings$;

    invoke-virtual {v2, p2}, Lcom/github/shadowsocks/utils/TaskerSettings$;->fromIntent(Landroid/content/Intent;)Lcom/github/shadowsocks/utils/TaskerSettings;

    move-result-object v0

    .line 51
    .local v0, "settings":Lcom/github/shadowsocks/utils/TaskerSettings;
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/database/ProfileManager;->getProfile(I)Lscala/Option;

    move-result-object v2

    .line 52
    instance-of v2, v2, Lscala/Some;

    if-eqz v2, :cond_0

    .line 53
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->switchProfile(I)Lcom/github/shadowsocks/database/Profile;

    .line 54
    const/4 v1, 0x1

    .line 57
    .local v1, "switched":Z
    :goto_0
    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TaskerSettings;->switchOn()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v2, p1}, Lcom/github/shadowsocks/utils/Utils$;->startSsService(Landroid/content/Context;)V

    .line 49
    :goto_1
    return-void

    .line 55
    .end local v1    # "switched":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    .restart local v1    # "switched":Z
    :cond_1
    sget-object v2, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v2, p1}, Lcom/github/shadowsocks/utils/Utils$;->stopSsService(Landroid/content/Context;)V

    goto :goto_1
.end method
