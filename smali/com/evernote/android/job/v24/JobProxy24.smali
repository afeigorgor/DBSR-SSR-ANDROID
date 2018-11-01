.class public Lcom/evernote/android/job/v24/JobProxy24;
.super Lcom/evernote/android/job/v21/JobProxy21;
.source "JobProxy24.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-string v0, "JobProxy24"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v21/JobProxy21;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I
    .locals 2
    .param p1, "networkType"    # Lcom/evernote/android/job/JobRequest$NetworkType;

    .prologue
    .line 73
    sget-object v0, Lcom/evernote/android/job/v24/JobProxy24$1;->$SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest$NetworkType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-super {p0, p1}, Lcom/evernote/android/job/v21/JobProxy21;->convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I

    move-result v0

    :goto_0
    return v0

    .line 75
    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 73
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected createBuilderPeriodic(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "intervalMs"    # J
    .param p4, "flexMs"    # J

    .prologue
    .line 68
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z
    .locals 4
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    const/4 v1, 0x0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v24/JobProxy24;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v2

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/evernote/android/job/v24/JobProxy24;->mCat:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v2, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/evernote/android/job/v24/JobProxy24;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "plantPeriodicFlexSupport called although flex is supported"

    invoke-virtual {v0, v1}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1}, Lcom/evernote/android/job/v21/JobProxy21;->plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V

    .line 54
    return-void
.end method
