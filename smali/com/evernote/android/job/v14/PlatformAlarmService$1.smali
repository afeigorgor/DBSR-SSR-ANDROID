.class Lcom/evernote/android/job/v14/PlatformAlarmService$1;
.super Ljava/lang/Object;
.source "PlatformAlarmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evernote/android/job/v14/PlatformAlarmService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/android/job/v14/PlatformAlarmService;

.field final synthetic val$common:Lcom/evernote/android/job/JobProxy$Common;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$request:Lcom/evernote/android/job/JobRequest;


# direct methods
.method constructor <init>(Lcom/evernote/android/job/v14/PlatformAlarmService;Lcom/evernote/android/job/JobProxy$Common;Lcom/evernote/android/job/JobRequest;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/evernote/android/job/v14/PlatformAlarmService;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->this$0:Lcom/evernote/android/job/v14/PlatformAlarmService;

    iput-object p2, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->val$common:Lcom/evernote/android/job/JobProxy$Common;

    iput-object p3, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->val$request:Lcom/evernote/android/job/JobRequest;

    iput-object p4, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->val$common:Lcom/evernote/android/job/JobProxy$Common;

    iget-object v1, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->val$request:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobProxy$Common;->executeJobRequest(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/Job$Result;

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/PlatformAlarmService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    goto :goto_0
.end method
