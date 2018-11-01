.class Lcom/evernote/android/job/JobExecutor;
.super Ljava/lang/Object;
.source "JobExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/JobExecutor$JobCallable;
    }
.end annotation


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;

.field private static final WAKE_LOCK_TIMEOUT:J


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mFinishedJobsCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/evernote/android/job/Job;",
            ">;"
        }
    .end annotation
.end field

.field private final mJobs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/evernote/android/job/Job;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobExecutor"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobExecutor;->CAT:Lnet/vrallev/android/cat/CatLog;

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/JobExecutor;->WAKE_LOCK_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobsCache:Landroid/support/v4/util/LruCache;

    .line 65
    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 51
    sget-wide v0, Lcom/evernote/android/job/JobExecutor;->WAKE_LOCK_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/evernote/android/job/JobExecutor;Lcom/evernote/android/job/Job;)V
    .locals 0
    .param p0, "x0"    # Lcom/evernote/android/job/JobExecutor;
    .param p1, "x1"    # Lcom/evernote/android/job/Job;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobExecutor;->markJobAsFinished(Lcom/evernote/android/job/Job;)V

    return-void
.end method

.method static synthetic access$300()Lnet/vrallev/android/cat/CatLog;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/evernote/android/job/JobExecutor;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-object v0
.end method

.method private declared-synchronized markJobAsFinished(Lcom/evernote/android/job/Job;)V
    .locals 3
    .param p1, "job"    # Lcom/evernote/android/job/Job;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/android/job/Job$Params;->getId()I

    move-result v0

    .line 114
    .local v0, "id":I
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 115
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobsCache:Landroid/support/v4/util/LruCache;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 113
    .end local v0    # "id":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized execute(Landroid/content/Context;Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/Job;)Ljava/util/concurrent/Future;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p3, "job"    # Lcom/evernote/android/job/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/evernote/android/job/JobRequest;",
            "Lcom/evernote/android/job/Job;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/evernote/android/job/Job$Result;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 68
    monitor-enter p0

    if-nez p3, :cond_0

    .line 69
    :try_start_0
    sget-object v1, Lcom/evernote/android/job/JobExecutor;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v2, "JobCreator returned null for tag %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :goto_0
    monitor-exit p0

    return-object v0

    .line 72
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Lcom/evernote/android/job/Job;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Job for tag %s was already run, a creator should always create a new Job instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_1
    :try_start_2
    invoke-virtual {p3, p1}, Lcom/evernote/android/job/Job;->setContext(Landroid/content/Context;)Lcom/evernote/android/job/Job;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/evernote/android/job/Job;->setRequest(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/Job;

    .line 78
    sget-object v0, Lcom/evernote/android/job/JobExecutor;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "Executing %s, context %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lnet/vrallev/android/cat/CatLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/evernote/android/job/JobExecutor$JobCallable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p3, v2}, Lcom/evernote/android/job/JobExecutor$JobCallable;-><init>(Lcom/evernote/android/job/JobExecutor;Lcom/evernote/android/job/Job;Lcom/evernote/android/job/JobExecutor$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getAllJobs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/Job;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/evernote/android/job/JobExecutor;->getAllJobsForTag(Ljava/lang/String;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllJobsForTag(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/Job;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/Job;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 96
    iget-object v4, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/android/job/Job;

    .line 97
    .local v1, "job":Lcom/evernote/android/job/Job;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v4

    invoke-virtual {v4}, Lcom/evernote/android/job/Job$Params;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "job":Lcom/evernote/android/job/Job;
    :cond_2
    iget-object v4, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobsCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v4}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v3

    .line 103
    .local v3, "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/evernote/android/job/Job;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/android/job/Job;

    .line 104
    .restart local v1    # "job":Lcom/evernote/android/job/Job;
    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v5

    invoke-virtual {v5}, Lcom/evernote/android/job/Job$Params;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 105
    :cond_4
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 94
    .end local v0    # "i":I
    .end local v1    # "job":Lcom/evernote/android/job/Job;
    .end local v2    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/Job;>;"
    .end local v3    # "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/evernote/android/job/Job;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 109
    .restart local v0    # "i":I
    .restart local v2    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/Job;>;"
    .restart local v3    # "snapshot":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/evernote/android/job/Job;>;"
    :cond_5
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized getJob(I)Lcom/evernote/android/job/Job;
    .locals 3
    .param p1, "jobId"    # I

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor;->mJobs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .local v0, "job":Lcom/evernote/android/job/Job;
    if-eqz v0, :cond_0

    .end local v0    # "job":Lcom/evernote/android/job/Job;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "job":Lcom/evernote/android/job/Job;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor;->mFinishedJobsCache:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evernote/android/job/Job;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 85
    .end local v0    # "job":Lcom/evernote/android/job/Job;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
