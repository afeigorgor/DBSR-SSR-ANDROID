.class public Lcom/github/shadowsocks/database/DBHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "DBHelper.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private volatile bitmap$0:B

.field private final context:Landroid/content/Context;

.field private profileDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ssrsubDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/github/shadowsocks/database/SSRSub;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/github/shadowsocks/database/DBHelper;->context:Landroid/content/Context;

    .line 68
    const-string v0, "profile.db"

    const/4 v1, 0x0

    const/16 v2, 0x18

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private profileDao$lzycompute()Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/database/DBHelper;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const-class v0, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/DBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/database/DBHelper;->profileDao:Lcom/j256/ormlite/dao/Dao;

    iget-byte v0, p0, Lcom/github/shadowsocks/database/DBHelper;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/database/DBHelper;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/database/DBHelper;->profileDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private ssrsubDao$lzycompute()Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/database/DBHelper;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const-class v0, Lcom/github/shadowsocks/database/SSRSub;

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/DBHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/database/DBHelper;->ssrsubDao:Lcom/j256/ormlite/dao/Dao;

    iget-byte v0, p0, Lcom/github/shadowsocks/database/DBHelper;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/database/DBHelper;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/database/DBHelper;->ssrsubDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/github/shadowsocks/database/DBHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;

    .prologue
    .line 75
    const-class v0, Lcom/github/shadowsocks/database/Profile;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 76
    const-class v0, Lcom/github/shadowsocks/database/SSRSub;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 5
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "oldVersion"    # I
    .param p4, "newVersion"    # I

    .prologue
    const/16 v4, 0x13

    const/16 v3, 0xc

    .line 81
    if-eq p3, p4, :cond_0

    .line 82
    const/4 v1, 0x7

    if-ge p3, v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "DROP TABLE IF EXISTS \'profile\';"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/database/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/16 v1, 0x8

    if-ge p3, v1, :cond_3

    .line 90
    :try_start_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN udpdns SMALLINT;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 92
    :goto_1
    const/16 v1, 0x9

    if-ge p3, v1, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN route VARCHAR DEFAULT \'all\';"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 97
    :goto_2
    const/16 v1, 0xa

    if-ge p3, v1, :cond_6

    .line 98
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN auth SMALLINT;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 100
    :goto_3
    const/16 v1, 0xb

    if-ge p3, v1, :cond_7

    .line 101
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN ipv6 SMALLINT;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 103
    :goto_4
    if-ge p3, v3, :cond_8

    .line 104
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "BEGIN TRANSACTION;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` RENAME TO `tmp`;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    .line 106
    const-class v1, Lcom/github/shadowsocks/database/Profile;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 107
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 110
    const-string v2, "INSERT INTO `profile`(id, name, host, localPort, remotePort, password, method, route, proxyApps, bypass, udpdns, auth, ipv6, individual) SELECT id, name, host, localPort, remotePort, password, method, route, 1 - global, bypass, udpdns, auth, ipv6, individual FROM `tmp`;"

    .line 107
    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "DROP TABLE `tmp`;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "COMMIT;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    .line 103
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 120
    :goto_5
    const/16 v1, 0xf

    if-ge p3, v1, :cond_2

    .line 121
    if-lt p3, v3, :cond_a

    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN userOrder LONG;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 122
    :goto_6
    const/4 v1, 0x0

    invoke-static {v1}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 123
    .local v0, "i":Lscala/runtime/IntRef;
    sget-object v1, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryForAll()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/JavaConverters$;->asScalaBufferConverter(Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/convert/Decorators$AsScala;->asScala()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/IterableLike;

    new-instance v2, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;

    invoke-direct {v2, p0, p3, v0}, Lcom/github/shadowsocks/database/DBHelper$$anonfun$onUpgrade$1;-><init>(Lcom/github/shadowsocks/database/DBHelper;ILscala/runtime/IntRef;)V

    invoke-interface {v1, v2}, Lscala/collection/IterableLike;->foreach(Lscala/Function1;)V

    .line 132
    .end local v0    # "i":Lscala/runtime/IntRef;
    :cond_2
    const/16 v1, 0x10

    if-ge p3, v1, :cond_b

    .line 133
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "UPDATE `profile` SET route = \'bypass-lan-china\' WHERE route = \'bypass-china\'"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 136
    :goto_7
    if-ge p3, v4, :cond_c

    .line 137
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN dns VARCHAR DEFAULT \'8.8.8.8:53\';"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 140
    :goto_8
    const/16 v1, 0x14

    if-ge p3, v1, :cond_d

    .line 141
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN china_dns VARCHAR DEFAULT \'114.114.114.114:53,223.5.5.5:53\';"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 144
    :goto_9
    const/16 v1, 0x15

    if-ge p3, v1, :cond_e

    .line 145
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN protocol_param VARCHAR DEFAULT \'\';"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 148
    :goto_a
    const/16 v1, 0x16

    if-ge p3, v1, :cond_f

    .line 149
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN elapsed LONG DEFAULT 0;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 152
    :goto_b
    const/16 v1, 0x17

    if-ge p3, v1, :cond_10

    .line 153
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN url_group VARCHAR DEFAULT \'\';"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    .line 156
    :goto_c
    const/16 v1, 0x18

    if-ge p3, v1, :cond_0

    .line 157
    const-class v1, Lcom/github/shadowsocks/database/SSRSub;

    invoke-static {p2, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 162
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "DROP TABLE IF EXISTS \'profile\';"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/database/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    goto/16 :goto_0

    .line 89
    :cond_3
    :try_start_1
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_1

    .line 94
    :cond_4
    if-ge p3, v4, :cond_5

    .line 95
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "UPDATE `profile` SET route = \'all\' WHERE route IS NULL;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    goto/16 :goto_2

    .line 94
    :cond_5
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_2

    .line 97
    :cond_6
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_3

    .line 100
    :cond_7
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_4

    .line 114
    :cond_8
    const/16 v1, 0xd

    if-ge p3, v1, :cond_9

    .line 115
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN tx LONG;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN rx LONG;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    const-string v2, "ALTER TABLE `profile` ADD COLUMN date VARCHAR;"

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->executeRawNoArgs(Ljava/lang/String;)I

    move-result v1

    .line 114
    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_9
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_5

    .line 121
    :cond_a
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_6

    .line 132
    :cond_b
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_7

    .line 136
    :cond_c
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_8

    .line 140
    :cond_d
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_9

    .line 144
    :cond_e
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_a

    .line 148
    :cond_f
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_b

    .line 152
    :cond_10
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_c
.end method

.method public profileDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-byte v0, p0, Lcom/github/shadowsocks/database/DBHelper;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/database/DBHelper;->profileDao$lzycompute()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/database/DBHelper;->profileDao:Lcom/j256/ormlite/dao/Dao;

    goto :goto_0
.end method

.method public ssrsubDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/github/shadowsocks/database/SSRSub;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-byte v0, p0, Lcom/github/shadowsocks/database/DBHelper;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/database/DBHelper;->ssrsubDao$lzycompute()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/database/DBHelper;->ssrsubDao:Lcom/j256/ormlite/dao/Dao;

    goto :goto_0
.end method
