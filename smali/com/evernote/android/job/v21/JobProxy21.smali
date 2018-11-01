.class public Lcom/evernote/android/job/v21/JobProxy21;
.super Ljava/lang/Object;
.source "JobProxy21.java"

# interfaces
.implements Lcom/evernote/android/job/JobProxy;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field protected final mCat:Lnet/vrallev/android/cat/CatLog;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const-string v0, "JobProxy21"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v21/JobProxy21;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/evernote/android/job/v21/JobProxy21;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    invoke-direct {v0, p2}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lnet/vrallev/android/cat/CatLog;

    .line 64
    return-void
.end method

.method protected static scheduleResultToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "scheduleResult"    # I

    .prologue
    .line 183
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "success"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "failure"

    goto :goto_0
.end method


# virtual methods
.method public cancel(I)V
    .locals 2
    .param p1, "jobId"    # I

    .prologue
    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/JobProxy21;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v1, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I
    .locals 3
    .param p1, "networkType"    # Lcom/evernote/android/job/JobRequest$NetworkType;

    .prologue
    const/4 v0, 0x2

    .line 155
    sget-object v1, Lcom/evernote/android/job/v21/JobProxy21$1;->$SwitchMap$com$evernote$android$job$JobRequest$NetworkType:[I

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest$NetworkType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_0
    const/4 v0, 0x0

    .line 163
    :goto_0
    :pswitch_1
    return v0

    .line 159
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected createBaseBuilder(Lcom/evernote/android/job/JobRequest;)Landroid/app/job/JobInfo$Builder;
    .locals 5
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 139
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/evernote/android/job/v21/JobProxy21;->mContext:Landroid/content/Context;

    const-class v4, Lcom/evernote/android/job/v21/PlatformJobService;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 140
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiresCharging()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiresDeviceIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/evernote/android/job/v21/JobProxy21;->convertNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPersisted()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 139
    return-object v0
.end method

.method protected createBuilderOneOff(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "startMs"    # J
    .param p4, "endMs"    # J

    .prologue
    .line 147
    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected createBuilderPeriodic(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;
    .locals 2
    .param p1, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p2, "intervalMs"    # J
    .param p4, "flexMs"    # J

    .prologue
    .line 151
    invoke-virtual {p1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final getJobScheduler()Landroid/app/job/JobScheduler;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/evernote/android/job/v21/JobProxy21;->mContext:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    return-object v0
.end method

.method public isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z
    .locals 7
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    const/4 v4, 0x0

    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/JobProxy21;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 124
    .local v2, "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    .end local v2    # "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :cond_0
    :goto_0
    return v4

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v5, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "pendingJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v3

    .line 129
    .local v3, "requestId":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    .line 130
    .local v1, "info":Landroid/app/job/JobInfo;
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 131
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public plantOneOff(Lcom/evernote/android/job/JobRequest;)V
    .locals 11
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 68
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    .line 69
    .local v2, "startMs":J
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v4

    .line 71
    .local v4, "endMs":J
    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v21/JobProxy21;->createBaseBuilder(Lcom/evernote/android/job/JobRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/JobProxy21;->createBuilderOneOff(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v6

    .line 72
    .local v6, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {p0, v6}, Lcom/evernote/android/job/v21/JobProxy21;->schedule(Landroid/app/job/JobInfo;)I

    move-result v7

    .line 74
    .local v7, "scheduleResult":I
    iget-object v0, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "Schedule one-off jobInfo %s, %s, start %s, end %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Lcom/evernote/android/job/v21/JobProxy21;->scheduleResultToString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    .line 75
    invoke-static {v2, v3}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v4, v5}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 74
    invoke-virtual {v0, v1, v8}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public plantPeriodic(Lcom/evernote/android/job/JobRequest;)V
    .locals 11
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v2

    .line 81
    .local v2, "intervalMs":J
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v4

    .line 83
    .local v4, "flexMs":J
    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v21/JobProxy21;->createBaseBuilder(Lcom/evernote/android/job/JobRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/JobProxy21;->createBuilderPeriodic(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v6

    .line 84
    .local v6, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {p0, v6}, Lcom/evernote/android/job/v21/JobProxy21;->schedule(Landroid/app/job/JobInfo;)I

    move-result v7

    .line 86
    .local v7, "scheduleResult":I
    iget-object v0, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "Schedule periodic jobInfo %s, %s, interval %s, flex %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Lcom/evernote/android/job/v21/JobProxy21;->scheduleResultToString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    .line 87
    invoke-static {v2, v3}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v4, v5}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 86
    invoke-virtual {v0, v1, v8}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V
    .locals 12
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 92
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    .line 93
    .local v2, "startMs":J
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v4

    .line 95
    .local v4, "endMs":J
    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v21/JobProxy21;->createBaseBuilder(Lcom/evernote/android/job/JobRequest;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/evernote/android/job/v21/JobProxy21;->createBuilderOneOff(Landroid/app/job/JobInfo$Builder;JJ)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v6

    .line 96
    .local v6, "jobInfo":Landroid/app/job/JobInfo;
    invoke-virtual {p0, v6}, Lcom/evernote/android/job/v21/JobProxy21;->schedule(Landroid/app/job/JobInfo;)I

    move-result v7

    .line 98
    .local v7, "scheduleResult":I
    iget-object v0, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "Schedule periodic (flex support) jobInfo %s, %s, start %s, end %s, flex %s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v7}, Lcom/evernote/android/job/v21/JobProxy21;->scheduleResultToString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    .line 99
    invoke-static {v2, v3}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v4, v5}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 98
    invoke-virtual {v0, v1, v8}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method protected final schedule(Landroid/app/job/JobInfo;)I
    .locals 2
    .param p1, "jobInfo"    # Landroid/app/job/JobInfo;

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/evernote/android/job/v21/JobProxy21;->getJobScheduler()Landroid/app/job/JobScheduler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 178
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/evernote/android/job/v21/JobProxy21;->mCat:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v1, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 178
    const/4 v1, 0x0

    goto :goto_0
.end method
