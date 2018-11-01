.class public final Lcom/evernote/android/job/JobRequest;
.super Ljava/lang/Object;
.source "JobRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/JobRequest$NetworkType;,
        Lcom/evernote/android/job/JobRequest$BackoffPolicy;,
        Lcom/evernote/android/job/JobRequest$Builder;
    }
.end annotation


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;

.field public static final DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

.field public static final DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

.field public static final MIN_FLEX:J

.field public static final MIN_INTERVAL:J


# instance fields
.field private final mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

.field private mFlexSupport:Z

.field private final mJobApi:Lcom/evernote/android/job/util/JobApi;

.field private mNumFailures:I

.field private mScheduledAt:J

.field private mTransient:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    sget-object v0, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->EXPONENTIAL:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    sput-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_BACKOFF_POLICY:Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    .line 72
    sget-object v0, Lcom/evernote/android/job/JobRequest$NetworkType;->ANY:Lcom/evernote/android/job/JobRequest$NetworkType;

    sput-object v0, Lcom/evernote/android/job/JobRequest;->DEFAULT_NETWORK_TYPE:Lcom/evernote/android/job/JobRequest$NetworkType;

    .line 87
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/JobRequest;->MIN_FLEX:J

    .line 106
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobRequest"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobRequest;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method private constructor <init>(Lcom/evernote/android/job/JobRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/evernote/android/job/JobRequest$Builder;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    .line 126
    invoke-static {p1}, Lcom/evernote/android/job/JobRequest$Builder;->access$000(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/evernote/android/job/util/JobApi;->V_14:Lcom/evernote/android/job/util/JobApi;

    :goto_0
    iput-object v0, p0, Lcom/evernote/android/job/JobRequest;->mJobApi:Lcom/evernote/android/job/util/JobApi;

    .line 127
    return-void

    .line 126
    :cond_0
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getApi()Lcom/evernote/android/job/util/JobApi;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobRequest$Builder;Lcom/evernote/android/job/JobRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/evernote/android/job/JobRequest$Builder;
    .param p2, "x1"    # Lcom/evernote/android/job/JobRequest$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobRequest;-><init>(Lcom/evernote/android/job/JobRequest$Builder;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/evernote/android/job/JobRequest;)Lcom/evernote/android/job/JobRequest$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    return-object v0
.end method

.method static synthetic access$2100()Lnet/vrallev/android/cat/CatLog;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/evernote/android/job/JobRequest;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-object v0
.end method

.method static fromCursor(Landroid/database/Cursor;)Lcom/evernote/android/job/JobRequest;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 396
    new-instance v1, Lcom/evernote/android/job/JobRequest$Builder;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Landroid/database/Cursor;Lcom/evernote/android/job/JobRequest$1;)V

    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    .line 397
    .local v0, "request":Lcom/evernote/android/job/JobRequest;
    const-string v1, "numFailures"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    .line 398
    const-string v1, "scheduledAt"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    .line 399
    const-string v1, "isTransient"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    .line 400
    const-string v1, "flexSupport"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    iput-boolean v2, v0, Lcom/evernote/android/job/JobRequest;->mFlexSupport:Z

    .line 402
    iget v1, v0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    const-string v2, "failure count can\'t be negative"

    invoke-static {v1, v2}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 403
    iget-wide v2, v0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    const-string v1, "scheduled at can\'t be negative"

    invoke-static {v2, v3, v1}, Lcom/evernote/android/job/util/JobPreconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 405
    return-object v0

    :cond_0
    move v1, v3

    .line 399
    goto :goto_0

    :cond_1
    move v2, v3

    .line 400
    goto :goto_1
.end method

.method static getMinFlex()J
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getConfig()Lcom/evernote/android/job/JobManager$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager$Config;->isAllowSmallerIntervalsForMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/evernote/android/job/JobRequest;->MIN_FLEX:J

    goto :goto_0
.end method

.method static getMinInterval()J
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager;->getConfig()Lcom/evernote/android/job/JobManager$Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobManager$Config;->isAllowSmallerIntervalsForMarshmallow()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-wide v0, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    goto :goto_0
.end method


# virtual methods
.method public cancelAndEdit()Lcom/evernote/android/job/JobRequest$Builder;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 350
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/evernote/android/job/JobManager;->cancel(I)Z

    .line 351
    new-instance v0, Lcom/evernote/android/job/JobRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v7, v1}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Lcom/evernote/android/job/JobRequest;ZLcom/evernote/android/job/JobRequest$1;)V

    .line 352
    .local v0, "builder":Lcom/evernote/android/job/JobRequest$Builder;
    iput-boolean v7, p0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    .line 354
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v1

    if-nez v1, :cond_0

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    sub-long v4, v6, v8

    .line 356
    .local v4, "offset":J
    const-wide/16 v2, 0x1

    .line 357
    .local v2, "minValue":J
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getStartMs()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getEndMs()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/evernote/android/job/JobRequest$Builder;->setExecutionWindow(JJ)Lcom/evernote/android/job/JobRequest$Builder;

    .line 360
    .end local v2    # "minValue":J
    .end local v4    # "offset":J
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 410
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 415
    :goto_0
    return v1

    .line 411
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 413
    check-cast v0, Lcom/evernote/android/job/JobRequest;

    .line 415
    .local v0, "request":Lcom/evernote/android/job/JobRequest;
    iget-object v1, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    iget-object v2, v0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-virtual {v1, v2}, Lcom/evernote/android/job/JobRequest$Builder;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBackoffMs()J
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$600(Lcom/evernote/android/job/JobRequest$Builder;)J

    move-result-wide v0

    return-wide v0
.end method

