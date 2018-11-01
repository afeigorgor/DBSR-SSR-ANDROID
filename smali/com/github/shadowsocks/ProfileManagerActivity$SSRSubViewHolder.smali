.class public final Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SSRSubViewHolder"
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity;

.field private item:Lcom/github/shadowsocks/database/SSRSub;

.field private final text:Landroid/widget/TextView;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;Landroid/view/View;)V
    .locals 2
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 364
    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->view:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 368
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->text:Landroid/widget/TextView;

    .line 369
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private text()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->text:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/github/shadowsocks/database/SSRSub;)V
    .locals 1
    .param p1, "item"    # Lcom/github/shadowsocks/database/SSRSub;

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->item_$eq(Lcom/github/shadowsocks/database/SSRSub;)V

    .line 385
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->updateText$default$1()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->updateText(Z)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$SSRSubViewHolder$$run$body$2(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "builder$2"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 380
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->text()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public item()Lcom/github/shadowsocks/database/SSRSub;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->item:Lcom/github/shadowsocks/database/SSRSub;

    return-object v0
.end method

.method public item_$eq(Lcom/github/shadowsocks/database/SSRSub;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/database/SSRSub;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->item:Lcom/github/shadowsocks/database/SSRSub;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->updateText(Z)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method public updateText(Z)V
    .locals 5
    .param p1, "isShowUrl"    # Z

    .prologue
    .line 372
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 373
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->item()Lcom/github/shadowsocks/database/SSRSub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/SSRSub;->url_group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 374
    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 376
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->item()Lcom/github/shadowsocks/database/SSRSub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/SSRSub;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 377
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    iget-object v3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v4, 0x1030046

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 378
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 377
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 380
    .end local v1    # "start":I
    :cond_0
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$handler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder$$anonfun$12;

    invoke-direct {v3, p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder$$anonfun$12;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateText$default$1()Z
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method
