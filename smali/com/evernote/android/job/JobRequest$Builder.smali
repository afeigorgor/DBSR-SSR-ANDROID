.class public final Lcom/evernote/android/job/JobRequest$Builder;
.super Ljava/lang/Object;
.source "JobRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackoffMs:J

.field private mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

.field private mEndMs:J

.field private mExact:Z

.field private mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

.field private mExtrasXml:Ljava/lang/String;

.field private mFlexMs:J

.field private final mId:I

.field private mIntervalMs:J

.field private mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

.field private mPersisted:Z

.field private mRequirementsEnforced:Z

.field private mRequiresCharging:Z

.field private mRequiresDeviceIdle:Z

.field private mStartMs:J

.field private final mTag:Ljava/lang/String;

.field private mUpdateCurrent:Z


# direct methods
.method private constructor <init>(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    .line 511
    const-string v1, "tag"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    .line 513
    const-string v1, "startMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 514
    const-string v1, "endMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 516
    const-string v1, "backoffMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    .line 518
    :try_start_0
    const-string v1, "backoffPolicy"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    const-string v1, "intervalMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 525
    const-string v1, "flexMs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    .line 527
    const-string v1, "requirementsEnforced"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    .line 528
    const-string v1, "requiresCharging"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    .line 529
    const-string v1, "requiresDeviceIdle"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    .line 530
    const-string v1, "exact"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_3

    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    .line 532
    :try_start_1
    const-string v1, "networkType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/evernote/android/job/JobRequest$NetworkType;->valueOf(Ljava/lang/String;)Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 538
    :goto_5
    const-string v1, "extras"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    .line 540
    const-string v1, "persisted"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_4

    :goto_6
    iput-boolean v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mPersisted:Z

    .line 541
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$2100()Lnet/vrallev/android/cat/CatLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 521
    sget-object v1, Lcom/evernote/android/job/JobRequest;->DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    goto/16 :goto_0

    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    move v1, v3

    .line 527
    goto :goto_1

    :cond_1
    move v1, v3

    .line 528
    goto :goto_2

    :cond_2
    move v1, v3

    .line 529
    goto :goto_3

    :cond_3
    move v1, v3

    .line 530
    goto :goto_4

    .line 533
    :catch_1
    move-exception v0

    .line 534
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$2100()Lnet/vrallev/android/cat/CatLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 535
    sget-object v1, Lcom/evernote/android/job/JobRequest;->DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

    iput-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    goto :goto_5

    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    move v2, v3

    .line 540
    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/database/Cursor;Lcom/evernote/android/job/JobRequest$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Lcom/evernote/android/job/JobRequest$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Landroid/database/Cursor;)V

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/JobRequest;Z)V
    .locals 2
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "createId"    # Z

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage;->nextJobId()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    .line 486
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    .line 488
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getStartMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 489
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getEndMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 491
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getBackoffMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    .line 492
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getBackoffPolicy()Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    .line 494
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 495
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getFlexMs()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    .line 497
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requirementsEnforced()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    .line 498
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiresCharging()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    .line 499
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiresDeviceIdle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    .line 500
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isExact()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    .line 501
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 503
    invoke-static {p1}, Lcom/evernote/android/job/JobRequest;->access$2000(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    .line 504
    invoke-static {p1}, Lcom/evernote/android/job/JobRequest;->access$2000(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    iget-object v0, v0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->isPersisted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mPersisted:Z

    .line 506
    return-void

    .line 485
    :cond_0
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobRequest;ZLcom/evernote/android/job/JobRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/evernote/android/job/JobRequest$1;

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Lcom/evernote/android/job/JobRequest;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 472
    invoke-static {p1}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    .line 473
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage;->nextJobId()I

    move-result v0

    iput v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    .line 475
    iput-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 476
    iput-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 478
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    .line 479
    sget-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    .line 481
    sget-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

    iput-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 482
    return-void
.end method

.method static synthetic access$000(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    return v0
.end method

.method static synthetic access$100(Lcom/evernote/android/job/JobRequest$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/JobRequest$NetworkType;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mPersisted:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mUpdateCurrent:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/evernote/android/job/JobRequest$Builder;Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;
    .param p1, "x1"    # Landroid/content/ContentValues;

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobRequest$Builder;->fillContentValues(Landroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic access$200(Lcom/evernote/android/job/JobRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/evernote/android/job/JobRequest$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/evernote/android/job/JobRequest$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/JobRequest$BackoffPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    return-object v0
.end method

.method static synthetic access$600(Lcom/evernote/android/job/JobRequest$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/evernote/android/job/JobRequest$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/evernote/android/job/JobRequest$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/evernote/android/job/JobRequest$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    return v0
.end method

.method private fillContentValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 544
    const-string v0, "_id"

    iget v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    const-string v0, "tag"

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "startMs"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    const-string v0, "endMs"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 550
    const-string v0, "backoffMs"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 551
    const-string v0, "backoffPolicy"

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v0, "intervalMs"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 554
    const-string v0, "flexMs"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 556
    const-string v0, "requirementsEnforced"

    iget-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 557
    const-string v0, "requiresCharging"

    iget-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 558
    const-string v0, "requiresDeviceIdle"

    iget-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 559
    const-string v0, "exact"

    iget-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 560
    const-string v0, "networkType"

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest$NetworkType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    if-eqz v0, :cond_1

    .line 563
    const-string v0, "extras"

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtras:Lcom/evernote/android/job/util/support/PersistableBundleCompat;

    invoke-virtual {v1}, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->saveToXml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_0
    :goto_0
    const-string v0, "persisted"

    iget-boolean v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mPersisted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 568
    return-void

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    const-string v0, "extras"

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExtrasXml:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/evernote/android/job/JobRequest;
    .locals 14

    .prologue
    const-wide v12, 0x2aaaaaaaaaaaaaaaL

    const-wide/16 v10, -0x1

    const-wide/16 v8, 0x0

    .line 864
    iget v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    const-string v1, "id can\'t be negative"

    invoke-static {v0, v1}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 865
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 866
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    const-string v2, "backoffMs must be > 0"

    invoke-static {v0, v1, v2}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentPositive(JLjava/lang/String;)J

    .line 867
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    invoke-static {v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 868
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-static {v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_1

    .line 871
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinInterval()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "intervalMs"

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 872
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinFlex()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    const-string v6, "flexMs"

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 874
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    sget-wide v2, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    sget-wide v2, Lcom/evernote/android/job/JobRequest;->MIN_FLEX:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 876
    :cond_0
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->access$2100()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    const-string v1, "AllowSmallerIntervals enabled, this will crash on Android N and later, interval %d (minimum is %d), flex %d (minimum is %d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 877
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-wide v4, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-wide v4, Lcom/evernote/android/job/JobRequest;->MIN_FLEX:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 876
    invoke-virtual {v0, v1, v2}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    :cond_1
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_2

    .line 882
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setExact() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_2
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 885
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setExecutionWindow() for an exact job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_3
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mExact:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresDeviceIdle:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    if-nez v0, :cond_4

    sget-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobRequest$NetworkType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 888
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t require any condition for an exact job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_5
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_7

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_7

    .line 892
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You\'re trying to build a job with no constraints, this is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_7
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_9

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    cmp-long v0, v0, v10

    if-nez v0, :cond_8

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v0, v0, v10

    if-eqz v0, :cond_9

    .line 895
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call setExecutionWindow() on a periodic job."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_9
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_b

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffMs:J

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    sget-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    iget-object v1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mBackoffPolicy:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 898
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A periodic job will not respect any back-off policy, so calling setBackoffCriteria() with setPeriodic() is an error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 902
    :cond_b
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    cmp-long v0, v0, v8

    if-gtz v0, :cond_d

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    cmp-long v0, v0, v12

    if-gtz v0, :cond_c

    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_d

    .line 903
    :cond_c
    const-string v0, "Attention: your execution window is too large. This could result in undesired behavior, see https://github.com/evernote/android-job/blob/master/FAQ.md"

    invoke-static {v0}, Lnet/vrallev/android/cat/Cat;->w(Ljava/lang/String;)V

    .line 906
    :cond_d
    new-instance v0, Lcom/evernote/android/job/JobRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/evernote/android/job/JobRequest;-><init>(Lcom/evernote/android/job/JobRequest$Builder;Lcom/evernote/android/job/JobRequest$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 911
    if-ne p0, p1, :cond_1

    .line 916
    :cond_0
    :goto_0
    return v1

    .line 912
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 914
    check-cast v0, Lcom/evernote/android/job/JobRequest$Builder;

    .line 916
    .local v0, "builder":Lcom/evernote/android/job/JobRequest$Builder;
    iget v3, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    iget v4, v0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 921
    iget v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mId:I

    return v0
.end method

.method public setExecutionWindow(JJ)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 7
    .param p1, "startMs"    # J
    .param p3, "endMs"    # J

    .prologue
    .line 602
    const-string v0, "startMs must be greater than 0"

    invoke-static {p1, p2, v0}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentPositive(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 603
    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "endMs"

    move-wide v0, p3

    move-wide v2, p1

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 605
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    const-wide v2, 0x5555555555555554L    # 1.1945305291614953E103

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 606
    const-string v0, "startMs reduced from %d days to %d days"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v4, 0x5555555555555554L    # 1.1945305291614953E103

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/vrallev/android/cat/Cat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    const-wide v0, 0x5555555555555554L    # 1.1945305291614953E103

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mStartMs:J

    .line 609
    :cond_0
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    const-wide v2, 0x5555555555555554L    # 1.1945305291614953E103

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 610
    const-string v0, "endMs reduced from %d days to %d days"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v4, 0x5555555555555554L    # 1.1945305291614953E103

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lnet/vrallev/android/cat/Cat;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    const-wide v0, 0x5555555555555554L    # 1.1945305291614953E103

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mEndMs:J

    .line 614
    :cond_1
    return-object p0
.end method

.method public setPeriodic(J)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 1
    .param p1, "intervalMs"    # J

    .prologue
    .line 783
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/evernote/android/job/JobRequest$Builder;->setPeriodic(JJ)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPeriodic(JJ)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 7
    .param p1, "intervalMs"    # J
    .param p3, "flexMs"    # J

    .prologue
    .line 805
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinInterval()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    const-string v6, "intervalMs"

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    .line 806
    invoke-static {}, Lcom/evernote/android/job/JobRequest;->getMinFlex()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/evernote/android/job/JobRequest$Builder;->mIntervalMs:J

    const-string v6, "flexMs"

    move-wide v0, p3

    invoke-static/range {v0 .. v6}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/evernote/android/job/JobRequest$Builder;->mFlexMs:J

    .line 807
    return-object p0
.end method

.method public setRequiredNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0
    .param p1, "networkType"    # Lcom/evernote/android/job/JobRequest$NetworkType;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mNetworkType:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 680
    return-object p0
.end method

.method public setRequirementsEnforced(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0
    .param p1, "enforced"    # Z

    .prologue
    .line 659
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequirementsEnforced:Z

    .line 660
    return-object p0
.end method

.method public setRequiresCharging(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0
    .param p1, "requiresCharging"    # Z

    .prologue
    .line 698
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mRequiresCharging:Z

    .line 699
    return-object p0
.end method

.method public setUpdateCurrent(Z)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 0
    .param p1, "updateCurrent"    # Z

    .prologue
    .line 856
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest$Builder;->mUpdateCurrent:Z

    .line 857
    return-object p0
.end method
