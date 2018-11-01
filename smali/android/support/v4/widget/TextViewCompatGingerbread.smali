.class Landroid/support/v4/widget/TextViewCompatGingerbread;
.super Ljava/lang/Object;
.source "TextViewCompatGingerbread.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method static setTextAppearance(Landroid/widget/TextView;I)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "resId"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 104
    return-void
.end method
