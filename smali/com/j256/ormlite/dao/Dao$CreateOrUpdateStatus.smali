.class public Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
.super Ljava/lang/Object;
.source "Dao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/dao/Dao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CreateOrUpdateStatus"
.end annotation


# instance fields
.field private created:Z

.field private numLinesChanged:I

.field private updated:Z


# direct methods
.method public constructor <init>(ZZI)V
    .locals 0
    .param p1, "created"    # Z
    .param p2, "updated"    # Z
    .param p3, "numberLinesChanged"    # I

    .prologue
    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    iput-boolean p1, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->created:Z

    .line 862
    iput-boolean p2, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->updated:Z

    .line 863
    iput p3, p0, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;->numLinesChanged:I

    .line 864
    return-void
.end method
