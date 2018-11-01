.class public Lcom/evernote/android/job/v14/PlatformAlarmReceiver;
.super Landroid/support/v4/content/WakefulBroadcastReceiver;
.source "PlatformAlarmReceiver.java"


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "PlatformAlarmReceiver"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/support/v4/content/WakefulBroadcastReceiver;-><init>()V

    return-void
.end method

.method static createIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobId"    # I

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_JOB_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    if-eqz p2, :cond_0

    const-string v2, "EXTRA_JOB_ID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v2, "EXTRA_JOB_ID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/evernote/android/job/v14/PlatformAlarmService;->createIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 58
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/evernote/android/job/util/JobUtil;->hasWakeLockPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    :try_start_0
    invoke-static {p1, v1}, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;->startWakefulService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;->CAT:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v2, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
