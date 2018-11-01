.class public Lme/dm7/barcodescanner/core/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public static getScreenOrientation(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 26
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 28
    .local v0, "display":Landroid/view/Display;
    const/4 v1, 0x0

    .line 29
    .local v1, "orientation":I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 30
    const/4 v1, 0x3

    .line 38
    :goto_0
    return v1

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 33
    const/4 v1, 0x1

    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method
