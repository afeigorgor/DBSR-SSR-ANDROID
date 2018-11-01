.class public Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "TaskerActivity.scala"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/TaskerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfileViewHolder"
.end annotation


# instance fields
.field public final synthetic $outer:Lcom/github/shadowsocks/TaskerActivity;

.field private item:Lcom/github/shadowsocks/database/Profile;

.field private final text:Landroid/widget/CheckedTextView;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/TaskerActivity;Landroid/view/View;)V
    .locals 4
    .param p1, "$outer"    # Lcom/github/shadowsocks/TaskerActivity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 56
    iput-object p2, p0, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->view:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/TaskerActivity;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101030e

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/github/shadowsocks/TaskerActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    iget-object v1, p0, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->text:Landroid/widget/CheckedTextView;

    .line 64
    iget-object v1, p0, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private item()Lcom/github/shadowsocks/database/Profile;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->item:Lcom/github/shadowsocks/database/Profile;

    return-object v0
.end method

.method private item_$eq(Lcom/github/shadowsocks/database/Profile;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->item:Lcom/github/shadowsocks/database/Profile;

    return-void
.end method

.method private text()Landroid/widget/CheckedTextView;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->text:Landroid/widget/CheckedTextView;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/github/shadowsocks/database/Profile;)V
    .locals 3
    .param p1, "item"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->item_$eq(Lcom/github/shadowsocks/database/Profile;)V

    .line 73
    invoke-direct {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->text()Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-direct {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->text()Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->com$github$shadowsocks$TaskerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/TaskerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption()Lcom/github/shadowsocks/utils/TaskerSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindDefault()V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->item_$eq(Lcom/github/shadowsocks/database/Profile;)V

    .line 68
    invoke-direct {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->text()Landroid/widget/CheckedTextView;

    move-result-object v0

    const v1, 0x7f090086

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 69
    invoke-direct {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->text()Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->com$github$shadowsocks$TaskerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/TaskerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption()Lcom/github/shadowsocks/utils/TaskerSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic com$github$shadowsocks$TaskerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/TaskerActivity;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/TaskerActivity;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 78
    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->com$github$shadowsocks$TaskerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/TaskerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption()Lcom/github/shadowsocks/utils/TaskerSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->com$github$shadowsocks$TaskerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/TaskerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$switch()Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/utils/TaskerSettings;->switchOn_$eq(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->com$github$shadowsocks$TaskerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/TaskerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption()Lcom/github/shadowsocks/utils/TaskerSettings;

    move-result-object v2

    invoke-direct {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId_$eq(I)V

    .line 80
    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->com$github$shadowsocks$TaskerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/TaskerActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->com$github$shadowsocks$TaskerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/TaskerActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption()Lcom/github/shadowsocks/utils/TaskerSettings;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->com$github$shadowsocks$TaskerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/TaskerActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/utils/TaskerSettings;->toIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/TaskerActivity;->setResult(ILandroid/content/Intent;)V

    .line 81
    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->com$github$shadowsocks$TaskerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/TaskerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/TaskerActivity;->finish()V

    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v0

    goto :goto_0
.end method
