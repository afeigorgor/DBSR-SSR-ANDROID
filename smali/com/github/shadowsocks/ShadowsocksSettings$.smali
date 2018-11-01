.class public final Lcom/github/shadowsocks/ShadowsocksSettings$;
.super Ljava/lang/Object;
.source "ShadowsocksSettings.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/ShadowsocksSettings$;


# instance fields
.field private final com$github$shadowsocks$ShadowsocksSettings$$FEATURE_PREFS:[Ljava/lang/String;

.field private final com$github$shadowsocks$ShadowsocksSettings$$PROXY_PREFS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/ShadowsocksSettings$;

    invoke-direct {v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/ShadowsocksSettings$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksSettings$;

    .line 36
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->group_name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->host()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->remotePort()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->localPort()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->password()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->method()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 37
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->protocol()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    const/16 v1, 0x8

    .line 37
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->obfs()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    const/16 v1, 0x9

    .line 37
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->obfs_param()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    const/16 v1, 0xa

    .line 37
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->dns()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    const/16 v1, 0xb

    .line 37
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->china_dns()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 36
    const/16 v1, 0xc

    .line 37
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->protocol_param()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$;->com$github$shadowsocks$ShadowsocksSettings$$PROXY_PREFS:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->route()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->proxyApps()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->udpdns()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->ipv6()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->tfo()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$;->com$github$shadowsocks$ShadowsocksSettings$$FEATURE_PREFS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public com$github$shadowsocks$ShadowsocksSettings$$FEATURE_PREFS()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$;->com$github$shadowsocks$ShadowsocksSettings$$FEATURE_PREFS:[Ljava/lang/String;

    return-object v0
.end method

.method public com$github$shadowsocks$ShadowsocksSettings$$PROXY_PREFS()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$;->com$github$shadowsocks$ShadowsocksSettings$$PROXY_PREFS:[Ljava/lang/String;

    return-object v0
.end method

.method public updateDropDownPreference(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    check-cast p1, Lcom/github/shadowsocks/preferences/DropDownPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1, p2}, Lcom/github/shadowsocks/preferences/DropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public updateNumberPickerPreference(Landroid/preference/Preference;I)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "value"    # I

    .prologue
    .line 51
    check-cast p1, Lcom/github/shadowsocks/preferences/NumberPickerPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1, p2}, Lcom/github/shadowsocks/preferences/NumberPickerPreference;->setValue(I)V

    return-void
.end method

.method public updatePasswordEditTextPreference(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 47
    check-cast p1, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1, p2}, Lcom/github/shadowsocks/preferences/PasswordEditTextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public updatePreference(Landroid/preference/Preference;Ljava/lang/String;Lcom/github/shadowsocks/database/Profile;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 64
    .line 65
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->group_name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    if-eqz p2, :cond_11

    .line 66
    :cond_0
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->name()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    if-eqz p2, :cond_13

    .line 67
    :cond_1
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->remotePort()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_14

    if-eqz p2, :cond_15

    .line 68
    :cond_2
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->localPort()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    if-eqz p2, :cond_17

    .line 69
    :cond_3
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->password()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    if-eqz p2, :cond_19

    .line 70
    :cond_4
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->method()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    if-eqz p2, :cond_1b

    .line 71
    :cond_5
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->protocol()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    if-eqz p2, :cond_1d

    .line 72
    :cond_6
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->protocol_param()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1e

    if-eqz p2, :cond_1f

    .line 73
    :cond_7
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->obfs()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    if-eqz p2, :cond_21

    .line 74
    :cond_8
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->obfs_param()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_22

    if-eqz p2, :cond_23

    .line 75
    :cond_9
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->route()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    if-eqz p2, :cond_25

    .line 76
    :cond_a
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->proxyApps()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_26

    if-eqz p2, :cond_27

    .line 77
    :cond_b
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->udpdns()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_28

    if-eqz p2, :cond_29

    .line 78
    :cond_c
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->dns()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2a

    if-eqz p2, :cond_2b

    .line 79
    :cond_d
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->china_dns()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2c

    if-eqz p2, :cond_2d

    .line 80
    :cond_e
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->ipv6()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2e

    if-eqz p2, :cond_2f

    .line 81
    :cond_f
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 64
    :goto_0
    return-void

    .line 65
    :cond_10
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_11
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->url_group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateSummaryEditTextPreference(Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 66
    :cond_12
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_13
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateSummaryEditTextPreference(Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 67
    :cond_14
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_15
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->remotePort()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateNumberPickerPreference(Landroid/preference/Preference;I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 68
    :cond_16
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_17
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->localPort()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateNumberPickerPreference(Landroid/preference/Preference;I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 69
    :cond_18
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_19
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updatePasswordEditTextPreference(Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 70
    :cond_1a
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_1b
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateDropDownPreference(Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 71
    :cond_1c
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1d
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->protocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateDropDownPreference(Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 72
    :cond_1e
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1f
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->protocol_param()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateSummaryEditTextPreference(Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 73
    :cond_20
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_21
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->obfs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateDropDownPreference(Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 74
    :cond_22
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_23
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->obfs_param()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateSummaryEditTextPreference(Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 75
    :cond_24
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_25
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateDropDownPreference(Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 76
    :cond_26
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_27
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->proxyApps()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateSwitchPreference(Landroid/preference/Preference;Z)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 77
    :cond_28
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_29
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->udpdns()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateSwitchPreference(Landroid/preference/Preference;Z)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 78
    :cond_2a
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_2b
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->dns()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateSummaryEditTextPreference(Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 79
    :cond_2c
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_2d
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->china_dns()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateSummaryEditTextPreference(Landroid/preference/Preference;Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 80
    :cond_2e
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_2f
    invoke-virtual {p3}, Lcom/github/shadowsocks/database/Profile;->ipv6()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->updateSwitchPreference(Landroid/preference/Preference;Z)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0
.end method

.method public updateSummaryEditTextPreference(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    check-cast p1, Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1, p2}, Lcom/github/shadowsocks/preferences/SummaryEditTextPreference;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public updateSwitchPreference(Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "value"    # Z

    .prologue
    .line 60
    check-cast p1, Landroid/preference/SwitchPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
