.class Landroid/support/v4/widget/TextViewCompatApi23;
.super Ljava/lang/Object;
.source "TextViewCompatApi23.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# direct methods
.method public static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "resId"    # I

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 30
    return-void
.end method
