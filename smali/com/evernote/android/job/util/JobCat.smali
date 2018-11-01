.class public Lcom/evernote/android/job/util/JobCat;
.super Lnet/vrallev/android/cat/instance/CatLazy;
.source "JobCat.java"


# instance fields
.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lnet/vrallev/android/cat/instance/CatLazy;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Lnet/vrallev/android/cat/instance/CatLazy;->getTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/evernote/android/job/util/JobCat;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method protected println(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "priority"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lnet/vrallev/android/cat/instance/CatLazy;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method
