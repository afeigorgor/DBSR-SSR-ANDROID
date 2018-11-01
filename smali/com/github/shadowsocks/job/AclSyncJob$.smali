.class public final Lcom/github/shadowsocks/job/AclSyncJob$;
.super Ljava/lang/Object;
.source "AclSyncJob.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/job/AclSyncJob$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/job/AclSyncJob$;

    invoke-direct {v0}, Lcom/github/shadowsocks/job/AclSyncJob$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/job/AclSyncJob$;->MODULE$:Lcom/github/shadowsocks/job/AclSyncJob$;

    return-void
.end method


# virtual methods
.method public schedule(Ljava/lang/String;)I
    .locals 7
    .param p1, "route"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 19
    new-instance v0, Lcom/evernote/android/job/JobRequest$Builder;

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "AclSyncJob"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evernote/android/job/JobRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 20
    const-wide/16 v2, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1c

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/evernote/android/job/JobRequest$Builder;->setExecutionWindow(JJ)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v6}, Lcom/evernote/android/job/JobRequest$Builder;->setRequirementsEnforced(Z)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    .line 22
    sget-object v1, Lcom/evernote/android/job/JobRequest$NetworkType;->UNMETERED:Lcom/evernote/android/job/JobRequest$NetworkType;

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobRequest$Builder;->setRequiredNetworkType(Lcom/evernote/android/job/JobRequest$NetworkType;)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v6}, Lcom/evernote/android/job/JobRequest$Builder;->setRequiresCharging(Z)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    .line 24
    invoke-virtual {v0, v6}, Lcom/evernote/android/job/JobRequest$Builder;->setUpdateCurrent(Z)Lcom/evernote/android/job/JobRequest$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest$Builder;->build()Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->schedule()I

    move-result v0

    return v0
.end method
