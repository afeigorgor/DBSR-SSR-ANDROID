.class public final Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$5;
.super Ljava/lang/Object;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
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

.field private final url$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;Ljava/lang/String;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
    .param p2, "url$1"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$5;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$5;->url$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "x$2"    # Landroid/content/DialogInterface;
    .param p2, "x$3"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$5;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$5;->url$1:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$2(Landroid/content/DialogInterface;ILjava/lang/String;)V

    return-void
.end method
