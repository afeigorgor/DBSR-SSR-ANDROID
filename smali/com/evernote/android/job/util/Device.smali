.class public final Lcom/evernote/android/job/util/Device;
.super Ljava/lang/Object;
.source "Device.java"


# direct methods
.method public static getNetworkType(Landroid/content/Context;)Lcom/evernote/android/job/JobRequest$NetworkType;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 89
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 90
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    :cond_0
    sget-object v4, Lcom/evernote/android/job/JobRequest$NetworkType;->ANY:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 100
    :goto_0
    return-object v4

    .line 94
    :cond_1
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 95
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    sget-object v4, Lcom/evernote/android/job/JobRequest$NetworkType;->CONNECTED:Lcom/evernote/android/job/JobRequest$NetworkType;

    goto :goto_0

    .line 99
    :cond_2
    invoke-static {v0}, Landroid/support/v4/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z

    move-result v1

    .line 100
    .local v1, "metered":Z
    if-eqz v1, :cond_3

    sget-object v4, Lcom/evernote/android/job/JobRequest$NetworkType;->NOT_ROAMING:Lcom/evernote/android/job/JobRequest$NetworkType;

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/evernote/android/job/JobRequest$NetworkType;->UNMETERED:Lcom/evernote/android/job/JobRequest$NetworkType;

    goto :goto_0
.end method

.method public static isCharging(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    const/4 v4, 0x0

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v2

    .line 63
    :cond_1
    const-string v4, "plugged"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 64
    .local v1, "plugged":I
    if-eq v1, v3, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v4, v5, :cond_0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static isIdle(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 72
    .local v0, "powerManager":Landroid/os/PowerManager;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_3

    .line 78
    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    move v2, v1

    .line 82
    :cond_2
    :goto_0
    return v2

    .line 79
    :cond_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v3, v4, :cond_4

    .line 80
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    goto :goto_0

    .line 82
    :cond_4
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    goto :goto_0
.end method
