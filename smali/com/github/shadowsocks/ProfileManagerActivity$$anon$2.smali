.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anon$2;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.source "ProfileManagerActivity.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 502
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$2;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const/4 v0, 0x3

    .line 503
    const/16 v1, 0x30

    .line 502
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "target"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$2;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->move(II)V

    .line 511
    const/4 v0, 0x1

    return v0
.end method

.method public onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "direction"    # I

    .prologue
    .line 505
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 506
    .local v0, "index":I
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$2;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->remove(I)V

    .line 507
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$2;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$undoManager()Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    move-result-object v1

    check-cast p1, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->remove(ILjava/lang/Object;)V

    return-void
.end method
