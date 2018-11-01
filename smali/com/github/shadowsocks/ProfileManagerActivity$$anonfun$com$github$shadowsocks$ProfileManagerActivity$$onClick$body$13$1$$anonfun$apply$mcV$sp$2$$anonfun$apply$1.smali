.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;
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
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final delete_profiles$1:Lscala/runtime/ObjectRef;

.field private final encounter_num$1:Lscala/runtime/IntRef;

.field private final limit_num$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;Lscala/runtime/ObjectRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;
    .param p2, "delete_profiles$1"    # Lscala/runtime/ObjectRef;
    .param p3, "limit_num$1"    # Lscala/runtime/IntRef;
    .param p4, "encounter_num$1"    # Lscala/runtime/IntRef;

    .prologue
    .line 760
    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->delete_profiles$1:Lscala/runtime/ObjectRef;

    iput-object p3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->limit_num$1:Lscala/runtime/IntRef;

    iput-object p4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->encounter_num$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 760
    check-cast p1, Lcom/github/shadowsocks/database/Profile;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->apply(Lcom/github/shadowsocks/database/Profile;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Lcom/github/shadowsocks/database/Profile;)V
    .locals 4
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    const/4 v3, -0x1

    .line 761
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->encounter_num$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->limit_num$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->limit_num$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    if-ne v1, v3, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->limit_num$1:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    if-ne v1, v3, :cond_2

    .line 762
    :cond_1
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/github/shadowsocks/database/ProfileManager;->createProfile_sub(Lcom/github/shadowsocks/database/Profile;)I

    move-result v0

    .line 763
    .local v0, "result":I
    if-eqz v0, :cond_2

    .line 764
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->delete_profiles$1:Lscala/runtime/ObjectRef;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->delete_profiles$1:Lscala/runtime/ObjectRef;

    iget-object v1, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v1, Lscala/collection/immutable/List;

    new-instance v3, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1$$anonfun$apply$2;

    invoke-direct {v3, p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1$$anonfun$apply$2;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;I)V

    invoke-virtual {v1, v3}, Lscala/collection/immutable/List;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    iput-object v1, v2, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 767
    .end local v0    # "result":I
    :cond_2
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->encounter_num$1:Lscala/runtime/IntRef;

    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;->encounter_num$1:Lscala/runtime/IntRef;

    iget v2, v2, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
