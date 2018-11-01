.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$27;
.super Ljava/lang/Object;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$onClick$body$14(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity;

.field private final UrlAddEdit$1:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;Landroid/widget/EditText;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;
    .param p2, "UrlAddEdit$1"    # Landroid/widget/EditText;

    .prologue
    .line 796
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$27;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$27;->UrlAddEdit$1:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "x$34"    # Landroid/content/DialogInterface;
    .param p2, "x$35"    # I

    .prologue
    .line 796
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$27;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$27;->UrlAddEdit$1:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15(Landroid/content/DialogInterface;ILandroid/widget/EditText;)V

    return-void
.end method
