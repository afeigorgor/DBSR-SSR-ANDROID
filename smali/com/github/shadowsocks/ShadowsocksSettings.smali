.class public Lcom/github/shadowsocks/ShadowsocksSettings;
.super Landroid/preference/PreferenceFragment;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private volatile bitmap$0:Z

.field private enabled:Z

.field private isProxyApps:Landroid/preference/SwitchPreference;

.field private natSwitch:Landroid/preference/SwitchPreference;

.field private profile:Lcom/github/shadowsocks/database/Profile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->enabled:Z

    return-void
.end method

.method private enabled_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 482
    iput-boolean p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->enabled:Z

    return-void
.end method

.method private isProxyApps()Landroid/preference/SwitchPreference;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->isProxyApps:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private isProxyApps_$eq(Landroid/preference/SwitchPreference;)V
    .locals 0
    .param p1, "x$1"    # Landroid/preference/SwitchPreference;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->isProxyApps:Landroid/preference/SwitchPreference;

    return-void
.end method

.method private natSwitch$lzycompute()Landroid/preference/SwitchPreference;
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->bitmap$0:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->isNAT()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->natSwitch:Landroid/preference/SwitchPreference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->natSwitch:Landroid/preference/SwitchPreference;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/Shadowsocks;

    return-object v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onCheckedChanged$body$1(Landroid/widget/CompoundButton;ZLandroid/content/SharedPreferences;)V
    .locals 10
    .param p1, "x$28"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z
    .param p3, "prefs$1"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 354
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 355
    .local v0, "prefs_edit":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_1

    .line 356
    const-string v2, "frontproxy_enable"

    invoke-interface {v0, v2, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 357
    new-instance v2, Ljava/io/File;

    new-instance v3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    const-string v4, "/proxychains.conf"

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    .line 358
    sget-object v4, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    .line 359
    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PROXYCHAINS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "frontproxy_type"

    const-string v7, "socks5"

    invoke-interface {p3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 360
    const-string v6, "frontproxy_addr"

    const-string v7, ""

    invoke-interface {p3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 359
    const/4 v6, 0x2

    .line 361
    const-string v7, "frontproxy_port"

    const-string v8, ""

    invoke-interface {p3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 359
    const/4 v6, 0x3

    .line 362
    const-string v7, "frontproxy_username"

    const-string v8, ""

    invoke-interface {p3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 359
    const/4 v6, 0x4

    .line 363
    const-string v7, "frontproxy_password"

    const-string v8, ""

    invoke-interface {p3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 359
    invoke-virtual {v4, v5}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, "proxychains_conf":Ljava/lang/String;
    sget-object v2, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v3, Ljava/io/File;

    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v5, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, "/proxychains.conf"

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$com$github$shadowsocks$ShadowsocksSettings$$onCheckedChanged$body$1$1;

    invoke-direct {v4, p0, v1}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$com$github$shadowsocks$ShadowsocksSettings$$onCheckedChanged$body$1$1;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 355
    .end local v1    # "proxychains_conf":Ljava/lang/String;
    :cond_0
    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 374
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 369
    :cond_1
    const-string v2, "frontproxy_enable"

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 370
    new-instance v2, Ljava/io/File;

    new-instance v3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    const-string v4, "/proxychains.conf"

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    new-instance v2, Ljava/io/File;

    new-instance v3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    const-string v4, "/proxychains.conf"

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    goto :goto_0

    .line 370
    :cond_2
    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onClick$body$1(Landroid/content/DialogInterface;ILandroid/widget/EditText;)V
    .locals 2
    .param p1, "x$3"    # Landroid/content/DialogInterface;
    .param p2, "x$4"    # I
    .param p3, "HostEditText$1"    # Landroid/widget/EditText;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/Profile;->host_$eq(Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    return-void
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onClick$body$2(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "x$5"    # Landroid/content/DialogInterface;
    .param p2, "x$6"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksSettings;->setProfile(Lcom/github/shadowsocks/database/Profile;)V

    return-void
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onClick$body$3(Landroid/content/DialogInterface;ILjava/lang/Object;Landroid/widget/EditText;)V
    .locals 3
    .param p1, "x$16"    # Landroid/content/DialogInterface;
    .param p2, "x$17"    # I
    .param p3, "value$1"    # Ljava/lang/Object;
    .param p4, "AclUrlEditText$1"    # Landroid/widget/EditText;

    .prologue
    .line 163
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->aclurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    invoke-virtual {p4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksSettings;->downloadAcl(Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->route()Ljava/lang/String;

    move-result-object v1

    check-cast p3, Ljava/lang/String;

    .end local p3    # "value$1":Ljava/lang/Object;
    invoke-virtual {v0, v1, p3}, Lcom/github/shadowsocks/database/ProfileManager;->updateAllProfile_String(Ljava/lang/String;Ljava/lang/String;)Z

    .line 163
    :goto_0
    return-void

    .restart local p3    # "value$1":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksSettings;->setProfile(Lcom/github/shadowsocks/database/Profile;)V

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onClick$body$4(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "x$18"    # Landroid/content/DialogInterface;
    .param p2, "x$19"    # I

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksSettings;->setProfile(Lcom/github/shadowsocks/database/Profile;)V

    return-void
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onClick$body$5(Landroid/content/DialogInterface;ILandroid/content/SharedPreferences;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 9
    .param p1, "x$29"    # Landroid/content/DialogInterface;
    .param p2, "x$30"    # I
    .param p3, "prefs$1"    # Landroid/content/SharedPreferences;
    .param p4, "sp_frontproxy_type$1"    # Landroid/widget/Spinner;
    .param p5, "et_frontproxy_addr$1"    # Landroid/widget/EditText;
    .param p6, "et_frontproxy_port$1"    # Landroid/widget/EditText;
    .param p7, "et_frontproxy_username$1"    # Landroid/widget/EditText;
    .param p8, "et_frontproxy_password$1"    # Landroid/widget/EditText;

    .prologue
    .line 380
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 381
    .local v0, "prefs_edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "frontproxy_type"

    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    const-string v2, "frontproxy_addr"

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 384
    const-string v2, "frontproxy_port"

    invoke-virtual {p6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 385
    const-string v2, "frontproxy_username"

    invoke-virtual/range {p7 .. p7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    const-string v2, "frontproxy_password"

    invoke-virtual/range {p8 .. p8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 388
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 390
    new-instance v2, Ljava/io/File;

    new-instance v3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    const-string v4, "/proxychains.conf"

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    .line 391
    sget-object v4, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    .line 392
    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/ConfigUtils$;->PROXYCHAINS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "frontproxy_type"

    const-string v8, "socks5"

    invoke-interface {p3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 393
    const-string v7, "frontproxy_addr"

    const-string v8, ""

    invoke-interface {p3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 392
    const/4 v6, 0x2

    .line 394
    const-string v7, "frontproxy_port"

    const-string v8, ""

    invoke-interface {p3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 392
    const/4 v6, 0x3

    .line 395
    const-string v7, "frontproxy_username"

    const-string v8, ""

    invoke-interface {p3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 392
    const/4 v6, 0x4

    .line 396
    const-string v7, "frontproxy_password"

    const-string v8, ""

    invoke-interface {p3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 392
    invoke-virtual {v4, v5}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "proxychains_conf":Ljava/lang/String;
    sget-object v2, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v3, Ljava/io/File;

    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v5, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, "/proxychains.conf"

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$com$github$shadowsocks$ShadowsocksSettings$$onClick$body$5$1;

    invoke-direct {v4, p0, v1}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$com$github$shadowsocks$ShadowsocksSettings$$onClick$body$5$1;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/github/shadowsocks/utils/Utils$;->printToFile(Ljava/io/File;Lscala/Function1;)V

    .line 379
    .end local v1    # "proxychains_conf":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$1(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$1"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/github/shadowsocks/database/Profile;->url_group_$eq(Ljava/lang/String;)V

    .line 101
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$10(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$14"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/github/shadowsocks/database/Profile;->obfs_param_$eq(Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$11(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "x$15"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 157
    const-string v1, "self"

    if-nez p2, :cond_1

    if-eqz v1, :cond_2

    .line 182
    :cond_0
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v1

    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->route()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v1, v2, p2}, Lcom/github/shadowsocks/database/ProfileManager;->updateAllProfile_String(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    .line 185
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 157
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :cond_2
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, "AclUrlEditText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->aclurl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    const v2, 0x7f090029

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 162
    const v2, 0x104000a

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$15;

    invoke-direct {v3, p0, p2, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$15;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;Ljava/lang/Object;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 174
    const v2, 0x1040009

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$16;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$16;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 157
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$12(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "x$21"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 195
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    const-string v1, "proxyApps"

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/database/ProfileManager;->updateAllProfile_Boolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$13(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "x$22"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 199
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    const-string v1, "udpdns"

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/database/ProfileManager;->updateAllProfile_Boolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$14(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$23"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 202
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->dns()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v1, p2}, Lcom/github/shadowsocks/database/ProfileManager;->updateAllProfile_String(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$15(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$24"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 205
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->china_dns()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, v1, p2}, Lcom/github/shadowsocks/database/ProfileManager;->updateAllProfile_String(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$16(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "x$25"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 208
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    const-string v1, "ipv6"

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/database/ProfileManager;->updateAllProfile_Boolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$17(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "x$26"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 213
    sget-object v0, Lcom/github/shadowsocks/BootReceiver$;->MODULE$:Lcom/github/shadowsocks/BootReceiver$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v1

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/BootReceiver$;->setEnabled(Landroid/content/Context;Z)V

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$18(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$27"    # Landroid/preference/Preference;
    .param p2, "v"    # Ljava/lang/Object;

    .prologue
    .line 224
    new-instance v0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;

    invoke-direct {v0, p0, p2}, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;Ljava/lang/Object;)V

    .line 233
    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;->start()V

    .line 234
    const/4 v0, 0x1

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$2(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$2"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/github/shadowsocks/database/Profile;->name_$eq(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$3(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$7"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/Profile;->remotePort_$eq(I)V

    .line 126
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$4(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$8"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/Profile;->localPort_$eq(I)V

    .line 130
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$5(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$9"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/github/shadowsocks/database/Profile;->password_$eq(Ljava/lang/String;)V

    .line 134
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$6(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$10"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/github/shadowsocks/database/Profile;->method_$eq(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$7(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$11"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/github/shadowsocks/database/Profile;->protocol_$eq(Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$8(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$12"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/github/shadowsocks/database/Profile;->protocol_param_$eq(Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$9(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "x$13"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/github/shadowsocks/database/Profile;->obfs_$eq(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceClick$body$1(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 108
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "HostEditText":Landroid/widget/EditText;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 111
    const v2, 0x7f090091

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 112
    const v2, 0x104000a

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$4;

    invoke-direct {v3, p0, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$4;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 116
    const v2, 0x1040009

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$5;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$5;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 122
    const/4 v1, 0x1

    return v1
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceClick$body$2(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "x$20"    # Landroid/preference/Preference;

    .prologue
    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v1

    const-class v2, Lcom/github/shadowsocks/AppManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksSettings;->startActivity(Landroid/content/Intent;)V

    .line 191
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->isProxyApps()Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceClick$body$3(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 242
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    const-string v1, "ShadowsocksSettings"

    const-string v2, "reset"

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->recovery()V

    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceClick$body$4(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 248
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    const-string v1, "ShadowsocksSettings"

    const-string v2, "ignore_battery_optimization"

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->ignoreBatteryOptimization()V

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceClick$body$5(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x1

    .line 254
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    const-string v2, "ShadowsocksSettings"

    const-string v3, "aclupdate"

    invoke-virtual {v1, v2, v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->aclurl()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "url":Ljava/lang/String;
    const-string v1, ""

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 267
    :cond_0
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksSettings;->downloadAcl(Ljava/lang/String;)V

    .line 269
    :goto_0
    return v8

    .line 256
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    :cond_2
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 259
    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const v4, 0x7f09002a

    invoke-virtual {p0, v4}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "3.5.4"

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 260
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 261
    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceClick$body$6(Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v8, 0x1

    .line 278
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    const-string v2, "ShadowsocksSettings"

    const-string v3, "about"

    invoke-virtual {v1, v2, v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 280
    .local v0, "web":Landroid/webkit/WebView;
    const-string v1, "file:///android_asset/pages/about.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 281
    new-instance v1, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$3;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$3;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 292
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const v4, 0x7f090028

    invoke-virtual {p0, v4}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "3.5.4"

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 294
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 295
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 297
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 298
    return v8
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceClick$body$7(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 302
    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    const-string v5, "ShadowsocksSettings"

    const-string v6, "logcat"

    invoke-virtual {v4, v5, v6}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 307
    .local v1, "et_logcat":Landroid/widget/EditText;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "logcat -d"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 308
    .local v3, "logcat":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 309
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 310
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 311
    .end local v2    # "line":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    .line 316
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "logcat":Ljava/lang/Process;
    :goto_1
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 323
    const-string v5, "Logcat"

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 324
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 325
    invoke-virtual {v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 326
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    .line 327
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 328
    const/4 v4, 0x1

    return v4

    .line 312
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "logcat":Ljava/lang/Process;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 313
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 314
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    .line 318
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "logcat":Ljava/lang/Process;
    :catch_0
    move-exception v4

    .line 319
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$onPreferenceClick$body$8(Landroid/preference/Preference;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 332
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 334
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v0

    const v1, 0x7f04002c

    invoke-static {v0, v1, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 335
    .local v9, "view":Landroid/view/View;
    const v0, 0x7f1100ac

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    .line 336
    .local v8, "sw_frontproxy_enable":Landroid/widget/Switch;
    const v0, 0x7f1100ad

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 337
    .local v3, "sp_frontproxy_type":Landroid/widget/Spinner;
    const v0, 0x7f1100ae

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 338
    .local v4, "et_frontproxy_addr":Landroid/widget/EditText;
    const v0, 0x7f1100af

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 339
    .local v5, "et_frontproxy_port":Landroid/widget/EditText;
    const v0, 0x7f1100b0

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 340
    .local v6, "et_frontproxy_username":Landroid/widget/EditText;
    const v0, 0x7f1100b1

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 342
    .local v7, "et_frontproxy_password":Landroid/widget/EditText;
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x7f0d0005

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    const-string v1, "frontproxy_type"

    const-string v10, "socks5"

    invoke-interface {v2, v1, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 344
    const-string v0, "frontproxy_enable"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 345
    invoke-virtual {v8, v12}, Landroid/widget/Switch;->setChecked(Z)V

    .line 348
    :cond_0
    const-string v0, "frontproxy_addr"

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    const-string v0, "frontproxy_port"

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 350
    const-string v0, "frontproxy_username"

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    const-string v0, "frontproxy_password"

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 353
    new-instance v0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$32;

    invoke-direct {v0, p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$32;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;Landroid/content/SharedPreferences;)V

    invoke-virtual {v8, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 377
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    const v1, 0x7f090063

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v10

    .line 379
    const v11, 0x104000a

    new-instance v0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;Landroid/content/SharedPreferences;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v10, v11, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 402
    const v1, 0x1040009

    invoke-virtual {v0, v1, v13}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 406
    return v12
.end method

.method public final com$github$shadowsocks$ShadowsocksSettings$$run$body$2()V
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->detachService()V

    .line 477
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->attachService()V

    return-void
.end method

.method public downloadAcl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 411
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v1

    const v2, 0x7f09002a

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f09002b

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 412
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    new-instance v1, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    .line 447
    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->start()V

    return-void
.end method

.method public natSwitch()Landroid/preference/SwitchPreference;
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->natSwitch:Landroid/preference/SwitchPreference;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->natSwitch$lzycompute()Landroid/preference/SwitchPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const/high16 v2, 0x7f070000

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->addPreferencesFromResource(I)V

    .line 97
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 99
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->group_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$1;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$1;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 103
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$2;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$2;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$3;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$3;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 124
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->remotePort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$6;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$6;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->localPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$7;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$7;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->password()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$8;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$8;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$9;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$9;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->protocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$10;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$10;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->protocol_param()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$11;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$11;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->obfs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$12;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$12;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->obfs_param()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$13;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$13;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 156
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->route()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$14;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$14;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->proxyApps()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-direct {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->isProxyApps_$eq(Landroid/preference/SwitchPreference;)V

    .line 189
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->isProxyApps()Landroid/preference/SwitchPreference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$17;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$17;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->isProxyApps()Landroid/preference/SwitchPreference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$18;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$18;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 198
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->udpdns()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$19;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$19;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 201
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->dns()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$20;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$20;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->china_dns()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$21;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$21;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->ipv6()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$22;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$22;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->isAutoConnect()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 212
    .local v0, "switch":Landroid/preference/SwitchPreference;
    new-instance v2, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$23;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$23;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 216
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/Key$;->isAutoConnect()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    sget-object v2, Lcom/github/shadowsocks/BootReceiver$;->MODULE$:Lcom/github/shadowsocks/BootReceiver$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/github/shadowsocks/BootReceiver$;->setEnabled(Landroid/content/Context;Z)V

    .line 218
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/Key$;->isAutoConnect()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    :cond_0
    sget-object v2, Lcom/github/shadowsocks/BootReceiver$;->MODULE$:Lcom/github/shadowsocks/BootReceiver$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/BootReceiver$;->getEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 222
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->tfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    .line 223
    .local v1, "tfo":Landroid/preference/SwitchPreference;
    new-instance v2, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$24;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$24;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    sget-object v2, Lcom/github/shadowsocks/utils/TcpFastOpen$;->MODULE$:Lcom/github/shadowsocks/utils/TcpFastOpen$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/TcpFastOpen$;->supported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 238
    const v2, 0x7f0900c4

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "os.version"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 241
    :cond_1
    const-string v2, "recovery"

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$26;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$26;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 247
    const-string v2, "ignore_battery_optimization"

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$27;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$27;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 253
    const-string v2, "aclupdate"

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$28;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$28;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 272
    new-instance v2, Ljava/io/File;

    new-instance v3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    const-string v4, "self.acl"

    invoke-virtual {v3, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/Key$;->aclurl()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    .line 274
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/Key$;->aclurl()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->downloadAcl(Ljava/lang/String;)V

    .line 277
    :cond_2
    const-string v2, "about"

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$29;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$29;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 301
    const-string v2, "logcat"

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$30;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$30;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 331
    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->frontproxy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$31;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$31;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    .line 272
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 469
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 470
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->settings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "pref"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 473
    .line 474
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->isNAT()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    .line 479
    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 473
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    :cond_2
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$34;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$34;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public profile()Lcom/github/shadowsocks/database/Profile;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->profile:Lcom/github/shadowsocks/database/Profile;

    return-object v0
.end method

.method public profile_$eq(Lcom/github/shadowsocks/database/Profile;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings;->profile:Lcom/github/shadowsocks/database/Profile;

    return-void
.end method

.method public refreshProfile()V
    .locals 4

    .prologue
    .line 451
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->currentProfile()Lscala/Option;

    move-result-object v2

    .line 452
    instance-of v3, v2, Lscala/Some;

    if-eqz v3, :cond_0

    check-cast v2, Lscala/Some;

    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/shadowsocks/database/Profile;

    .line 451
    :goto_0
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile_$eq(Lcom/github/shadowsocks/database/Profile;)V

    .line 465
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->isProxyApps()Landroid/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->proxyApps()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void

    .line 453
    :cond_0
    sget-object v3, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 454
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/ProfileManager;->getFirstProfile()Lscala/Option;

    move-result-object v2

    .line 455
    instance-of v3, v2, Lscala/Some;

    if-eqz v3, :cond_1

    check-cast v2, Lscala/Some;

    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/shadowsocks/database/Profile;

    .line 456
    .local v1, "p":Lcom/github/shadowsocks/database/Profile;
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId(I)V

    goto :goto_0

    .line 458
    .end local v1    # "p":Lcom/github/shadowsocks/database/Profile;
    :cond_1
    sget-object v3, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 459
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/ProfileManager;->createDefault()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    .line 460
    .local v0, "default":Lcom/github/shadowsocks/database/Profile;
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId(I)V

    move-object v1, v0

    .line 458
    goto :goto_0

    .line 454
    .end local v0    # "default":Lcom/github/shadowsocks/database/Profile;
    :cond_2
    new-instance v3, Lscala/MatchError;

    invoke-direct {v3, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 451
    :cond_3
    new-instance v3, Lscala/MatchError;

    invoke-direct {v3, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/github/shadowsocks/ShadowsocksSettings;->enabled_$eq(Z)V

    .line 485
    sget-object v0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Key$;->isNAT()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    new-instance v2, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$1;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$1;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    invoke-virtual {v1, v2}, Lscala/collection/immutable/Stream$;->consWrapper(Lscala/Function0;)Lscala/collection/immutable/Stream$ConsWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lscala/collection/immutable/Stream$ConsWrapper;->$hash$colon$colon(Ljava/lang/Object;)Lscala/collection/immutable/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$2;

    invoke-direct {v1, p0, p1}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$2;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;Z)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Stream;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public setProfile(Lcom/github/shadowsocks/database/Profile;)V
    .locals 5
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile_$eq(Lcom/github/shadowsocks/database/Profile;)V

    .line 495
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/github/shadowsocks/ShadowsocksSettings$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksSettings$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksSettings$;->com$github$shadowsocks$ShadowsocksSettings$$PROXY_PREFS()[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/github/shadowsocks/ShadowsocksSettings$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksSettings$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksSettings$;->com$github$shadowsocks$ShadowsocksSettings$$FEATURE_PREFS()[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v2, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$1;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$1;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V

    sget-object v3, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lscala/collection/mutable/ArrayOps;->flatten(Lscala/Function1;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$2;

    invoke-direct {v1, p0, p1}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$2;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings;Lcom/github/shadowsocks/database/Profile;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    return-void
.end method
