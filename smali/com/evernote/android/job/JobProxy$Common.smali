.class public final Lcom/evernote/android/job/JobProxy$Common;
.super Ljava/lang/Object;
.source "JobProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Common"
.end annotation


# instance fields
.field private final mCat:Lnet/vrallev/android/cat/CatLog;

.field private final mContext:Landroid/content/Context;

.field private final mJobId:I

.field private final mJobManager:Lcom/evernote/android/job/JobManager;


# direct methods
.method public constructor <init>(Landroid/app/Service;I)V
    .locals 1
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "jobId"    # I

    .prologue
    .line 103
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/evernote/android/job/JobProxy$Common;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loggingTag"    # Ljava/lang/String;
    .param p3, "jobId"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/evernote/android/job/JobProxy$Common;->mContext:Landroid/content/Context;

    .line 108
    iput p3, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    .line 109
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    invoke-direct {v0, p2}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lnet/vrallev/android/cat/CatLog;

    .line 111
    invoke-static {p1}, Lcom/evernote/android/job/JobManager;->create(Landroid/content/Context;)Lcom/evernote/android/job/JobManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    .line 112
    return-void
.end method

.method private static checkNoOverflow(JZ)J
    .locals 0
    .param p0, "result"    # J
    .param p2, "condition"    # Z

    .prologue
    .line 69
    if-eqz p2, :cond_0

    .end local p0    # "result":J
    :goto_0
    return-wide p0

    .restart local p0    # "result":J
    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private static checkedAdd(JJ)J
    .locals 10
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    add-long v0, p0, p2

    .line 65
    .local v0, "result":J
    xor-long v4, p0, p2

    cmp-long v4, v4, v8

    if-gez v4, :cond_0

    move v4, v2

    :goto_0
    xor-long v6, p0, v0

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    :goto_1
    or-int/2addr v2, v4

    invoke-static {v0, v1, v2}, Lcom/evernote/android/job/JobProxy$Common;->checkNoOverflow(JZ)J

    move-result-wide v2

    return-wide v2

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static cleanUpOrphanedJob(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jobId"    # I

    .prologue
    .line 224
    invoke-static {}, Lcom/evernote/android/job/util/JobApi;->values()[Lcom/evernote/android/job/util/JobApi;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 225
    .local v0, "jobApi":Lcom/evernote/android/job/util/JobApi;
    invoke-virtual {v0, p0}, Lcom/evernote/android/job/util/JobApi;->isSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/evernote/android/job/util/JobApi;->getCachedProxy(Landroid/content/Context;)Lcom/evernote/android/job/JobProxy;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/evernote/android/job/JobProxy;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "jobApi":Lcom/evernote/android/job/util/JobApi;
    :cond_1
    return-void

    .line 228
    .restart local v0    # "jobApi":Lcom/evernote/android/job/util/JobApi;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private cleanUpOrphanedJob(Z)V
    .locals 2
    .param p1, "cleanUp"    # Z

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/evernote/android/job/JobProxy$Common;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v0, v1}, Lcom/evernote/android/job/JobProxy$Common;->cleanUpOrphanedJob(Landroid/content/Context;I)V

    .line 216
    :cond_0
    return-void
.end method

.method public static getAverageDelayMs(Lcom/evernote/android/job/JobRequest;)J
    .locals 6
    .param p0, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 81
    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/JobProxy$Common;->checkedAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getAverageDelayMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J
    .locals 6
    .param p0, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 93
    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/JobProxy$Common;->checkedAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEndMs(Lcom/evernote/android/job/JobRequest;)J
    .locals 4
    .param p0, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getEndMs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getBackoffOffset()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/JobProxy$Common;->checkedAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J
    .locals 2
    .param p0, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStartMs(Lcom/evernote/android/job/JobRequest;)J
    .locals 4
    .param p0, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getStartMs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getBackoffOffset()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/JobProxy$Common;->checkedAdd(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J
    .locals 6
    .param p0, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 85
    const-wide/16 v0, 0x1

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public executeJobRequest(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/Job$Result;
    .locals 14
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getScheduledAt()J

    move-result-wide v10

    sub-long v6, v8, v10

    .line 155
    .local v6, "waited":J
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 156
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "interval %s, flex %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 157
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 156
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 165
    .local v5, "timeWindow":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-ne v8, v9, :cond_0

    .line 166
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v9, "Running JobRequest on a main thread, this could cause stutter or ANR in your app."

    invoke-virtual {v8, v9}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;)V

    .line 169
    :cond_0
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v9, "Run job, %s, waited %s, %s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v5, v10, v11

    invoke-virtual {v8, v9, v10}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v8}, Lcom/evernote/android/job/JobManager;->getJobExecutor()Lcom/evernote/android/job/JobExecutor;

    move-result-object v3

    .line 171
    .local v3, "jobExecutor":Lcom/evernote/android/job/JobExecutor;
    const/4 v2, 0x0

    .line 175
    .local v2, "job":Lcom/evernote/android/job/Job;
    :try_start_0
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v8}, Lcom/evernote/android/job/JobManager;->getJobCreatorHolder()Lcom/evernote/android/job/JobCreatorHolder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/evernote/android/job/JobCreatorHolder;->createJob(Ljava/lang/String;)Lcom/evernote/android/job/Job;

    move-result-object v2

    .line 177
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v8

    if-nez v8, :cond_1

    .line 178
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/evernote/android/job/JobRequest;->setTransient(Z)V

    .line 181
    :cond_1
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8, p1, v2}, Lcom/evernote/android/job/JobExecutor;->execute(Landroid/content/Context;Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/Job;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 182
    .local v1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/evernote/android/job/Job$Result;>;"
    if-nez v1, :cond_6

    .line 183
    sget-object v4, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v8

    if-nez v8, :cond_5

    .line 203
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v8}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 199
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/evernote/android/job/Job$Result;>;"
    :cond_2
    :goto_1
    return-object v4

    .line 158
    .end local v2    # "job":Lcom/evernote/android/job/Job;
    .end local v3    # "jobExecutor":Lcom/evernote/android/job/JobExecutor;
    .end local v5    # "timeWindow":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobApi()Lcom/evernote/android/job/util/JobApi;

    move-result-object v8

    invoke-virtual {v8}, Lcom/evernote/android/job/util/JobApi;->supportsExecutionWindow()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 159
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "start %s, end %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    .line 160
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 159
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "timeWindow":Ljava/lang/String;
    goto/16 :goto_0

    .line 162
    .end local v5    # "timeWindow":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "delay "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getAverageDelayMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "timeWindow":Ljava/lang/String;
    goto/16 :goto_0

    .line 205
    .restart local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/evernote/android/job/Job$Result;>;"
    .restart local v2    # "job":Lcom/evernote/android/job/Job;
    .restart local v3    # "jobExecutor":Lcom/evernote/android/job/JobExecutor;
    :cond_5
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isFlexSupport()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 206
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v8}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 207
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lcom/evernote/android/job/JobRequest;->reschedule(ZZ)I

    goto :goto_1

    .line 187
    :cond_6
    :try_start_1
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evernote/android/job/Job$Result;

    .line 188
    .local v4, "result":Lcom/evernote/android/job/Job$Result;
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v9, "Finished job, %s %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v8

    if-nez v8, :cond_7

    .line 203
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v8}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    goto/16 :goto_1

    .line 205
    :cond_7
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isFlexSupport()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 206
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v8}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 207
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lcom/evernote/android/job/JobRequest;->reschedule(ZZ)I

    goto/16 :goto_1

    .line 191
    .end local v1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/evernote/android/job/Job$Result;>;"
    .end local v4    # "result":Lcom/evernote/android/job/Job$Result;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v8, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 194
    if-eqz v2, :cond_8

    .line 195
    invoke-virtual {v2}, Lcom/evernote/android/job/Job;->cancel()V

    .line 196
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v9, "Canceled %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v8, v9, v10}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_8
    sget-object v4, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v8

    if-nez v8, :cond_9

    .line 203
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v8}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    goto/16 :goto_1

    .line 205
    :cond_9
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isFlexSupport()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 206
    iget-object v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v8}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 207
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Lcom/evernote/android/job/JobRequest;->reschedule(ZZ)I

    goto/16 :goto_1

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v9

    if-nez v9, :cond_b

    .line 203
    iget-object v9, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v9}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 207
    :cond_a
    :goto_3
    throw v8

    .line 205
    :cond_b
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isFlexSupport()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 206
    iget-object v9, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v9}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/evernote/android/job/JobStorage;->remove(Lcom/evernote/android/job/JobRequest;)V

    .line 207
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Lcom/evernote/android/job/JobRequest;->reschedule(ZZ)I

    goto :goto_3

    .line 191
    :catch_1
    move-exception v8

    move-object v0, v8

    goto :goto_2
