.class public final Lcom/github/shadowsocks/job/SSRSubUpdateJob$;
.super Ljava/lang/Object;
.source "SSRSubUpdateJob.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/job/SSRSubUpdateJob$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/job/SSRSubUpdateJob$;

    invoke-direct {v0}, Lcom/github/shadowsocks/job/SSRSubUpdateJob$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/job/SSRSubUpdateJob$;->MODULE$:Lcom/github/shadowsocks/job/SSRSubUpdateJob$;

    return-void
.end method


# virtual methods
.method public schedule()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 29
    new-instance v0, Lcom/evernote/android/job/JobRequest$Builder;

    const-string v1, "SSRSubUpdateJob"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 30
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/evernote/android/job/JobRequest$Builder;->setPeriodic(J)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v4}, Lcom/evernote/android/job/JobRequest$Builder;->setRequirementsEnforced(Z)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    .line 32
    sget-object v1, Lcom/evernote/android/job/JobRequest$NetworkType;->CONNECTED:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobRequest$Builder;->setRequiredNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobRequest$Builder;->setRequiresCharging(Z)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v4}, Lcom/evernote/android/job/JobRequest$Builder;->setUpdateCurrent(Z)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->schedule()I

    move-result v0

    return v0
.end method
