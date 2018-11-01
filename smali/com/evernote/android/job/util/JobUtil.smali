.class public final Lcom/evernote/android/job/util/JobUtil;
.super Ljava/lang/Object;
.source "JobUtil.java"


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final ONE_DAY:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/evernote/android/job/util/JobUtil;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/evernote/android/job/util/JobUtil;->ONE_DAY:J

    .line 51
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobUtil"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/util/JobUtil;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method public static hasBootPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-string v0, "android.permission.RECEIVE_BOOT_COMPLETED"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/evernote/android/job/util/JobUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static hasPermission(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "repeatCount"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 93
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/evernote/android/job/util/JobUtil;->CAT:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v3, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 100
    if-ge p2, v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-static {v3, p1, v4}, Lcom/evernote/android/job/util/JobUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static hasWakeLockPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    const-string v0, "android.permission.WAKE_LOCK"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/evernote/android/job/util/JobUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static timeToString(J)Ljava/lang/String;
    .locals 8
    .param p0, "timeMs"    # J

    .prologue
    const-wide/16 v6, 0x1

    .line 62
    sget-object v3, Lcom/evernote/android/job/util/JobUtil;->FORMAT:Ljava/text/SimpleDateFormat;

    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 63
    sget-object v3, Lcom/evernote/android/job/util/JobUtil;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "result":Ljava/lang/String;
    sget-wide v4, Lcom/evernote/android/job/util/JobUtil;->ONE_DAY:J

    div-long v0, p0, v4

    .line 66
    .local v0, "days":J
    cmp-long v3, v0, v6

    if-nez v3, :cond_1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (+1 day)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_0
    :goto_0
    return-object v2

    .line 68
    :cond_1
    cmp-long v3, v0, v6

    if-lez v3, :cond_0

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " days)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
