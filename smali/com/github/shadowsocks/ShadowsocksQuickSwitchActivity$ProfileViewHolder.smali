.class public Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShadowsocksQuickSwitchActivity.scala"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfileViewHolder"
.end annotation


# instance fields
.field public final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;

.field private item:Lcom/github/shadowsocks/database/Profile;

.field private final text:Landroid/widget/CheckedTextView;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;Landroid/view/View;)V
    .locals 4
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 19
    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->view:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 21
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101030e

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 22
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 26
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->itemView:Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->text:Landroid/widget/CheckedTextView;

    .line 27
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private item()Lcom/github/shadowsocks/database/Profile;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->item:Lcom/github/shadowsocks/database/Profile;

    return-object v0
.end method

.method private item_$eq(Lcom/github/shadowsocks/database/Profile;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->item:Lcom/github/shadowsocks/database/Profile;

    return-void
.end method

.method private text()Landroid/widget/CheckedTextView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->text:Landroid/widget/CheckedTextView;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/github/shadowsocks/database/Profile;)V
    .locals 3
    .param p1, "item"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->item_$eq(Lcom/github/shadowsocks/database/Profile;)V

    .line 31
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->text()Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->text()Landroid/widget/CheckedTextView;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v0

    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId()I

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

.method public synthetic com$github$shadowsocks$ShadowsocksQuickSwitchActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 36
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->switchProfile(I)Lcom/github/shadowsocks/database/Profile;

    .line 37
    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->com$github$shadowsocks$ShadowsocksQuickSwitchActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/utils/Utils$;->startSsService(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->com$github$shadowsocks$ShadowsocksQuickSwitchActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;->finish()V

    return-void
.end method
