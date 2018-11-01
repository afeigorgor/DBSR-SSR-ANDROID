.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$20;
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


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;

    .prologue
    .line 673
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$20;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "x$24"    # Landroid/content/DialogInterface;
    .param p2, "x$25"    # I

    .prologue
    .line 673
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3$$anonfun$20;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;

    invoke-virtual {v0, p1, p2}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;->com$github$shadowsocks$ProfileManagerActivity$$anon$$onClick$body$11(Landroid/content/DialogInterface;I)V

    return-void
.end method
