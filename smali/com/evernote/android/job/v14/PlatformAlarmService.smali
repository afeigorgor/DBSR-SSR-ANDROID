.class public Lcom/evernote/android/job/v14/PlatformAlarmService;
.super Landroid/app/IntentService;
.source "PlatformAlarmService.java"


# static fields
.field private static final EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/evernote/android/job/v14/PlatformAlarmService;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/evernote/android/job/v14/PlatformAlarmService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method static createIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobId"    # I

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evernote/android/job/v14/PlatformAlarmService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_JOB_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    if-nez p1, :cond_1

    .line 60
    const-string v3, "Delivered intent is null"

    invoke-static {v3}, Lnet/vrallev/android/cat/Cat;->i(Ljava/lang/String;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v3, "EXTRA_JOB_ID"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 65
    .local v1, "jobId":I
    new-instance v0, Lcom/evernote/android/job/JobProxy$Common;

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/JobProxy$Common;-><init>(Landroid/app/Service;I)V

    .line 68
    .local v0, "common":Lcom/evernote/android/job/JobProxy$Common;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/evernote/android/job/JobProxy$Common;->getPendingRequest(Z)Lcom/evernote/android/job/JobRequest;

    move-result-object v2

    .line 69
    .local v2, "request":Lcom/evernote/android/job/JobRequest;
    if-eqz v2, :cond_0

    .line 74
    sget-object v3, Lcom/evernote/android/job/v14/PlatformAlarmService;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/evernote/android/job/v14/PlatformAlarmService$1;

    invoke-direct {v4, p0, v0, v2, p1}, Lcom/evernote/android/job/v14/PlatformAlarmService$1;-><init>(Lcom/evernote/android/job/v14/PlatformAlarmService;Lcom/evernote/android/job/JobProxy$Common;Lcom/evernote/android/job/JobRequest;Landroid/content/Intent;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
