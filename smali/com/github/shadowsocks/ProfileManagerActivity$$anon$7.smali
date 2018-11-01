.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anon$7;
.super Ljava/lang/Object;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;

    .prologue
    .line 980
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$7;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 984
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$7;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$7;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog_$eq(Landroid/app/ProgressDialog;)V

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$7;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isTesting_$eq(Z)V

    .line 989
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$7;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testAsyncJob()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 991
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$7;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    .line 992
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$7;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$7;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ProfileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
