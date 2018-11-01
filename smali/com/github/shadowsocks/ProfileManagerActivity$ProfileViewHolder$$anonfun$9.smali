.class public final Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$9;
.super Ljava/lang/Object;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/view/View$OnClickListener;
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


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    .prologue
    .line 104
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$9;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "x$8"    # Landroid/view/View;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$9;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4(Landroid/view/View;)V

    return-void
.end method
