.class public final Lcom/evernote/android/job/Job$Params;
.super Ljava/lang/Object;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Params"
.end annotation


# instance fields
.field private final mRequest:Lcom/evernote/android/job/JobRequest;


# direct methods
.method private constructor <init>(Lcom/evernote/android/job/JobRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Lcom/evernote/android/job/JobRequest;Lcom/evernote/android/job/Job$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "x1"    # Lcom/evernote/android/job/Job$1;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/evernote/android/job/Job$Params;-><init>(Lcom/evernote/android/job/JobRequest;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 515
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 520
    :goto_0
    return v1

    .line 516
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

    .line 518
    check-cast v0, Lcom/evernote/android/job/Job$Params;

    .line 520
    .local v0, "params":Lcom/evernote/android/job/Job$Params;
    iget-object v1, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    iget-object v2, v0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v1, v2}, Lcom/evernote/android/job/JobRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v0

    return v0
.end method

.method getRequest()Lcom/evernote/android/job/JobRequest;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPeriodic()Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/evernote/android/job/Job$Params;->mRequest:Lcom/evernote/android/job/JobRequest;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobRequest;->isPeriodic()Z

    move-result v0

    return v0
.end method
