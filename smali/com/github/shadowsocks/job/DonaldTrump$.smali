.class public final Lcom/github/shadowsocks/job/DonaldTrump$;
.super Ljava/lang/Object;
.source "DonaldTrump.scala"

# interfaces
.implements Lcom/evernote/android/job/JobCreator;


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/job/DonaldTrump$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/job/DonaldTrump$;

    invoke-direct {v0}, Lcom/github/shadowsocks/job/DonaldTrump$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/job/DonaldTrump$;->MODULE$:Lcom/github/shadowsocks/job/DonaldTrump$;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/evernote/android/job/Job;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 18
    const-string v2, "AclSyncJob"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/github/shadowsocks/job/AclSyncJob;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Lcom/github/shadowsocks/job/AclSyncJob;-><init>(Ljava/lang/String;)V

    .line 17
    :goto_0
    return-object v1

    .line 19
    :cond_0
    const-string v2, "SSRSubUpdateJob"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/github/shadowsocks/job/SSRSubUpdateJob;

    invoke-direct {v1}, Lcom/github/shadowsocks/job/SSRSubUpdateJob;-><init>()V

    goto :goto_0

    .line 21
    :cond_1
    const-string v1, "DonaldTrump"

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v3, "Unknown job tag: "

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const/4 v1, 0x0

    .line 20
    goto :goto_0
.end method
