.class public Lcom/mikepenz/iconics/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static convertDpToPx(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 10
    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
