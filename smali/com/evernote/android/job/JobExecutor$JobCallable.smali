.class final Lcom/evernote/android/job/JobExecutor$JobCallable;
.super Ljava/lang/Object;
.source "JobExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/evernote/android/job/Job$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final mJob:Lcom/evernote/android/job/Job;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/evernote/android/job/JobExecutor;


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/JobExecutor;Lcom/evernote/android/job/Job;)V
    .locals 4
    .param p2, "job"    # Lcom/evernote/android/job/Job;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->this$0:Lcom/evernote/android/job/JobExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    .line 126
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v1}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 127
    .local v0, "context":Landroid/content/Context;
    const-string v1, "JobExecutor"

    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$100()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;Ljava/lang/String;J)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobExecutor;Lcom/evernote/android/job/Job;Lcom/evernote/android/job/JobExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/evernote/android/job/JobExecutor;
    .param p2, "x1"    # Lcom/evernote/android/job/Job;
    .param p3, "x2"    # Lcom/evernote/android/job/JobExecutor$1;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/JobExecutor$JobCallable;-><init>(Lcom/evernote/android/job/JobExecutor;Lcom/evernote/android/job/Job;)V

    return-void
.end method

.method private handleResult(Lcom/evernote/android/job/Job$Result;)V
    .locals 4
    .param p1, "result"    # Lcom/evernote/android/job/Job$Result;

    .prologue
    const/4 v3, 0x1

    .line 164
    iget-object v2, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v2}, Lcom/evernote/android/job/Job;->getParams()Lcom/evernote/android/job/Job$Params;

    move-result-object v2

    invoke-virtual {v2}, Lcom/evernote/android/job/Job$Params;->getRequest()Lcom/evernote/android/job/JobRequest;

    move-result-object v1

    .line 165
    .local v1, "request":Lcom/evernote/android/job/JobRequest;
    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/evernote/android/job/Job$Result;->RESCHEDULE:Lcom/evernote/android/job/Job$Result;

    invoke-virtual {v2, p1}, Lcom/evernote/android/job/Job$Result;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-virtual {v1, v3, v3}, Lcom/evernote/android/job/JobRequest;->reschedule(ZZ)I

    move-result v0

    .line 167
    .local v0, "newJobId":I
    iget-object v2, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v2, v0}, Lcom/evernote/android/job/Job;->onReschedule(I)V

    .line 171
    .end local v0    # "newJobId":I
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/evernote/android/job/Job$Result;->SUCCESS:Lcom/evernote/android/job/Job$Result;

    invoke-virtual {v2, p1}, Lcom/evernote/android/job/Job$Result;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest;->incNumFailures()V

    goto :goto_0
.end method

.method private runJob()Lcom/evernote/android/job/Job$Result;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v2}, Lcom/evernote/android/job/Job;->runJob()Lcom/evernote/android/job/Job$Result;

    move-result-object v0

    .line 151
    .local v0, "result":Lcom/evernote/android/job/Job$Result;
    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$300()Lnet/vrallev/android/cat/CatLog;

    move-result-object v2

    const-string v3, "Finished %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lnet/vrallev/android/cat/CatLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-direct {p0, v0}, Lcom/evernote/android/job/JobExecutor$JobCallable;->handleResult(Lcom/evernote/android/job/Job$Result;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-object v0

    .line 155
    .end local v0    # "result":Lcom/evernote/android/job/Job$Result;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$300()Lnet/vrallev/android/cat/CatLog;

    move-result-object v2

    const-string v3, "Crashed %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    aput-object v5, v4, v7

    invoke-virtual {v2, v1, v3, v4}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v2, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v2}, Lcom/evernote/android/job/Job;->getResult()Lcom/evernote/android/job/Job$Result;

    move-result-object v0

    .restart local v0    # "result":Lcom/evernote/android/job/Job$Result;
    goto :goto_0
.end method


# virtual methods
.method public call()Lcom/evernote/android/job/Job$Result;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-virtual {v0}, Lcom/evernote/android/job/Job;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$100()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/evernote/android/job/WakeLockUtil;->acquireWakeLock(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;J)Z

    .line 135
    invoke-direct {p0}, Lcom/evernote/android/job/JobExecutor$JobCallable;->runJob()Lcom/evernote/android/job/Job$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->this$0:Lcom/evernote/android/job/JobExecutor;

    iget-object v2, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-static {v1, v2}, Lcom/evernote/android/job/JobExecutor;->access$200(Lcom/evernote/android/job/JobExecutor;Lcom/evernote/android/job/Job;)V

    .line 140
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    :cond_0
    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$300()Lnet/vrallev/android/cat/CatLog;

    move-result-object v1

    const-string v2, "Wake lock was not held after job %s was done. The job took too long to complete. This could have unintended side effects on your app."

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, Lcom/evernote/android/job/WakeLockUtil;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 135
    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->this$0:Lcom/evernote/android/job/JobExecutor;

    iget-object v2, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    invoke-static {v1, v2}, Lcom/evernote/android/job/JobExecutor;->access$200(Lcom/evernote/android/job/JobExecutor;Lcom/evernote/android/job/Job;)V

    .line 140
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_3

    .line 141
    :cond_2
    invoke-static {}, Lcom/evernote/android/job/JobExecutor;->access$300()Lnet/vrallev/android/cat/CatLog;

    move-result-object v1

    const-string v2, "Wake lock was not held after job %s was done. The job took too long to complete. This could have unintended side effects on your app."

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mJob:Lcom/evernote/android/job/Job;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/evernote/android/job/JobExecutor$JobCallable;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {v1}, Lcom/evernote/android/job/WakeLockUtil;->releaseWakeLock(Landroid/os/PowerManager$WakeLock;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/evernote/android/job/JobExecutor$JobCallable;->call()Lcom/evernote/android/job/Job$Result;

    move-result-object v0

    return-object v0
.end method
