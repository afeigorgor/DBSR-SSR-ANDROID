.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$26;
.super Ljava/lang/Object;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;->ssrsubDialog()V
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
    .line 792
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$26;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "x$32"    # Landroid/content/DialogInterface;
    .param p2, "x$33"    # I

    .prologue
    .line 792
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$26;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0, p1, p2}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$onClick$body$14(Landroid/content/DialogInterface;I)V

    return-void
.end method