.end method

.method public getPendingRequest(Z)Lcom/evernote/android/job/JobRequest;
    .locals 11
    .param p1, "cleanUpOrphanedJob"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 116
    iget-object v6, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    iget v7, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-virtual {v6, v7, v4}, Lcom/evernote/android/job/JobManager;->getJobRequest(IZ)Lcom/evernote/android/job/JobRequest;

    move-result-object v2

    .line 117
    .local v2, "request":Lcom/evernote/android/job/JobRequest;
    iget-object v6, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobManager:Lcom/evernote/android/job/JobManager;

    iget v7, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-virtual {v6, v7}, Lcom/evernote/android/job/JobManager;->getJob(I)Lcom/evernote/android/job/Job;

    move-result-object v0

    .line 118
    .local v0, "job":Lcom/evernote/android/job/Job;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 120
    .local v1, "periodic":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/evernote/android/job/Job;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 122
    iget-object v6, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v7, "Job %d is already running, %s"

    new-array v8, v10, [Ljava/lang/Object;

    iget v9, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v2, v8, v4

    invoke-virtual {v6, v7, v8}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 148
    .end local v2    # "request":Lcom/evernote/android/job/JobRequest;
    :cond_0
    :goto_1
    return-object v2

    .end local v1    # "periodic":Z
    .restart local v2    # "request":Lcom/evernote/android/job/JobRequest;
    :cond_1
    move v1, v5

    .line 118
    goto :goto_0

    .line 126
    .restart local v1    # "periodic":Z
    :cond_2
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 127
    iget-object v6, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v7, "Job %d already finished, %s"

    new-array v8, v10, [Ljava/lang/Object;

    iget v9, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v2, v8, v4

    invoke-virtual {v6, v7, v8}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobProxy$Common;->cleanUpOrphanedJob(Z)V

    move-object v2, v3

    .line 129
    goto :goto_1

    .line 131
    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/evernote/android/job/Job;->getFinishedTimeStamp()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x7d0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    .line 133
    iget-object v6, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v7, "Job %d is periodic and just finished, %s"

    new-array v8, v10, [Ljava/lang/Object;

    iget v9, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v2, v8, v4

    invoke-virtual {v6, v7, v8}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 135
    goto :goto_1

    .line 137
    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/evernote/android/job/JobRequest;->isTransient()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 138
    iget-object v6, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v7, "Request %d is transient, %s"

    new-array v8, v10, [Ljava/lang/Object;

    iget v9, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v2, v8, v4

    invoke-virtual {v6, v7, v8}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 140
    goto :goto_1

    .line 142
    :cond_5
    if-nez v2, :cond_0

    .line 143
    iget-object v6, p0, Lcom/evernote/android/job/JobProxy$Common;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v7, "Request for ID %d was null"

    new-array v4, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/evernote/android/job/JobProxy$Common;->mJobId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-virtual {v6, v7, v4}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobProxy$Common;->cleanUpOrphanedJob(Z)V

    move-object v2, v3

    .line 145
    goto :goto_1
.end method
