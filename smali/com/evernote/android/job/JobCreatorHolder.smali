.class Lcom/evernote/android/job/JobCreatorHolder;
.super Ljava/lang/Object;
.source "JobCreatorHolder.java"


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;


# instance fields
.field private final mJobCreators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/evernote/android/job/JobCreator;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitor:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobCreatorHolder"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobCreatorHolder;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mMonitor:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public addJobCreator(Lcom/evernote/android/job/JobCreator;)V
    .locals 2
    .param p1, "creator"    # Lcom/evernote/android/job/JobCreator;

    .prologue
    .line 26
    iget-object v1, p0, Lcom/evernote/android/job/JobCreatorHolder;->mMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createJob(Ljava/lang/String;)Lcom/evernote/android/job/Job;
    .locals 11
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    .local v4, "jobCreators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evernote/android/job/JobCreator;>;"
    const/4 v6, 0x0

    .line 41
    .local v6, "singleJobCreator":Lcom/evernote/android/job/JobCreator;
    iget-object v9, p0, Lcom/evernote/android/job/JobCreatorHolder;->mMonitor:Ljava/lang/Object;

    monitor-enter v9

    .line 42
    :try_start_0
    iget-object v7, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 43
    .local v1, "count":I
    if-nez v1, :cond_0

    .line 44
    sget-object v7, Lcom/evernote/android/job/JobCreatorHolder;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v10, "no JobCreator added"

    invoke-virtual {v7, v10}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;)V

    .line 45
    monitor-exit v9

    move-object v2, v8

    .line 68
    :goto_0
    return-object v2

    .line 47
    :cond_0
    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    .line 49
    iget-object v7, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/evernote/android/job/JobCreator;

    move-object v6, v0

    .line 53
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v6, :cond_2

    .line 56
    invoke-interface {v6, p1}, Lcom/evernote/android/job/JobCreator;->create(Ljava/lang/String;)Lcom/evernote/android/job/Job;

    move-result-object v2

    goto :goto_0

    .line 51
    :cond_1
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v4    # "jobCreators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evernote/android/job/JobCreator;>;"
    .local v5, "jobCreators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evernote/android/job/JobCreator;>;"
    move-object v4, v5

    .end local v5    # "jobCreators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evernote/android/job/JobCreator;>;"
    .restart local v4    # "jobCreators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/evernote/android/job/JobCreator;>;"
    goto :goto_1

    .line 53
    .end local v1    # "count":I
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 59
    .restart local v1    # "count":I
    :cond_2
    if-eqz v4, :cond_4

    .line 60
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evernote/android/job/JobCreator;

    .line 61
    .local v3, "jobCreator":Lcom/evernote/android/job/JobCreator;
    invoke-interface {v3, p1}, Lcom/evernote/android/job/JobCreator;->create(Ljava/lang/String;)Lcom/evernote/android/job/Job;

    move-result-object v2

    .line 62
    .local v2, "job":Lcom/evernote/android/job/Job;
    if-eqz v2, :cond_3

    goto :goto_0

    .end local v2    # "job":Lcom/evernote/android/job/Job;
    .end local v3    # "jobCreator":Lcom/evernote/android/job/JobCreator;
    :cond_4
    move-object v2, v8

    .line 68
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/evernote/android/job/JobCreatorHolder;->mMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobCreatorHolder;->mJobCreators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