.method getBackoffOffset()J
    .locals 8

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const-wide/16 v2, 0x0

    .line 290
    :goto_0
    return-wide v2

    .line 273
    :cond_0
    sget-object v2, Lcom/evernote/android/job/JobRequest$1;->$SwitchMap$com$evernote$android$job$JobRequest$BackoffPolicy:[I

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getBackoffPolicy()Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/evernote/android/job/JobRequest$BackoffPolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 287
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not implemented"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 275
    :pswitch_0
    iget v2, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    int-to-long v2, v2

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getBackoffMs()J

    move-result-wide v4

    mul-long v0, v2, v4

    .line 290
    .local v0, "offset":J
    :goto_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0

    .line 279
    .end local v0    # "offset":J
    :pswitch_1
    iget v2, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    if-nez v2, :cond_1

    .line 280
    const-wide/16 v0, 0x0

    .restart local v0    # "offset":J
    goto :goto_1

    .line 282
    .end local v0    # "offset":J
    :cond_1
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getBackoffMs()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget v6, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 284
    .restart local v0    # "offset":J
    goto :goto_1

    .line 273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBackoffPolicy()Lcom/evernote/android/job/JobRequest$BackoffPolicy;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$500(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/JobRequest$BackoffPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getEndMs()J
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$400(Lcom/evernote/android/job/JobRequest$Builder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlexMs()J
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$800(Lcom/evernote/android/job/JobRequest$Builder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntervalMs()J
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$700(Lcom/evernote/android/job/JobRequest$Builder;)J

    move-result-wide v0

    return-wide v0
.end method

.method getJobApi()Lcom/evernote/android/job/util/JobApi;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mJobApi:Lcom/evernote/android/job/util/JobApi;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$100(Lcom/evernote/android/job/JobRequest$Builder;)I

    move-result v0

    return v0
.end method

.method getScheduledAt()J
    .locals 2

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    return-wide v0
.end method

.method public getStartMs()J
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$300(Lcom/evernote/android/job/JobRequest$Builder;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$200(Lcom/evernote/android/job/JobRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest$Builder;->hashCode()I

    move-result v0

    return v0
.end method

.method incNumFailures()V
    .locals 3

    .prologue
    .line 372
    iget v1, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    .line 373
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 374
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "numFailures"

    iget v2, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 375
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/evernote/android/job/JobStorage;->update(Lcom/evernote/android/job/JobRequest;Landroid/content/ContentValues;)V

    .line 376
    return-void
.end method

.method public isExact()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$000(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method isFlexSupport()Z
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest;->mFlexSupport:Z

    return v0
.end method

.method public isPeriodic()Z
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getIntervalMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersisted()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1500(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method isTransient()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    return v0
.end method

.method public isUpdateCurrent()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1600(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method public requiredNetworkType()Lcom/evernote/android/job/JobRequest$NetworkType;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1200(Lcom/evernote/android/job/JobRequest$Builder;)Lcom/evernote/android/job/JobRequest$NetworkType;

    move-result-object v0

    return-object v0
.end method

.method public requirementsEnforced()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$900(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method public requiresCharging()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1000(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method public requiresDeviceIdle()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1100(Lcom/evernote/android/job/JobRequest$Builder;)Z

    move-result v0

    return v0
.end method

.method reschedule(ZZ)I
    .locals 3
    .param p1, "failure"    # Z
    .param p2, "newJob"    # Z

    .prologue
    .line 364
    new-instance v1, Lcom/evernote/android/job/JobRequest$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Lcom/evernote/android/job/JobRequest;ZLcom/evernote/android/job/JobRequest$1;)V

    invoke-virtual {v1}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    .line 365
    .local v0, "newRequest":Lcom/evernote/android/job/JobRequest;
    if-eqz p1, :cond_0

    .line 366
    iget v1, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    .line 368
    :cond_0
    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->schedule()I

    move-result v1

    return v1
.end method

.method public schedule()I
    .locals 1

    .prologue
    .line 337
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/evernote/android/job/JobManager;->schedule(Lcom/evernote/android/job/JobRequest;)V

    .line 338
    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    return v0
.end method

.method setFlexSupport(Z)V
    .locals 0
    .param p1, "flexSupport"    # Z

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest;->mFlexSupport:Z

    .line 328
    return-void
.end method

.method setScheduledAt(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 298
    iput-wide p1, p0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    .line 299
    return-void
.end method

.method setTransient(Z)V
    .locals 3
    .param p1, "isTransient"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    .line 380
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 381
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "isTransient"

    iget-boolean v2, p0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 382
    invoke-static {}, Lcom/evernote/android/job/JobManager;->instance()Lcom/evernote/android/job/JobManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/evernote/android/job/JobManager;->getJobStorage()Lcom/evernote/android/job/JobStorage;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/evernote/android/job/JobStorage;->update(Lcom/evernote/android/job/JobRequest;Landroid/content/ContentValues;)V

    .line 383
    return-void
.end method

.method toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 386
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 387
    .local v0, "contentValues":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/evernote/android/job/JobRequest;->mBuilder:Lcom/evernote/android/job/JobRequest$Builder;

    invoke-static {v1, v0}, Lcom/evernote/android/job/JobRequest$Builder;->access$1800(Lcom/evernote/android/job/JobRequest$Builder;Landroid/content/ContentValues;)V

    .line 388
    const-string v1, "numFailures"

    iget v2, p0, Lcom/evernote/android/job/JobRequest;->mNumFailures:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v1, "scheduledAt"

    iget-wide v2, p0, Lcom/evernote/android/job/JobRequest;->mScheduledAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 390
    const-string v1, "isTransient"

    iget-boolean v2, p0, Lcom/evernote/android/job/JobRequest;->mTransient:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 391
    const-string v1, "flexSupport"

    iget-boolean v2, p0, Lcom/evernote/android/job/JobRequest;->mFlexSupport:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 392
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "request{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
