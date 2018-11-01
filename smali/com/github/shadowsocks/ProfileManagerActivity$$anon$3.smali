.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.source "ProfileManagerActivity.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;->ssrsubDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V
    .locals 2
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;

    .prologue
    .line 663
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const/4 v0, 0x3

    .line 664
    const/16 v1, 0x30

    .line 663
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final com$github$shadowsocks$ProfileManagerActivity$$anon$$onClick$body$10(Landroid/content/DialogInterface;ILandroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .param p1, "x$22"    # Landroid/content/DialogInterface;
    .param p2, "x$23"    # I
    .param p3, "viewHolder$1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p4, "index$1"    # I

    .prologue
    .line 670
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssrsubAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->remove(I)V

    .line 671
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager()Lcom/github/shadowsocks/database/SSRSubManager;

    move-result-object v0

    check-cast p3, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;

    .end local p3    # "viewHolder$1":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p3}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->item()Lcom/github/shadowsocks/database/SSRSub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/SSRSub;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/SSRSubManager;->delSSRSub(I)Z

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$anon$$onClick$body$11(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "x$24"    # Landroid/content/DialogInterface;
    .param p2, "x$25"    # I

    .prologue
    .line 674
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssrsubAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$anon$$onClick$body$12(Landroid/content/DialogInterface;ILandroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "x$26"    # Landroid/content/DialogInterface;
    .param p2, "x$27"    # I
    .param p3, "viewHolder$1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 677
    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v4

    move-object v3, p3

    check-cast v3, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->item()Lcom/github/shadowsocks/database/SSRSub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/SSRSub;->url_group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/github/shadowsocks/database/ProfileManager;->getAllProfilesByGroup(Ljava/lang/String;)Lscala/Option;

    move-result-object v3

    .line 678
    instance-of v4, v3, Lscala/Some;

    if-eqz v4, :cond_0

    check-cast v3, Lscala/Some;

    invoke-virtual {v3}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/immutable/List;

    .local v2, "profiles":Lscala/collection/immutable/List;
    move-object v0, v2

    .line 683
    .end local v2    # "profiles":Lscala/collection/immutable/List;
    .local v0, "delete_profiles":Lscala/collection/immutable/List;
    :goto_0
    new-instance v3, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$anon$$onClick$body$12$1;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$anon$$onClick$body$12$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;)V

    invoke-virtual {v0, v3}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    .line 689
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 690
    .local v1, "index":I
    iget-object v3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssrsubAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->remove(I)V

    .line 691
    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager()Lcom/github/shadowsocks/database/SSRSubManager;

    move-result-object v3

    check-cast p3, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;

    .end local p3    # "viewHolder$1":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p3}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->item()Lcom/github/shadowsocks/database/SSRSub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/SSRSub;->id()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/SSRSubManager;->delSSRSub(I)Z

    .line 693
    iget-object v3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    .line 694
    iget-object v3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 680
    .end local v0    # "delete_profiles":Lscala/collection/immutable/List;
    .end local v1    # "index":I
    .restart local p3    # "viewHolder$1":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 702
    const/4 v0, 0x1

    return v0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 666
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 667
    .local v0, "index":I
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 668
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v3, 0x7f0900b7

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 669
    const v2, 0x7f0900b6

    new-instance v3, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$19;

    invoke-direct {v3, p0, p1, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$19;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 673
    const v2, 0x1040009

    new-instance v3, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$20;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$20;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 676
    const v2, 0x7f0900b5

    new-instance v3, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$21;

    invoke-direct {v3, p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$21;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 696
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v3, 0x7f0900b4

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 697
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 698
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 699
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method
