.class public final Lcom/evernote/android/job/JobManager$Config;
.super Ljava/lang/Object;
.source "JobManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Config"
.end annotation


# instance fields
.field private mAllowSmallerIntervals:Z

.field private mGcmEnabled:Z

.field private mVerbose:Z

.field final synthetic this$0:Lcom/evernote/android/job/JobManager;


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/JobManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/evernote/android/job/JobManager;

    .prologue
    const/4 v0, 0x1

    .line 534
    iput-object p1, p0, Lcom/evernote/android/job/JobManager$Config;->this$0:Lcom/evernote/android/job/JobManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mVerbose:Z

    .line 536
    iput-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mGcmEnabled:Z

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mAllowSmallerIntervals:Z

    .line 538
    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobManager;Lcom/evernote/android/job/JobManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/evernote/android/job/JobManager;
    .param p2, "x1"    # Lcom/evernote/android/job/JobManager$1;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobManager$Config;-><init>(Lcom/evernote/android/job/JobManager;)V

    return-void
.end method


# virtual methods
.method public isAllowSmallerIntervalsForMarshmallow()Z
    .locals 2

    .prologue
    .line 605
    iget-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mAllowSmallerIntervals:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGcmApiEnabled()Z
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/evernote/android/job/JobManager$Config;->mGcmEnabled:Z

    return v0
.end method
