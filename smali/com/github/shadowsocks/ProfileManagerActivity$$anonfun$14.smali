.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$14;
.super Ljava/lang/Object;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;->initFab()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity;

.field private final qrcodeAddFAB$1:Lcom/github/clans/fab/FloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lcom/github/clans/fab/FloatingActionButton;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;
    .param p2, "qrcodeAddFAB$1"    # Lcom/github/clans/fab/FloatingActionButton;

    .prologue
    .line 551
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$14;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$14;->qrcodeAddFAB$1:Lcom/github/clans/fab/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuToggle(Z)V
    .locals 2
    .param p1, "opened"    # Z

    .prologue
    .line 551
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$14;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$14;->qrcodeAddFAB$1:Lcom/github/clans/fab/FloatingActionButton;

    invoke-virtual {v0, p1, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$onMenuToggle$body$1(ZLcom/github/clans/fab/FloatingActionButton;)V

    return-void
.end method
