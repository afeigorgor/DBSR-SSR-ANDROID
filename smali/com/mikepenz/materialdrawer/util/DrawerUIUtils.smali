.class public Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;
.super Ljava/lang/Object;
.source "DrawerUIUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# direct methods
.method public static getPlaceHolder(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 94
    new-instance v0, Lcom/mikepenz/iconics/IconicsDrawable;

    sget-object v1, Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;->mdf_person:Lcom/mikepenz/materialdrawer/icons/MaterialDrawerFont$Icon;

    invoke-direct {v0, p0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;-><init>(Landroid/content/Context;Lcom/mikepenz/iconics/typeface/IIcon;)V

    sget v1, Lcom/mikepenz/materialdrawer/R$color;->accent:I

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->colorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    sget v1, Lcom/mikepenz/materialdrawer/R$color;->primary:I

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->backgroundColorRes(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->sizeDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/mikepenz/iconics/IconicsDrawable;->paddingDp(I)Lcom/mikepenz/iconics/IconicsDrawable;

    move-result-object v0

    return-object v0
.end method
