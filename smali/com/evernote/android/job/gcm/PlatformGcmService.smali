.class public Lcom/evernote/android/job/gcm/PlatformGcmService;
.super Lcom/google/android/gms/gcm/GcmTaskService;
.source "PlatformGcmService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmTaskService;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunTask(Lcom/google/android/gms/gcm/TaskParams;)I
    .locals 6
    .param p1, "taskParams"    # Lcom/google/android/gms/gcm/TaskParams;

    .prologue
    const/4 v4, 0x2

    .line 42
    invoke-virtual {p1}, Lcom/google/android/gms/gcm/TaskParams;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 43
    .local v1, "jobId":I
    new-instance v0, Lcom/evernote/android/job/JobProxy$Common;

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/JobProxy$Common;-><init>(Landroid/app/Service;I)V

    .line 45
    .local v0, "common":Lcom/evernote/android/job/JobProxy$Common;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/evernote/android/job/JobProxy$Common;->getPendingRequest(Z)Lcom/evernote/android/job/JobRequest;

    move-result-object v2

    .line 46
    .local v2, "request":Lcom/evernote/android/job/JobRequest;
    if-nez v2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v4

    .line 50
    :cond_1
    invoke-virtual {v0, v2}, Lcom/evernote/android/job/JobProxy$Common;->executeJobRequest(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/Job$Result;

    move-result-object v3

    .line 51
    .local v3, "result":Lcom/evernote/android/job/Job$Result;
    sget-object v5, Lcom/evernote/android/job/Job$Result;->SUCCESS:Lcom/evernote/android/job/Job$Result;

    invoke-virtual {v5, v3}, Lcom/evernote/android/job/Job$Result;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    const/4 v4, 0x0

    goto :goto_0
.end method
