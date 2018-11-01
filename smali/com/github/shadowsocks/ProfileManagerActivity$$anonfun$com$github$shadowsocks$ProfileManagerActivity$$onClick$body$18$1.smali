.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$18$1;
.super Lscala/runtime/AbstractFunction1;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$onClick$body$18(Landroid/content/DialogInterface;ILscala/collection/immutable/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lcom/github/shadowsocks/database/Profile;",
        "Lcom/github/shadowsocks/database/Profile;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final eta$0$4$1:Lcom/github/shadowsocks/database/ProfileManager;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lcom/github/shadowsocks/database/ProfileManager;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;
    .param p2, "eta$0$4$1"    # Lcom/github/shadowsocks/database/ProfileManager;

    .prologue
    .line 891
    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$18$1;->eta$0$4$1:Lcom/github/shadowsocks/database/ProfileManager;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/github/shadowsocks/database/Profile;)Lcom/github/shadowsocks/database/Profile;
    .locals 1
    .param p1, "p"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 891
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$18$1;->eta$0$4$1:Lcom/github/shadowsocks/database/ProfileManager;

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/database/ProfileManager;->createProfile_dr(Lcom/github/shadowsocks/database/Profile;)Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 891
    check-cast p1, Lcom/github/shadowsocks/database/Profile;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$18$1;->apply(Lcom/github/shadowsocks/database/Profile;)Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    return-object v0
.end method
