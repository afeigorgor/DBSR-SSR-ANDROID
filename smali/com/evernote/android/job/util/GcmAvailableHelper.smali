.class final Lcom/evernote/android/job/util/GcmAvailableHelper;
.super Ljava/lang/Object;
.source "GcmAvailableHelper.java"


# static fields
.field private static final GCM_IN_CLASSPATH:Z

.field private static checkedServiceEnabled:Z

.field private static gcmServiceAvailable:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v2, -0x1

    sput v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 34
    :try_start_0
    const-string v2, "com.google.android.gms.gcm.GcmNetworkManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 v0, 0x1

    .line 39
    .local v0, "gcmInClasspath":Z
    :goto_0
    sput-boolean v0, Lcom/evernote/android/job/util/GcmAvailableHelper;->GCM_IN_CLASSPATH:Z

    .line 40
    return-void

    .line 36
    .end local v0    # "gcmInClasspath":Z
    :catch_0
    move-exception v1

    .line 37
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .restart local v0    # "gcmInClasspath":Z
    goto :goto_0
.end method

.method private static hasPermission(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .line 88
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 92
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_2

    const-string v3, "com.google.android.gms.permission.BIND_NETWORK_TASK_SERVICE"

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v3, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v3, :cond_2

    .line 93
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isGcmApiSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 44
    :try_start_0
    sget-boolean v3, Lcom/evernote/android/job/util/GcmAvailableHelper;->checkedServiceEnabled:Z

    if-nez v3, :cond_0

    .line 45
    const/4 v3, 0x1

    sput-boolean v3, Lcom/evernote/android/job/util/GcmAvailableHelper;->checkedServiceEnabled:Z

    .line 46
    sget-boolean v3, Lcom/evernote/android/job/util/GcmAvailableHelper;->GCM_IN_CLASSPATH:Z

    invoke-static {p0, v3}, Lcom/evernote/android/job/util/GcmAvailableHelper;->setServiceEnabled(Landroid/content/Context;Z)V

    .line 49
    :cond_0
    sget-boolean v3, Lcom/evernote/android/job/util/GcmAvailableHelper;->GCM_IN_CLASSPATH:Z

    if-eqz v3, :cond_1

    .line 50
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_1

    .line 51
    invoke-static {p0}, Lcom/evernote/android/job/util/GcmAvailableHelper;->isGcmServiceRegistered(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 56
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 55
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lnet/vrallev/android/cat/Cat;->w(Ljava/lang/Throwable;)V

    move v1, v2

    .line 56
    goto :goto_0
.end method

.method private static isGcmServiceRegistered(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    if-gez v2, :cond_3

    .line 62
    const-class v3, Lcom/evernote/android/job/util/JobApi;

    monitor-enter v3

    .line 63
    :try_start_0
    sget v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    if-gez v2, :cond_2

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/evernote/android/job/gcm/PlatformGcmService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v1}, Lcom/evernote/android/job/util/GcmAvailableHelper;->hasPermission(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 67
    const/4 v2, 0x1

    sput v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 68
    sget v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    monitor-exit v3

    .line 84
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v2

    .line 71
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.google.android.gms.gcm.ACTION_TASK_READY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 74
    invoke-static {v1}, Lcom/evernote/android/job/util/GcmAvailableHelper;->hasPermission(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    const/4 v2, 0x1

    sput v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 76
    sget v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    monitor-exit v3

    goto :goto_0

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 79
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    sput v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_3
    sget v2, Lcom/evernote/android/job/util/GcmAvailableHelper;->gcmServiceAvailable:I

    goto :goto_0
.end method

.method private static setServiceEnabled(Landroid/content/Context;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 104
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lcom/evernote/android/job/gcm/JobProxyGcm;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".PlatformGcmService"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    .local v1, "component":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    .line 108
    .local v2, "componentEnabled":I
    packed-switch v2, :pswitch_data_0

    .line 129
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "componentEnabled":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 110
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local v2    # "componentEnabled":I
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :pswitch_0
    if-nez p1, :cond_0

    .line 111
    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 112
    const-string v5, "GCM service disabled"

    invoke-static {v5}, Lnet/vrallev/android/cat/Cat;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v2    # "componentEnabled":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .line 127
    .local v4, "t":Ljava/lang/Throwable;
    invoke-static {v4}, Lnet/vrallev/android/cat/Cat;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v0    # "className":Ljava/lang/String;
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local v2    # "componentEnabled":I
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :pswitch_1
    if-eqz p1, :cond_0

    .line 119
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v3, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 120
    const-string v5, "GCM service enabled"

    invoke-static {v5}, Lnet/vrallev/android/cat/Cat;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
