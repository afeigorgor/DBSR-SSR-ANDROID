.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anon$6;
.super Lcom/github/shadowsocks/database/SSRSub;
.source "ProfileManagerActivity.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;Lscala/collection/immutable/List;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;
    .param p2, "profiles_ssr$1"    # Lscala/collection/immutable/List;

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/github/shadowsocks/database/SSRSub;-><init>()V

    .line 820
    iget-object v0, p1, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->UrlAddEdit$1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anon$6;->url_$eq(Ljava/lang/String;)V

    .line 821
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lscala/collection/immutable/List;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->url_group()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anon$6;->url_group_$eq(Ljava/lang/String;)V

    return-void
.end method
