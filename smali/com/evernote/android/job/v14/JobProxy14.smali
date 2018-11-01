.class public Lcom/evernote/android/job/v14/JobProxy14;
.super Ljava/lang/Object;
.source "JobProxy14.java"

# interfaces
.implements Lcom/evernote/android/job/JobProxy;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field protected final mCat:Lnet/vrallev/android/cat/CatLog;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string v0, "JobProxy14"

    invoke-direct {p0, p1, v0}, Lcom/evernote/android/job/v14/JobProxy14;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logTag"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/evernote/android/job/v14/JobProxy14;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    invoke-direct {v0, p2}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lnet/vrallev/android/cat/CatLog;

    .line 61
    return-void
.end method

.method private logScheduled(Lcom/evernote/android/job/JobRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "Scheduled alarm, %s, delay %s, exact %b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    .line 115
    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getAverageDelayMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isExact()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 114
    invoke-virtual {v0, v1, v2}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    return-void
.end method


# virtual methods
.method public cancel(I)V
    .locals 3
    .param p1, "jobId"    # I

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/evernote/android/job/v14/JobProxy14;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 149
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 151
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/evernote/android/job/v14/JobProxy14;->createPendingIntentFlags(Z)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 152
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/evernote/android/job/v14/JobProxy14;->createPendingIntentFlags(Z)I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v2, v1}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected createPendingIntentFlags(Z)I
    .locals 2
    .param p1, "repeating"    # Z

    .prologue
    .line 168
    const/high16 v0, 0x8000000

    .line 169
    .local v0, "flags":I
    if-nez p1, :cond_0

    .line 170
    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    .line 172
    :cond_0
    return v0
.end method

.method protected getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mAlarmManager:Landroid/app/AlarmManager;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "AlarmManager is null"

    invoke-virtual {v0, v1}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/String;)V

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/v14/JobProxy14;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method protected getPendingIntent(II)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 184
    iget-object v2, p0, Lcom/evernote/android/job/v14/JobProxy14;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/evernote/android/job/v14/PlatformAlarmReceiver;->createIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    .line 188
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/evernote/android/job/v14/JobProxy14;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 193
    :goto_0
    return-object v2

    .line 189
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v2, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 193
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getPendingIntent(Lcom/evernote/android/job/JobRequest;I)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "flags"    # I

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected getPendingIntent(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "repeating"    # Z

    .prologue
    .line 176
    invoke-virtual {p0, p2}, Lcom/evernote/android/job/v14/JobProxy14;->createPendingIntentFlags(Z)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(Lcom/evernote/android/job/JobRequest;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected getTriggerAtMillis(Lcom/evernote/android/job/JobRequest;)J
    .locals 4
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getAverageDelayMs(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isPlatformJobScheduled(Lcom/evernote/android/job/JobRequest;)Z
    .locals 2
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 163
    const/high16 v1, 0x20000000

    invoke-virtual {p0, p1, v1}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(Lcom/evernote/android/job/JobRequest;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 164
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public plantOneOff(Lcom/evernote/android/job/JobRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 65
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/PendingIntent;

    move-result-object v2

    .line 67
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/evernote/android/job/v14/JobProxy14;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 68
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isExact()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 74
    invoke-virtual {p0, p1, v0, v2}, Lcom/evernote/android/job/v14/JobProxy14;->plantOneOffExact(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v3, v1}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, v0, v2}, Lcom/evernote/android/job/v14/JobProxy14;->plantOneOffInexact(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected plantOneOffExact(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v4, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v14/JobProxy14;->getTriggerAtMillis(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v0

    .line 91
    .local v0, "triggerAtMillis":J
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 92
    invoke-virtual {p2, v4, v0, v1, p3}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 98
    :goto_0
    invoke-direct {p0, p1}, Lcom/evernote/android/job/v14/JobProxy14;->logScheduled(Lcom/evernote/android/job/JobRequest;)V

    .line 99
    return-void

    .line 93
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 94
    invoke-virtual {p2, v4, v0, v1, p3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p2, v4, v0, v1, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected plantOneOffFlexSupport(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 9
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v8, 0x1

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Lcom/evernote/android/job/JobProxy$Common;->getAverageDelayMsSupportFlex(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 103
    .local v0, "triggerAtMs":J
    invoke-virtual {p2, v8, v0, v1, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 105
    iget-object v2, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v3, "Scheduled repeating alarm (flex support), %s, interval %s, flex %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 106
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 105
    invoke-virtual {v2, v3, v4}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method protected plantOneOffInexact(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "alarmManager"    # Landroid/app/AlarmManager;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/v14/JobProxy14;->getTriggerAtMillis(Lcom/evernote/android/job/JobRequest;)J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3, p3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/evernote/android/job/v14/JobProxy14;->logScheduled(Lcom/evernote/android/job/JobRequest;)V

    .line 87
    return-void
.end method

.method public plantPeriodic(Lcom/evernote/android/job/JobRequest;)V
    .locals 10
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, p1, v7}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/PendingIntent;

    move-result-object v6

    .line 121
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/evernote/android/job/v14/JobProxy14;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 122
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lnet/vrallev/android/cat/CatLog;

    const-string v3, "Scheduled repeating alarm, %s, interval %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/evernote/android/job/util/JobUtil;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v2, v3, v4}, Lnet/vrallev/android/cat/CatLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public plantPeriodicFlexSupport(Lcom/evernote/android/job/JobRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 131
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/evernote/android/job/v14/JobProxy14;->getPendingIntent(Lcom/evernote/android/job/JobRequest;Z)Landroid/app/PendingIntent;

    move-result-object v2

    .line 133
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/evernote/android/job/v14/JobProxy14;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 134
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, v0, v2}, Lcom/evernote/android/job/v14/JobProxy14;->plantOneOffFlexSupport(Lcom/evernote/android/job/JobRequest;Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/evernote/android/job/v14/JobProxy14;->mCat:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v3, v1}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
