.class Lcom/evernote/android/job/JobStorage$JobCacheId;
.super Landroid/support/v4/util/LruCache;
.source "JobStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobCacheId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/util/LruCache",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/evernote/android/job/JobRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/android/job/JobStorage;


# direct methods
.method public constructor <init>(Lcom/evernote/android/job/JobStorage;)V
    .locals 1

    .prologue
    .line 246
    iput-object p1, p0, Lcom/evernote/android/job/JobStorage$JobCacheId;->this$0:Lcom/evernote/android/job/JobStorage;

    .line 247
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    .line 248
    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Integer;)Lcom/evernote/android/job/JobRequest;
    .locals 3
    .param p1, "id"    # Ljava/lang/Integer;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage$JobCacheId;->this$0:Lcom/evernote/android/job/JobStorage;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/evernote/android/job/JobStorage;->access$000(Lcom/evernote/android/job/JobStorage;IZ)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 244
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/evernote/android/job/JobStorage$JobCacheId;->create(Ljava/lang/Integer;)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    return-object v0
.end method
