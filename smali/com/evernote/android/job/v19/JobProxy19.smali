.class public Lcom/evernote/android/job/v19/JobProxy19;
.super Lcom/evernote/android/job/v14/JobProxy14;
.source "JobProxy19.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-string v0, "JobProxy19"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/JobProxy14;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method protected plantOneOffFlexSupport(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 65
    .local v8, "currentTime":J
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v6

    add-long v2, v8, v6

    .line 66
    .local v2, "startMs":J
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v6

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v10

    sub-long v4, v6, v10

    .local v4, "lengthMs":J
    move-object v0, p2

    move-object v6, p3

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    .line 70
    iget-object v0, p0, Lcom/evernote/android/job/v19/JobProxy19;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v6, "Scheduled repeating alarm (flex support), %s, start %s, end %s, flex %s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v7, v10

    .line 71
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v1

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v1

    const/4 v1, 0x3

    .line 72
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v1

    .line 70
    invoke-virtual {v0, v6, v7}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method protected plantOneOffInexact(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 12
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 53
    .local v8, "currentTime":J
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v6

    add-long v2, v8, v6

    .line 54
    .local v2, "startMs":J
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v6

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v10

    sub-long v4, v6, v10

    .local v4, "lengthMs":J
    move-object v0, p2

    move-object v6, p3

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    .line 58
    iget-object v0, p0, Lcom/evernote/android/job/v19/JobProxy19;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v6, "Schedule alarm, %s, start %s, end %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v7, v10

    .line 59
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getStartMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v1

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getEndMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v1

    .line 58
    invoke-virtual {v0, v6, v7}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method
