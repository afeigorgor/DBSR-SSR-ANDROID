.class public Lcom/github/shadowsocks/utils/TaskerSettings;
.super Ljava/lang/Object;
.source "TaskerSettings.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private profileId:I

.field private switchOn:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    sget-object v0, Lcom/github/shadowsocks/utils/TaskerSettings$;->MODULE$:Lcom/github/shadowsocks/utils/TaskerSettings$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TaskerSettings$;->com$github$shadowsocks$utils$TaskerSettings$$KEY_SWITCH_ON()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/github/shadowsocks/utils/TaskerSettings;->switchOn:Z

    .line 59
    sget-object v0, Lcom/github/shadowsocks/utils/TaskerSettings$;->MODULE$:Lcom/github/shadowsocks/utils/TaskerSettings$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TaskerSettings$;->com$github$shadowsocks$utils$TaskerSettings$$KEY_PROFILE_ID()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId:I

    return-void
.end method


# virtual methods
.method public profileId()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId:I

    return v0
.end method

.method public profileId_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId:I

    return-void
.end method

.method public switchOn()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/github/shadowsocks/utils/TaskerSettings;->switchOn:Z

    return v0
.end method

.method public switchOn_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/github/shadowsocks/utils/TaskerSettings;->switchOn:Z

    return-void
.end method

.method public toIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TaskerSettings;->switchOn()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/github/shadowsocks/utils/TaskerSettings$;->MODULE$:Lcom/github/shadowsocks/utils/TaskerSettings$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/TaskerSettings$;->com$github$shadowsocks$utils$TaskerSettings$$KEY_SWITCH_ON()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId()I

    move-result v2

    if-ltz v2, :cond_1

    sget-object v2, Lcom/github/shadowsocks/utils/TaskerSettings$;->MODULE$:Lcom/github/shadowsocks/utils/TaskerSettings$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/TaskerSettings$;->com$github$shadowsocks$utils$TaskerSettings$$KEY_PROFILE_ID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.twofortyfouram.locale.intent.extra.BUNDLE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.twofortyfouram.locale.intent.extra.BLURB"

    .line 66
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/github/shadowsocks/database/ProfileManager;->getProfile(I)Lscala/Option;

    move-result-object v2

    .line 67
    instance-of v5, v2, Lscala/Some;

    if-eqz v5, :cond_3

    check-cast v2, Lscala/Some;

    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/shadowsocks/database/Profile;

    .local v1, "p":Lcom/github/shadowsocks/database/Profile;
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TaskerSettings;->switchOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0900bb

    :goto_0
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .end local v1    # "p":Lcom/github/shadowsocks/database/Profile;
    :goto_1
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 67
    .restart local v1    # "p":Lcom/github/shadowsocks/database/Profile;
    :cond_2
    const v2, 0x7f0900c0

    goto :goto_0

    .line 68
    .end local v1    # "p":Lcom/github/shadowsocks/database/Profile;
    :cond_3
    sget-object v5, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TaskerSettings;->switchOn()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0900bc

    :goto_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const v2, 0x7f0900bf

    goto :goto_2

    .line 66
    :cond_5
    new-instance v3, Lscala/MatchError;

    invoke-direct {v3, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
