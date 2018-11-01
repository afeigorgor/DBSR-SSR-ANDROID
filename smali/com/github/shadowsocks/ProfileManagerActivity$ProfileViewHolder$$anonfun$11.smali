.class public final Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$11;
.super Ljava/lang/Object;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->updateText(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

.field private final builder$1:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
    .param p2, "builder$1"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 277
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$11;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$11;->builder$1:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$11;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$11;->builder$1:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$run$body$1(Landroid/text/SpannableStringBuilder;)V

    return-void
.end method
