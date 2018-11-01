.class public Lcom/github/shadowsocks/ShadowsocksApplication;
.super Landroid/app/Application;
.source "ShadowsocksApplication.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private volatile bitmap$0:B

.field private containerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private profileManager:Lcom/github/shadowsocks/database/ProfileManager;

.field private resources:Landroid/content/res/Resources;

.field private settings:Landroid/content/SharedPreferences;

.field private ssrsubManager:Lcom/github/shadowsocks/database/SSRSubManager;

.field private tracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private checkChineseLocale(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "config"    # Landroid/content/res/Configuration;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 135
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v6, v7, :cond_1

    .line 136
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 137
    .local v1, "localeList":Landroid/os/LocaleList;
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v6

    new-array v3, v6, [Ljava/util/Locale;

    .line 138
    .local v3, "newList":[Ljava/util/Locale;
    invoke-static {v8}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v0

    .local v0, "changed":Lscala/runtime/BooleanRef;
    sget-object v6, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 139
    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v7, v8}, Lscala/Predef$;->intWrapper(I)I

    move-result v7

    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object v6

    new-instance v7, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;

    invoke-direct {v7, p0, v1, v3, v0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication;Landroid/os/LocaleList;[Ljava/util/Locale;Lscala/runtime/BooleanRef;)V

    invoke-virtual {v6, v7}, Lscala/collection/immutable/Range;->foreach$mVc$sp(Lscala/Function1;)V

    .line 147
    iget-boolean v6, v0, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v6, :cond_0

    .line 148
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 149
    .local v2, "newConfig":Landroid/content/res/Configuration;
    new-instance v7, Landroid/os/LocaleList;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "newList":[Ljava/util/Locale;
    invoke-virtual {v6, v3}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v6

    invoke-interface {v6}, Lscala/collection/mutable/ArrayOps;->distinct()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    invoke-direct {v7, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v2, v7}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 150
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 151
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 135
    .end local v0    # "changed":Lscala/runtime/BooleanRef;
    .end local v1    # "localeList":Landroid/os/LocaleList;
    .end local v2    # "newConfig":Landroid/content/res/Configuration;
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v6, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/ShadowsocksApplication;->com$github$shadowsocks$ShadowsocksApplication$$checkChineseLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v4

    .line 155
    .local v4, "newLocale":Ljava/util/Locale;
    if-eqz v4, :cond_0

    .line 156
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 157
    .restart local v2    # "newConfig":Landroid/content/res/Configuration;
    iput-object v4, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 158
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 159
    .restart local v5    # "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method private copyAssets(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 210
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 211
    .local v1, "files":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 216
    :goto_0
    if-eqz v1, :cond_0

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "files":[Ljava/lang/String;
    invoke-virtual {v2, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$1;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication;Ljava/lang/String;Landroid/content/res/AssetManager;)V

    invoke-interface {v2, v3}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 208
    :cond_0
    return-void

    .line 212
    .restart local v1    # "files":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 213
    const-string v3, "ShadowsocksApplication"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private editor$lzycompute()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->settings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->editor:Landroid/content/SharedPreferences$Editor;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private profileManager$lzycompute()Lcom/github/shadowsocks/database/ProfileManager;
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/shadowsocks/database/ProfileManager;

    new-instance v1, Lcom/github/shadowsocks/database/DBHelper;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/database/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;-><init>(Lcom/github/shadowsocks/database/DBHelper;)V

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager:Lcom/github/shadowsocks/database/ProfileManager;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager:Lcom/github/shadowsocks/database/ProfileManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resources$lzycompute()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->resources:Landroid/content/res/Resources;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->resources:Landroid/content/res/Resources;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private settings$lzycompute()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->settings:Landroid/content/SharedPreferences;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->settings:Landroid/content/SharedPreferences;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ssrsubManager$lzycompute()Lcom/github/shadowsocks/database/SSRSubManager;
    .locals 2

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/shadowsocks/database/SSRSubManager;

    new-instance v1, Lcom/github/shadowsocks/database/DBHelper;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/database/DBHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/github/shadowsocks/database/SSRSubManager;-><init>(Lcom/github/shadowsocks/database/DBHelper;)V

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager:Lcom/github/shadowsocks/database/SSRSubManager;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager:Lcom/github/shadowsocks/database/SSRSubManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private tracker$lzycompute()Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->tracker:Lcom/google/android/gms/analytics/Tracker;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->tracker:Lcom/google/android/gms/analytics/Tracker;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public com$github$shadowsocks$ShadowsocksApplication$$checkChineseLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 7
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 117
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 118
    const-string v4, "CN"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v1

    :goto_1
    if-nez v3, :cond_0

    .line 119
    invoke-virtual {p1}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v3, "Hans"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$SIMPLIFIED_CHINESE()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_3
    const-string v4, "TW"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_1

    .line 121
    :cond_5
    const-string v3, "Hant"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$TRADITIONAL_CHINESE()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_6
    const-string v3, "ShadowsocksApplication"

    new-instance v4, Lscala/collection/immutable/StringOps;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v6, "Unknown zh locale script: %s. Falling back to trying countries..."

    invoke-virtual {v5, v6}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {v5, v6}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v4, v0}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 125
    const-string v3, "SG"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$SIMPLIFIED_CHINESE()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_7
    const-string v3, "HK"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v0, v1

    :goto_2
    if-eqz v0, :cond_a

    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$TRADITIONAL_CHINESE()Ljava/util/Locale;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string v3, "MO"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_2

    .line 128
    :cond_a
    const-string v0, "ShadowsocksApplication"

    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v5, "Unknown zh locale: %s. Falling back to zh-Hans-CN..."

    invoke-virtual {v4, v5}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {v4, v1}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v3, v1}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$SIMPLIFIED_CHINESE()Ljava/util/Locale;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public containerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->containerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    return-object v0
.end method

.method public containerHolder_$eq(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .locals 0
    .param p1, "x$1"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->containerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    return-void
.end method

.method public copyAssets()V
    .locals 5

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->crashRecovery()V

    .line 241
    invoke-static {}, Lcom/github/shadowsocks/System;->getABI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->copyAssets(Ljava/lang/String;)V

    .line 242
    const-string v0, "acl"

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->copyAssets(Ljava/lang/String;)V

    .line 243
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$EXECUTABLES()[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$2;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$copyAssets$2;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication;)V

    sget-object v2, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v3, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$SH;->run([Ljava/lang/String;)Ljava/util/List;

    .line 244
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->currentVersionCode()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x145

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public crashRecovery()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 223
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    .line 225
    .local v0, "cmd":Lscala/collection/mutable/ArrayBuffer;
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "ss-local"

    aput-object v4, v2, v6

    const-string v4, "ss-tunnel"

    aput-object v4, v2, v7

    const/4 v4, 0x2

    const-string v5, "pdnsd"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "redsocks"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "tun2socks"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "proxychains"

    aput-object v5, v2, v4

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$crashRecovery$1;

    invoke-direct {v3, p0, v0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$crashRecovery$1;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication;Lscala/collection/mutable/ArrayBuffer;)V

    invoke-interface {v2, v3}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 230
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->isNatEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "iptables -t nat -F OUTPUT"

    aput-object v4, v2, v6

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 232
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "echo done"

    aput-object v4, v2, v6

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 233
    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/ArrayBuffer;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$SU;->run([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 234
    .local v1, "result":Ljava/util/List;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    .end local v1    # "result":Ljava/util/List;
    :goto_0
    return-void

    :cond_0
    sget-object v2, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lscala/reflect/ClassTag$;->apply(Ljava/lang/Class;)Lscala/reflect/ClassTag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/ArrayBuffer;->toArray(Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$SH;->run([Ljava/lang/String;)Ljava/util/List;

    goto :goto_0
.end method

.method public currentProfile()Lscala/Option;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->getProfile(I)Lscala/Option;

    move-result-object v0

    return-object v0
.end method

.method public editor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 90
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->editor$lzycompute()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->editor:Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public isNatEnabled()Z
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->settings()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->isNAT()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVpnEnabled()Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->isNatEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/github/shadowsocks/ShadowsocksApplication;->checkChineseLocale(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 169
    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3, p0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app_$eq(Lcom/github/shadowsocks/ShadowsocksApplication;)V

    .line 170
    const-string v3, "com.j256.ormlite.logger.level"

    const-string v4, "ERROR"

    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    invoke-static {v6}, Landroid/support/v7/app/AppCompatDelegate;->setCompatVectorFromResourcesEnabled(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->checkChineseLocale(Landroid/content/res/Configuration;)V

    .line 173
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v2

    .line 174
    .local v2, "tm":Lcom/google/android/gms/tagmanager/TagManager;
    const-string v3, "GTM-NT8WS8"

    const v4, 0x7f080001

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/tagmanager/TagManager;->loadContainerPreferNonDefault(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v1

    .line 175
    .local v1, "pending":Lcom/google/android/gms/common/api/PendingResult;
    new-instance v0, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication;)V

    .line 191
    .local v0, "callback":Lcom/google/android/gms/common/api/ResultCallback;
    const-wide/16 v4, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v4, v5, v3}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    .line 192
    invoke-static {p0}, Lcom/evernote/android/job/JobManager;->create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;

    move-result-object v3

    sget-object v4, Lcom/github/shadowsocks/job/DonaldTrump$;->MODULE$:Lcom/github/shadowsocks/job/DonaldTrump$;

    invoke-virtual {v3, v4}, Lcom/evernote/android/job/JobManager;->addJobCreator(Lcom/evernote/android/job/JobCreator;)V

    .line 194
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->settings()Landroid/content/SharedPreferences;

    move-result-object v3

    sget-object v4, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/Key$;->tfo()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-ne v3, v6, :cond_0

    sget-object v3, Lcom/github/shadowsocks/utils/TcpFastOpen$;->MODULE$:Lcom/github/shadowsocks/utils/TcpFastOpen$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/TcpFastOpen$;->supported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    new-instance v3, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$1;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$1;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication;)V

    .line 199
    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$1;->start()V

    .line 168
    :cond_0
    return-void
.end method

.method public profileId()I
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->settings()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->id()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public profileId(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public profileManager()Lcom/github/shadowsocks/database/ProfileManager;
    .locals 1

    .prologue
    .line 91
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager$lzycompute()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager:Lcom/github/shadowsocks/database/ProfileManager;

    goto :goto_0
.end method

.method public refreshContainerHolder()V
    .locals 2

    .prologue
    .line 204
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->containerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v0

    .line 205
    .local v0, "holder":Lcom/google/android/gms/tagmanager/ContainerHolder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ContainerHolder;->refresh()V

    .line 203
    :cond_0
    return-void
.end method

.method public resources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 93
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->resources$lzycompute()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->resources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public settings()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 89
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->settings$lzycompute()Landroid/content/SharedPreferences;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->settings:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method public ssrsubManager()Lcom/github/shadowsocks/database/SSRSubManager;
    .locals 1

    .prologue
    .line 92
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager$lzycompute()Lcom/github/shadowsocks/database/SSRSubManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager:Lcom/github/shadowsocks/database/SSRSubManager;

    goto :goto_0
.end method

.method public switchProfile(I)Lcom/github/shadowsocks/database/Profile;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId(I)V

    .line 114
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/database/ProfileManager;->getProfile(I)Lscala/Option;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$switchProfile$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$switchProfile$1;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication;)V

    invoke-virtual {v0, v1}, Lscala/Option;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    return-object v0
.end method

.method public track(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->tracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 100
    invoke-virtual {v1, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 101
    const-string v2, "3.5.4"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public track(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->tracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    .line 104
    new-instance v2, Lcom/google/android/gms/analytics/StandardExceptionParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/analytics/StandardExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/google/android/gms/analytics/StandardExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v1

    .line 105
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    return-void
.end method

.method public tracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 1

    .prologue
    .line 88
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->tracker$lzycompute()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication;->tracker:Lcom/google/android/gms/analytics/Tracker;

    goto :goto_0
.end method

.method public updateAssets()V
    .locals 3

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->settings()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->currentVersionCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x145

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksApplication;->copyAssets()V

    :cond_0
    return-void
.end method
