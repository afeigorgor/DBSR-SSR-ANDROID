.class Lcom/evernote/android/job/JobManager$1;
.super Ljava/lang/Thread;
.source "JobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/android/job/JobManager;->rescheduleTasksIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/android/job/JobManager;

.field final synthetic val$wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/evernote/android/job/JobManager;Landroid/os/PowerManager$WakeLock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/evernote/android/job/JobManager;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/evernote/android/job/JobManager$1;->this$0:Lcom/evernote/android/job/JobManager;

    iput-object p2, p0, Lcom/evernote/android/job/JobManager$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 495
    const-wide/16 v8, 0x2710

    :try_start_0
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 497
    iget-object v7, p0, Lcom/evernote/android/job/JobManager$1;->this$0:Lcom/evernote/android/job/JobManager;

    invoke-static {v7}, Lcom/evernote/android/job/JobManager;->access$100(Lcom/evernote/android/job/JobManager;)Lcom/evernote/android/job/JobStorage;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/evernote/android/job/JobStorage;->getAllJobRequests(Ljava/lang/String;Z)Ljava/util/Set;

    move-result-object v2

    .line 499
    .local v2, "requests":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/JobRequest;>;"
    const/4 v4, 0x0

    .line 500
    .local v4, "rescheduledCount":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/android/job/JobRequest;

    .line 502
    .local v1, "request":Lcom/evernote/android/job/JobRequest;
    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest;->isTransient()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 503
    iget-object v8, p0, Lcom/evernote/android/job/JobManager$1;->this$0:Lcom/evernote/android/job/JobManager;

    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/evernote/android/job/JobManager;->getJob(I)Lcom/evernote/android/job/Job;

    move-result-object v0

    .line 504
    .local v0, "job":Lcom/evernote/android/job/Job;
    if-nez v0, :cond_1

    move v3, v5

    .line 509
    .end local v0    # "job":Lcom/evernote/android/job/Job;
    .local v3, "reschedule":Z
    :goto_1
    if-eqz v3, :cond_0

    .line 511
    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest;->cancelAndEdit()Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v8

    .line 512
    invoke-virtual {v8}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object v8

    .line 513
    invoke-virtual {v8}, Lcom/evernote/android/job/JobRequest;->schedule()I

    .line 515
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "reschedule":Z
    .restart local v0    # "job":Lcom/evernote/android/job/Job;
    :cond_1
    move v3, v6

    .line 504
    goto :goto_1

    .line 506
    .end local v0    # "job":Lcom/evernote/android/job/Job;
    :cond_2
    iget-object v8, p0, Lcom/evernote/android/job/JobManager$1;->this$0:Lcom/evernote/android/job/JobManager;

    invoke-static {v8, v1}, Lcom/evernote/android/job/JobManager;->access$200(Lcom/evernote/android/job/JobManager;Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/JobProxy;

    move-result-object v8

    invoke-interface {v8, v1}, Lcom/evernote/android/job/JobProxy;->isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z

    move-result v8

    if-nez v8, :cond_3

    move v3, v5

    .restart local v3    # "reschedule":Z
    :goto_2
    goto :goto_1

    .end local v3    # "reschedule":Z
    :cond_3
    move v3, v6

    goto :goto_2

    .line 519
    .end local v1    # "request":Lcom/evernote/android/job/JobRequest;
    :cond_4
    invoke-static {}, Lcom/evernote/android/job/JobManager;->access$300()Lnet/vrallev/android/cat/CatLog;

    move-result-object v5

    const-string v6, "Reschedule %d jobs of %d jobs"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    iget-object v5, p0, Lcom/evernote/android/job/JobManager$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v5}, Lcom/evernote/android/job/WakeLockUtil;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 524
    return-void

    .line 522
    .end local v2    # "requests":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/JobRequest;>;"
    .end local v4    # "rescheduledCount":I
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/evernote/android/job/JobManager$1;->val$wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v6}, Lcom/evernote/android/job/WakeLockUtil;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    throw v5
.end method
