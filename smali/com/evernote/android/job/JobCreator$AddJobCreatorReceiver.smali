.class public abstract Lcom/evernote/android/job/JobCreator$AddJobCreatorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "JobCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AddJobCreatorReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract addJobCreator(Landroid/content/Context;Lcom/evernote/android/job/JobManager;)V
.end method
