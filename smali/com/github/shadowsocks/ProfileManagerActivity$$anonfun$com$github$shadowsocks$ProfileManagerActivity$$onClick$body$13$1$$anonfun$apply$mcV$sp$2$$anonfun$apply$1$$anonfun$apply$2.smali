.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction1;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;
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
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final result$1:I


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;I)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;
    .param p2, "result$1"    # I

    .prologue
    .line 764
    iput p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1$$anonfun$apply$2;->result$1:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 764
    check-cast p1, Lcom/github/shadowsocks/database/Profile;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1$$anonfun$apply$2;->apply(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lcom/github/shadowsocks/database/Profile;)Z
    .locals 2
    .param p1, "x$31"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 764
    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v0

    iget v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1$$anonfun$apply$2;->result$1:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
