.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$22;
.super Ljava/lang/Object;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
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

.field private final prefs$1:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;
    .param p2, "prefs$1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 710
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$22;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$22;->prefs$1:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "x$28"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 710
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$22;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$22;->prefs$1:Landroid/content/SharedPreferences;

    invoke-virtual {v0, p1, p2, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$onCheckedChanged$body$1(Landroid/widget/CompoundButton;ZLandroid/content/SharedPreferences;)V

    return-void
.end method
