.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;
.super Ljava/lang/Thread;
.source "ProfileManagerActivity.scala"


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

.field private final profiles$4:Lscala/collection/immutable/List;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lscala/collection/immutable/List;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;
    .param p2, "profiles$4"    # Lscala/collection/immutable/List;

    .prologue
    .line 996
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->profiles$4:Lscala/collection/immutable/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic com$github$shadowsocks$ProfileManagerActivity$$anon$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 999
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1000
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->profiles$4:Lscala/collection/immutable/List;

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4$$anonfun$run$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    .line 1150
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1152
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog_$eq(Landroid/app/ProgressDialog;)V

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    .line 1156
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ProfileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 1157
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
