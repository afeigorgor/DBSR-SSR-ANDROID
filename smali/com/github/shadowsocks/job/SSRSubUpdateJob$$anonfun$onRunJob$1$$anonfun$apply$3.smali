.class public final Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1$$anonfun$apply$3;
.super Lscala/runtime/AbstractFunction1;
.source "SSRSubUpdateJob.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1;
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


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1;

    .prologue
    .line 86
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/github/shadowsocks/database/Profile;)Ljava/lang/Object;
    .locals 2
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v0

    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 88
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->delProfile(I)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p1, Lcom/github/shadowsocks/database/Profile;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1$$anonfun$apply$3;->apply(Lcom/github/shadowsocks/database/Profile;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
