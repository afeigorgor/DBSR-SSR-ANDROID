.class public Lcom/github/shadowsocks/database/SSRSubManager;
.super Ljava/lang/Object;
.source "SSRSubManager.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final dbHelper:Lcom/github/shadowsocks/database/DBHelper;

.field private ssrsubAddedListener:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Lcom/github/shadowsocks/database/SSRSub;",
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
    iput-object p1, p0, Lcom/github/shadowsocks/database/SSRSubManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDefault()Lcom/github/shadowsocks/database/SSRSub;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/github/shadowsocks/database/SSRSubManager$$anon$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/database/SSRSubManager$$anon$1;-><init>(Lcom/github/shadowsocks/database/SSRSubManager;)V

    .line 137
    .local v0, "ssrsub":Lcom/github/shadowsocks/database/SSRSub;
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/SSRSubManager;->createSSRSub(Lcom/github/shadowsocks/database/SSRSub;)Lcom/github/shadowsocks/database/SSRSub;

    move-result-object v1

    return-object v1
.end method

.method public createSSRSub(Lcom/github/shadowsocks/database/SSRSub;)Lcom/github/shadowsocks/database/SSRSub;
    .locals 4
    .param p1, "p"    # Lcom/github/shadowsocks/database/SSRSub;

    .prologue
    .line 56
    if-nez p1, :cond_0

    new-instance v0, Lcom/github/shadowsocks/database/SSRSub;

    invoke-direct {v0}, Lcom/github/shadowsocks/database/SSRSub;-><init>()V

    .line 57
    .local v0, "ssrsub":Lcom/github/shadowsocks/database/SSRSub;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/SSRSub;->id_$eq(I)V

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/github/shadowsocks/database/SSRSubManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/DBHelper;->ssrsubDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 61
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/SSRSubManager;->ssrsubAddedListener()Lscala/Function1;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 67
    :goto_1
    return-object v0

    .end local v0    # "ssrsub":Lcom/github/shadowsocks/database/SSRSub;
    :cond_0
    move-object v0, p1

    .line 56
    goto :goto_0

    .line 61
    .restart local v0    # "ssrsub":Lcom/github/shadowsocks/database/SSRSub;
    :cond_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/SSRSubManager;->ssrsubAddedListener()Lscala/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 63
    :catch_0
    move-exception v1

    .line 64
    const-string v2, "SSRSubManager"

    const-string v3, "addSSRSub"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 63
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1
.end method

.method public delSSRSub(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/github/shadowsocks/database/SSRSubManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/DBHelper;->ssrsubDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string v1, "SSRSubManager"

    const-string v2, "delSSRSub"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllSSRSubs()Lscala/Option;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option",
            "<",
            "Lscala/collection/immutable/List",
            "<",
            "Lcom/github/shadowsocks/database/SSRSub;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    sget-object v0, Lscala/Option$;->MODULE$:Lscala/Option$;

    sget-object v1, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    iget-object v2, p0, Lcom/github/shadowsocks/database/SSRSubManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/DBHelper;->ssrsubDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    iget-object v3, p0, Lcom/github/shadowsocks/database/SSRSubManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/DBHelper;->ssrsubDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v3

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

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

    .line 121
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const-string v1, "SSRSubManager"

    const-string v2, "getAllSSRSubs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 128
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public getFirstSSRSub()Lscala/Option;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Option",
            "<",
            "Lcom/github/shadowsocks/database/SSRSub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/github/shadowsocks/database/SSRSubManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/DBHelper;->ssrsubDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    iget-object v2, p0, Lcom/github/shadowsocks/database/SSRSubManager;->dbHelper:Lcom/github/shadowsocks/database/DBHelper;

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/DBHelper;->ssrsubDao()Lcom/j256/ormlite/dao/Dao;

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

    .line 111
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

    .line 109
    .end local v0    # "result":Ljava/util/List;
    :goto_0
    return-object v1

    .line 111
    .restart local v0    # "result":Ljava/util/List;
    :cond_0
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v0    # "result":Ljava/util/List;
    :catch_0
    move-exception v1

    .line 114
    const-string v2, "SSRSubManager"

    const-string v3, "getAllSSRSubs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 116
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public setSSRSubAddedListener(Lscala/Function1;)V
    .locals 0
    .param p1, "listener"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lcom/github/shadowsocks/database/SSRSub;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/database/SSRSubManager;->ssrsubAddedListener_$eq(Lscala/Function1;)V

    return-void
.end method

.method public ssrsubAddedListener()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1",
            "<",
            "Lcom/github/shadowsocks/database/SSRSub;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/github/shadowsocks/database/SSRSubManager;->ssrsubAddedListener:Lscala/Function1;

    return-object v0
.end method

.method public ssrsubAddedListener_$eq(Lscala/Function1;)V
    .locals 0
    .param p1, "x$1"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1",
            "<",
            "Lcom/github/shadowsocks/database/SSRSub;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/github/shadowsocks/database/SSRSubManager;->ssrsubAddedListener:Lscala/Function1;

    return-void
.end method
