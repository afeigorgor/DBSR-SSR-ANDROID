.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anon$1;
.super Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
.source "ProfileManagerActivity.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 516
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {p0}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 517
    return-void
.end method

.method public trafficUpdated(JJJJ)V
    .locals 9
    .param p1, "txRate"    # J
    .param p3, "rxRate"    # J
    .param p5, "txTotal"    # J
    .param p7, "rxTotal"    # J

    .prologue
    .line 519
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$selectedItem()Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$selectedItem()Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    move-result-object v1

    .local v1, "qual$2":Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
    move-wide v2, p5

    .local v2, "x$53":J
    move-wide/from16 v4, p7

    .local v4, "x$54":J
    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->updateText$default$3()J

    move-result-wide v6

    .local v6, "x$55":J
    invoke-virtual/range {v1 .. v7}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->updateText(JJJ)V

    .end local v1    # "qual$2":Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
    .end local v2    # "x$53":J
    .end local v4    # "x$54":J
    .end local v6    # "x$55":J
    :cond_0
    return-void
.end method
