.class public Lcom/github/shadowsocks/database/ProfileManager;
.super Ljava/lang/Object;
.source "ProfileManager.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final dbHelper:Lcom/github/shadowsocks/database/DBHelper;

.field private profileAddedListener:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/database/DBHelper;)V
    .locals 0
    .param p1, "dbHelper"    # Lcom/github/shadowsocks/database/DBHelper;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDefault()Lcom/github/shadowsocks/database/Profile;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/github/shadowsocks/database/ProfileManager$$anon$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/database/ProfileManager$$anon$1;-><init>(Lcom/github/shadowsocks/database/ProfileManager;)V

    .line 300
    .local v0, "profile":Lcom/github/shadowsocks/database/Profile;
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/ProfileManager;->createProfile(Lcom/github/shadowsocks/database/Profile;)Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    return-object v1
.end method

.method public createProfile(Lcom/github/shadowsocks/database/Profile;)Lcom/github/shadowsocks/database/Profile;
    .locals 9
    .param p1, "p"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 56
    if-nez p1, :cond_1

    new-instance v2, Lcom/github/shadowsocks/database/Profile;

    invoke-direct {v2}, Lcom/github/shadowsocks/database/Profile;-><init>()V

    .line 57
    .local v2, "profile":Lcom/github/shadowsocks/database/Profile;
    :goto_0
    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/database/Profile;->id_$eq(I)V

    .line 59
    :try_start_0
    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->currentProfile()Lscala/Option;

    move-result-object v3

    .line 60
    instance-of v4, v3, Lscala/Some;

    if-eqz v4, :cond_2

    check-cast v3, Lscala/Some;

    invoke-virtual {v3}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/shadowsocks/database/Profile;

    .line 62
    .local v1, "oldProfile":Lcom/github/shadowsocks/database/Profile;
    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/database/Profile;->route_$eq(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->ipv6()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/database/Profile;->ipv6_$eq(Z)V

    .line 64
    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->proxyApps()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/database/Profile;->proxyApps_$eq(Z)V

    .line 65
    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->bypass()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/database/Profile;->bypass_$eq(Z)V

    .line 66
    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->individual()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/database/Profile;->individual_$eq(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->udpdns()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/database/Profile;->udpdns_$eq(Z)V

    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 70
    .end local v1    # "oldProfile":Lcom/github/shadowsocks/database/Profile;
    :goto_1
    iget-object v3, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    iget-object v4, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "MAX(userOrder)"

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 70
    invoke-interface {v3, v4, v5}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v3

    .line 71
    invoke-interface {v3}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 72
    .local v0, "last":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-ne v3, v8, :cond_0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-eqz v3, :cond_0

    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/github/shadowsocks/database/Profile;->userOrder_$eq(J)V

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 74
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/ProfileManager;->profileAddedListener()Lscala/Function1;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 80
    .end local v0    # "last":[Ljava/lang/String;
    :goto_2
    return-object v2

    .end local v2    # "profile":Lcom/github/shadowsocks/database/Profile;
    :cond_1
    move-object v2, p1

    .line 56
    goto/16 :goto_0

    .line 68
    .restart local v2    # "profile":Lcom/github/shadowsocks/database/Profile;
    :cond_2
    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 74
    .restart local v0    # "last":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/ProfileManager;->profileAddedListener()Lscala/Function1;

    move-result-object v3

    invoke-interface {v3, v2}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 76
    .end local v0    # "last":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 77
    const-string v4, "ProfileManager"

    const-string v5, "addProfile"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 76
    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2
.end method

.method public createProfile$default$1()Lcom/github/shadowsocks/database/Profile;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public createProfile_dr(Lcom/github/shadowsocks/database/Profile;)Lcom/github/shadowsocks/database/Profile;
    .locals 10
    .param p1, "p"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 84
    if-nez p1, :cond_1

    new-instance v3, Lcom/github/shadowsocks/database/Profile;

    invoke-direct {v3}, Lcom/github/shadowsocks/database/Profile;-><init>()V

    .line 85
    .local v3, "profile":Lcom/github/shadowsocks/database/Profile;
    :goto_0
    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->id_$eq(I)V

    .line 87
    :try_start_0
    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->currentProfile()Lscala/Option;

    move-result-object v4

    .line 88
    instance-of v5, v4, Lscala/Some;

    if-eqz v5, :cond_2

    check-cast v4, Lscala/Some;

    invoke-virtual {v4}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/shadowsocks/database/Profile;

    .line 90
    .local v2, "oldProfile":Lcom/github/shadowsocks/database/Profile;
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->route_$eq(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->ipv6()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->ipv6_$eq(Z)V

    .line 92
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->proxyApps()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->proxyApps_$eq(Z)V

    .line 93
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->bypass()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->bypass_$eq(Z)V

    .line 94
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->individual()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->individual_$eq(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->udpdns()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->udpdns_$eq(Z)V

    .line 96
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->dns()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->dns_$eq(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->china_dns()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->china_dns_$eq(Ljava/lang/String;)V

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 100
    .end local v2    # "oldProfile":Lcom/github/shadowsocks/database/Profile;
    :goto_1
    iget-object v4, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    iget-object v5, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v5}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v5

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "MAX(userOrder)"

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    .line 101
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    .line 100
    invoke-interface {v4, v5, v6}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    .line 101
    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 102
    .local v0, "last":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-ne v4, v9, :cond_0

    const/4 v4, 0x0

    aget-object v4, v0, v4

    if-eqz v4, :cond_0

    new-instance v4, Lscala/collection/immutable/StringOps;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/github/shadowsocks/database/Profile;->userOrder_$eq(J)V

    .line 104
    :cond_0
    iget-object v4, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 105
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "host"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "remotePort"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->remotePort()I

    move-result v6

    invoke-static {v6}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 108
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "password"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "protocol"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->protocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 110
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "protocol_param"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->protocol_param()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 111
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "obfs"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->obfs()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "obfs_param"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->obfs_param()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "url_group"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->url_group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 114
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "method"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/shadowsocks/database/Profile;

    .line 115
    .local v1, "last_exist":Lcom/github/shadowsocks/database/Profile;
    if-nez v1, :cond_4

    .line 117
    iget-object v4, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 118
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/ProfileManager;->profileAddedListener()Lscala/Function1;

    move-result-object v4

    if-nez v4, :cond_3

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 125
    .end local v0    # "last":[Ljava/lang/String;
    .end local v1    # "last_exist":Lcom/github/shadowsocks/database/Profile;
    :goto_2
    return-object v3

    .end local v3    # "profile":Lcom/github/shadowsocks/database/Profile;
    :cond_1
    move-object v3, p1

    .line 84
    goto/16 :goto_0

    .line 98
    .restart local v3    # "profile":Lcom/github/shadowsocks/database/Profile;
    :cond_2
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_1

    .line 118
    .restart local v0    # "last":[Ljava/lang/String;
    .restart local v1    # "last_exist":Lcom/github/shadowsocks/database/Profile;
    :cond_3
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/ProfileManager;->profileAddedListener()Lscala/Function1;

    move-result-object v4

    invoke-interface {v4, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 121
    .end local v0    # "last":[Ljava/lang/String;
    .end local v1    # "last_exist":Lcom/github/shadowsocks/database/Profile;
    :catch_0
    move-exception v4

    .line 122
    const-string v5, "ProfileManager"

    const-string v6, "addProfile"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    sget-object v5, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 121
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 115
    .restart local v0    # "last":[Ljava/lang/String;
    .restart local v1    # "last_exist":Lcom/github/shadowsocks/database/Profile;
    :cond_4
    :try_start_1
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public createProfile_sub(Lcom/github/shadowsocks/database/Profile;)I
    .locals 11
    .param p1, "p"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 129
    if-nez p1, :cond_1

    new-instance v3, Lcom/github/shadowsocks/database/Profile;

    invoke-direct {v3}, Lcom/github/shadowsocks/database/Profile;-><init>()V

    .line 130
    .local v3, "profile":Lcom/github/shadowsocks/database/Profile;
    :goto_0
    invoke-virtual {v3, v5}, Lcom/github/shadowsocks/database/Profile;->id_$eq(I)V

    .line 132
    :try_start_0
    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->currentProfile()Lscala/Option;

    move-result-object v4

    .line 133
    instance-of v6, v4, Lscala/Some;

    if-eqz v6, :cond_2

    check-cast v4, Lscala/Some;

    invoke-virtual {v4}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/shadowsocks/database/Profile;

    .line 135
    .local v2, "oldProfile":Lcom/github/shadowsocks/database/Profile;
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->route()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->route_$eq(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->ipv6()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->ipv6_$eq(Z)V

    .line 137
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->proxyApps()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->proxyApps_$eq(Z)V

    .line 138
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->bypass()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->bypass_$eq(Z)V

    .line 139
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->individual()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->individual_$eq(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->udpdns()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->udpdns_$eq(Z)V

    .line 141
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->dns()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->dns_$eq(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Lcom/github/shadowsocks/database/Profile;->china_dns()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/database/Profile;->china_dns_$eq(Ljava/lang/String;)V

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 145
    .end local v2    # "oldProfile":Lcom/github/shadowsocks/database/Profile;
    :goto_1
    iget-object v4, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    iget-object v6, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v6}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v6

    invoke-interface {v6}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "MAX(userOrder)"

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v6

    .line 146
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    .line 145
    invoke-interface {v4, v6, v7}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v4

    .line 146
    invoke-interface {v4}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 147
    .local v0, "last":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-ne v4, v10, :cond_0

    const/4 v4, 0x0

    aget-object v4, v0, v4

    if-eqz v4, :cond_0

    new-instance v4, Lscala/collection/immutable/StringOps;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v6, v4

    invoke-virtual {v3, v6, v7}, Lcom/github/shadowsocks/database/Profile;->userOrder_$eq(J)V

    .line 149
    :cond_0
    iget-object v4, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    .line 150
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v6, "name"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 151
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v6, "host"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 152
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v6, "remotePort"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->remotePort()I

    move-result v7

    invoke-static {v7}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 153
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v6, "password"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 154
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v6, "protocol"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->protocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 155
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v6, "protocol_param"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->protocol_param()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 156
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v6, "obfs"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->obfs()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 157
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v6, "obfs_param"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->obfs_param()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 158
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v6, "url_group"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->url_group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    .line 159
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v6, "method"

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/shadowsocks/database/Profile;

    .line 160
    .local v1, "last_exist":Lcom/github/shadowsocks/database/Profile;
    if-nez v1, :cond_3

    .line 161
    iget-object v4, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    move v4, v5

    .line 128
    .end local v0    # "last":[Ljava/lang/String;
    .end local v1    # "last_exist":Lcom/github/shadowsocks/database/Profile;
    :goto_2
    return v4

    .end local v3    # "profile":Lcom/github/shadowsocks/database/Profile;
    :cond_1
    move-object v3, p1

    .line 129
    goto/16 :goto_0

    .line 143
    .restart local v3    # "profile":Lcom/github/shadowsocks/database/Profile;
    :cond_2
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_1

    .line 164
    .restart local v0    # "last":[Ljava/lang/String;
    .restart local v1    # "last_exist":Lcom/github/shadowsocks/database/Profile;
    :cond_3
    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->id()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_2

    .line 167
    .end local v0    # "last":[Ljava/lang/String;
    .end local v1    # "last_exist":Lcom/github/shadowsocks/database/Profile;
    :catch_0
    move-exception v4

    .line 168
    const-string v6, "ProfileManager"

    const-string v7, "addProfile"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    sget-object v6, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    move v4, v5

    .line 170
    goto :goto_2
.end method

.method public delProfile(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v1, "ProfileManager"

    const-string v2, "delProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 236
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllProfiles()Lscala/Option;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option",
            "<",
            "Lscala/collection/immutable/List",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 255
    :try_start_0
    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    sget-object v1, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    iget-object v2, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iget-object v3, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "userOrder"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/JavaConversions$;->asScalaBuffer(Ljava/util/List;)Lscala/collection/mutable/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/Buffer;->toList()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const-string v1, "ProfileManager"

    const-string v2, "getAllProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 260
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public getAllProfilesByElapsed()Lscala/Option;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option",
            "<",
            "Lscala/collection/immutable/List",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 279
    :try_start_0
    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    sget-object v1, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    iget-object v2, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iget-object v3, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "elapsed"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->not()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "elapsed"

    const/4 v5, 0x0

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/JavaConversions$;->asScalaBuffer(Ljava/util/List;)Lscala/collection/mutable/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/Buffer;->toList()Lscala/collection/immutable/List;

    move-result-object v1

    .line 280
    sget-object v2, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    iget-object v3, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    iget-object v4, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v4

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    const-string v5, "elapsed"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string v5, "elapsed"

    const/4 v6, 0x0

    invoke-static {v6}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/JavaConversions$;->asScalaBuffer(Ljava/util/List;)Lscala/collection/mutable/Buffer;

    move-result-object v2

    invoke-interface {v2}, Lscala/collection/mutable/Buffer;->toList()Lscala/collection/immutable/List;

    move-result-object v2

    sget-object v3, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v3}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lscala/collection/immutable/List;->$plus$plus(Lscala/collection/GenTraversableOnce;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string v1, "ProfileManager"

    const-string v2, "getAllProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 285
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public getAllProfilesByGroup(Ljava/lang/String;)Lscala/Option;
    .locals 5
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option",
            "<",
            "Lscala/collection/immutable/List",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 267
    :try_start_0
    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    sget-object v1, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    iget-object v2, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iget-object v3, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "url_group"

    invoke-virtual {v3, v4, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/JavaConversions$;->asScalaBuffer(Ljava/util/List;)Lscala/collection/mutable/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/Buffer;->toList()Lscala/collection/immutable/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    const-string v1, "ProfileManager"

    const-string v2, "getAllProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 272
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public getFirstProfile()Lscala/Option;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v2, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lscala/Predef$;->long2Long(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "result":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lscala/Option$;->MODULE$:Lscala/Option$;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object v1

    .line 241
    .end local v0    # "result":Ljava/util/List;
    :goto_0
    return-object v1

    .line 243
    .restart local v0    # "result":Ljava/util/List;
    :cond_0
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v0    # "result":Ljava/util/List;
    :catch_0
    move-exception v1

    .line 246
    const-string v2, "ProfileManager"

    const-string v3, "getAllProfiles"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 248
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public getProfile(I)Lscala/Option;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lscala/Option",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    .line 217
    if-eqz v0, :cond_0

    sget-object v1, Lscala/Option$;->MODULE$:Lscala/Option$;

    invoke-virtual {v1, v0}, Lscala/Option$;->apply(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 218
    :cond_0
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string v1, "ProfileManager"

    const-string v2, "getProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 224
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public profileAddedListener()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/github/shadowsocks/database/ProfileManager;->profileAddedListener:Lscala/Function1;

    return-object v0
.end method

.method public profileAddedListener_$eq(Lscala/Function1;)V
    .locals 0
    .param p1, "x$1"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/github/shadowsocks/database/ProfileManager;->profileAddedListener:Lscala/Function1;

    return-void
.end method

.method public setProfileAddedListener(Lscala/Function1;)V
    .locals 0
    .param p1, "listener"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/database/ProfileManager;->profileAddedListener_$eq(Lscala/Function1;)V

    return-void
.end method

.method public updateAllProfile_Boolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 200
    if-eqz p2, :cond_0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "UPDATE `profile` SET "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, " = \'1\';"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    .line 205
    :goto_0
    const/4 v0, 0x1

    .line 199
    :goto_1
    return v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "UPDATE `profile` SET "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, " = \'0\';"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v1, "ProfileManager"

    const-string v2, "updateProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 210
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public updateAllProfile_String(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v2, "UPDATE `profile` SET "

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, "\';"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "ProfileManager"

    const-string v2, "updateProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateProfile(Lcom/github/shadowsocks/database/Profile;)Z
    .locals 3
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/github/shadowsocks/database/ProfileManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string v1, "ProfileManager"

    const-string v2, "updateProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 182
    const/4 v0, 0x0

    goto :goto_0
.end method
