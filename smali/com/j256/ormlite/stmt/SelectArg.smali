.class public Lcom/j256/ormlite/stmt/SelectArg;
.super Lcom/j256/ormlite/stmt/BaseArgumentHolder;
.source "SelectArg.java"


# instance fields
.field private hasBeenSet:Z

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/BaseArgumentHolder;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->hasBeenSet:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->value:Ljava/lang/Object;

    .line 31
    return-void
.end method


# virtual methods
.method protected getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->value:Ljava/lang/Object;

    return-object v0
.end method

.method protected isValueSet()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->hasBeenSet:Z

    return v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/stmt/SelectArg;->hasBeenSet:Z

    .line 97
    iput-object p1, p0, Lcom/j256/ormlite/stmt/SelectArg;->value:Ljava/lang/Object;

    .line 98
    return-void
.end method
