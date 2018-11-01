.class public final Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$commit$2;
.super Lscala/runtime/AbstractFunction1;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->commit(Lscala/collection/Iterator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/Tuple2",
        "<",
        "Ljava/lang/Object;",
        "Lcom/github/shadowsocks/database/Profile;",
        ">;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    .prologue
    .line 358
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 358
    check-cast p1, Lscala/Tuple2;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$commit$2;->apply(Lscala/Tuple2;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Lscala/Tuple2;)V
    .locals 3
    .param p1, "x$11"    # Lscala/Tuple2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    .line 359
    .local v0, "item":Lcom/github/shadowsocks/database/Profile;
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/database/ProfileManager;->delProfile(I)Z

    .line 360
    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v1

    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId(I)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 358
    :goto_0
    return-void

    .line 360
    :cond_0
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 358
    .end local v0    # "item":Lcom/github/shadowsocks/database/Profile;
    :cond_1
    new-instance v1, Lscala/MatchError;

    invoke-direct {v1, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
