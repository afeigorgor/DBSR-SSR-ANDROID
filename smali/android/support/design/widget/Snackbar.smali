.class public final Landroid/support/design/widget/Snackbar;
.super Landroid/support/design/widget/BaseTransientBottomBar;
.source "Snackbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/Snackbar$SnackbarLayout;,
        Landroid/support/design/widget/Snackbar$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/BaseTransientBottomBar",
        "<",
        "Landroid/support/design/widget/Snackbar;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback",
            "<",
            "Landroid/support/design/widget/Snackbar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "content"    # Landroid/view/View;
    .param p3, "contentViewCallback"    # Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;)V

    .line 113
    return-void
.end method

.method private static findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "fallback":Landroid/view/ViewGroup;
    :cond_0
    instance-of v2, p0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v2, :cond_1

    .line 173
    check-cast p0, Landroid/view/ViewGroup;

    .line 193
    .end local p0    # "view":Landroid/view/View;
    :goto_0
    return-object p0

    .line 174
    .restart local p0    # "view":Landroid/view/View;
    :cond_1
    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    .line 178
    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 181
    check-cast v0, Landroid/view/ViewGroup;

    .line 185
    :cond_3
    if-eqz p0, :cond_4

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 188
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/view/View;

    .end local v1    # "parent":Landroid/view/ViewParent;
    move-object p0, v1

    .line 190
    :cond_4
    :goto_1
    if-nez p0, :cond_0

    move-object p0, v0

    .line 193
    goto :goto_0

    .line 188
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_5
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public static make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "duration"    # I

    .prologue
    .line 135
    invoke-static {p0}, Landroid/support/design/widget/Snackbar;->findSuitableParent(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 136
    .local v2, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 137
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Landroid/support/design/R$layout;->design_layout_snackbar_include:I

    const/4 v5, 0x0

    .line 138
    invoke-virtual {v1, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/SnackbarContentLayout;

    .line 140
    .local v0, "content":Landroid/support/design/internal/SnackbarContentLayout;
    new-instance v3, Landroid/support/design/widget/Snackbar;

    invoke-direct {v3, v2, v0, v0}, Landroid/support/design/widget/Snackbar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/design/widget/BaseTransientBottomBar$ContentViewCallback;)V

    .line 141
    .local v3, "snackbar":Landroid/support/design/widget/Snackbar;
    invoke-virtual {v3, p1}, Landroid/support/design/widget/Snackbar;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;

    .line 142
    invoke-virtual {v3, p2}, Landroid/support/design/widget/Snackbar;->setDuration(I)Landroid/support/design/widget/BaseTransientBottomBar;

    .line 143
    return-object v3
.end method


# virtual methods
.method public setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/support/design/widget/Snackbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    return-object v0
.end method

.method public setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, 0x0

    .line 238
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/SnackbarContentLayout;

    .line 239
    .local v0, "contentLayout":Landroid/support/design/internal/SnackbarContentLayout;
    invoke-virtual {v0}, Landroid/support/design/internal/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v1

    .line 241
    .local v1, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 242
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    :goto_0
    return-object p0

    .line 245
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    new-instance v2, Landroid/support/design/widget/Snackbar$1;

    invoke-direct {v2, p0, p2}, Landroid/support/design/widget/Snackbar$1;-><init>(Landroid/support/design/widget/Snackbar;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setCallback(Landroid/support/design/widget/Snackbar$Callback;)Landroid/support/design/widget/Snackbar;
    .locals 1
    .param p1, "callback"    # Landroid/support/design/widget/Snackbar$Callback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/Snackbar;->removeCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    .line 303
    :cond_0
    if-eqz p1, :cond_1

    .line 304
    invoke-virtual {p0, p1}, Landroid/support/design/widget/Snackbar;->addCallback(Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;)Landroid/support/design/widget/BaseTransientBottomBar;

    .line 308
    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/Snackbar;->mCallback:Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;

    .line 309
    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/Snackbar;
    .locals 4
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 203
    iget-object v2, p0, Landroid/support/design/widget/Snackbar;->mView:Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/BaseTransientBottomBar$SnackbarBaseLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/SnackbarContentLayout;

    .line 204
    .local v0, "contentLayout":Landroid/support/design/internal/SnackbarContentLayout;
    invoke-virtual {v0}, Landroid/support/design/internal/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v1

    .line 205
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-object p0
.end method