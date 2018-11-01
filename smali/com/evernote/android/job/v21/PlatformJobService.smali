.class public Lcom/evernote/android/job/v21/PlatformJobService;
.super Landroid/app/job/JobService;
.source "PlatformJobService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;

.field private static final EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "PlatformJobService"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/v21/PlatformJobService;->CAT:Lnet/vrallev/android/cat/CatLog;

    .line 55
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/evernote/android/job/v21/PlatformJobService;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 60
    .local v1, "jobId":I
    new-instance v0, Lcom/evernote/android/job/JobProxy$Common;

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/JobProxy$Common;-><init>(Landroid/app/Service;I)V

    .line 62
    .local v0, "common":Lcom/evernote/android/job/JobProxy$Common;
    invoke-virtual {v0, v3}, Lcom/evernote/android/job/JobProxy$Common;->getPendingRequest(Z)Lcom/evernote/android/job/JobRequest;

    move-result-object v2

    .line 63
    .local v2, "request":Lcom/evernote/android/job/JobRequest;
    if-nez v2, :cond_0

    .line 64
    const/4 v3, 0x0

    .line 81
    :goto_0
    return v3

    .line 67
    :cond_0
    sget-object v4, Lcom/evernote/android/job/v21/PlatformJobService;->EXECUTOR_SERVICE:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/evernote/android/job/v21/PlatformJobService$1;

    invoke-direct {v5, p0, v0, v2, p1}, Lcom/evernote/android/job/v21/PlatformJobService$1;-><init>(Lcom/evernote/android/job/v21/PlatformJobService;Lcom/evernote/android/job/JobProxy$Common;Lcom/evernote/android/job/JobRequest;Landroid/app/job/JobParameters;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 86
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/evernote/android/job/JobManager;->getJob(I)Lcom/evernote/android/job/Job;

    move-result-object v0

    .line 87
    .local v0, "job":Lcom/evernote/android/job/Job;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/evernote/android/job/Job;->cancel()V

    .line 89
    sget-object v1, Lcom/evernote/android/job/v21/PlatformJobService;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v2, "Called onStopJob for %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :goto_0
    return v5

    .line 91
    :cond_0
    sget-object v1, Lcom/evernote/android/job/v21/PlatformJobService;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v2, "Called onStopJob, job %d not found"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
