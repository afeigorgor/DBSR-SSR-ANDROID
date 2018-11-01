.class Lcom/evernote/android/job/v21/PlatformJobService$1;
.super Ljava/lang/Object;
.source "PlatformJobService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/android/job/v21/PlatformJobService;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/android/job/v21/PlatformJobService;

.field final synthetic val$common:Lcom/evernote/android/job/JobProxy$Common;

.field final synthetic val$params:Landroid/app/job/JobParameters;

.field final synthetic val$request:Lcom/evernote/android/job/JobRequest;


# direct methods
.method constructor <init>(Lcom/evernote/android/job/v21/PlatformJobService;Lcom/evernote/android/job/JobProxy$Common;Lcom/evernote/android/job/JobRequest;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/evernote/android/job/v21/PlatformJobService;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->this$0:Lcom/evernote/android/job/v21/PlatformJobService;

    iput-object p2, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->val$common:Lcom/evernote/android/job/JobProxy$Common;

    iput-object p3, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->val$request:Lcom/evernote/android/job/JobRequest;

    iput-object p4, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->val$common:Lcom/evernote/android/job/JobProxy$Common;

    iget-object v1, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->val$request:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobProxy$Common;->executeJobRequest(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/Job$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->this$0:Lcom/evernote/android/job/v21/PlatformJobService;

    iget-object v1, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v3}, Lcom/evernote/android/job/v21/PlatformJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 77
    return-void

    .line 75
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->this$0:Lcom/evernote/android/job/v21/PlatformJobService;

    iget-object v2, p0, Lcom/evernote/android/job/v21/PlatformJobService$1;->val$params:Landroid/app/job/JobParameters;

    invoke-virtual {v1, v2, v3}, Lcom/evernote/android/job/v21/PlatformJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    throw v0
.end method
