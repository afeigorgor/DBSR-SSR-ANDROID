.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$19;
.super Ljava/lang/Object;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->onSwiped(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;

.field private final index$1:I

.field private final viewHolder$1:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;
    .param p2, "viewHolder$1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "index$1"    # I

    .prologue
    .line 669
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$19;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;

    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$19;->viewHolder$1:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$19;->index$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "x$22"    # Landroid/content/DialogInterface;
    .param p2, "x$23"    # I

    .prologue
    .line 669
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$19;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$19;->viewHolder$1:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$19;->index$1:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->com$github$shadowsocks$ProfileManagerActivity$$anon$$onClick$body$10(Landroid/content/DialogInterface;ILandroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method
