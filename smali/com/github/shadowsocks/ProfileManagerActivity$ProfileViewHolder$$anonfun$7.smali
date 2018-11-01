.class public final Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$7;
.super Ljava/lang/Object;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$1(Landroid/view/View;)V
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
    .line 90
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$7;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "x$6"    # Landroid/content/DialogInterface;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$7;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onDismiss$body$1(Landroid/content/DialogInterface;)V

    return-void
.end method
