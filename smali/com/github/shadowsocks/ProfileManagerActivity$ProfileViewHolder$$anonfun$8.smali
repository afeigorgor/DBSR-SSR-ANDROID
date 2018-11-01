.class public final Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$8;
.super Ljava/lang/Object;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

.field private final shareBtn$1:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;Landroid/view/View;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
    .param p2, "shareBtn$1"    # Landroid/view/View;

    .prologue
    .line 95
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$8;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$8;->shareBtn$1:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "x$7"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$8;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$8;->shareBtn$1:Landroid/view/View;

    invoke-virtual {v0, p1, v1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onLongClick$body$1(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
