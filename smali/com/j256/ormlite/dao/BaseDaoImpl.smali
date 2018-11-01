.class public abstract Lcom/j256/ormlite/dao/BaseDaoImpl;
.super Ljava/lang/Object;
.source "BaseDaoImpl.java"

# interfaces
.implements Lcom/j256/ormlite/dao/Dao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/Dao",
        "<TT;TID;>;"
    }
.end annotation


# static fields
.field private static final constantObject:Ljava/lang/Object;

.field private static final daoConfigLevelLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<**>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field private daoObserverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/j256/ormlite/dao/Dao$DaoObserver;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private initialized:Z

.field protected lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private objectCache:Lcom/j256/ormlite/dao/ObjectCache;

.field protected objectFactory:Lcom/j256/ormlite/table/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/ObjectFactory",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/StatementExecutor",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field protected tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected tableInfo:Lcom/j256/ormlite/table/TableInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$1;

    invoke-direct {v0}, Lcom/j256/ormlite/dao/BaseDaoImpl$1;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoConfigLevelLocal:Ljava/lang/ThreadLocal;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/j256/ormlite/dao/BaseDaoImpl;->constantObject:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p2, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-virtual {p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 124
    return-void
.end method

.method protected constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    .line 112
    return-void
.end method

.method private constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    .line 129
    iput-object p3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 130
    if-eqz p1, :cond_0

    .line 131
    iput-object p1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 132
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialize()V

    .line 134
    :cond_0
    return-void
.end method

.method static createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1055
    .local p1, "tableConfig":Lcom/j256/ormlite/table/DatabaseTableConfig;, "Lcom/j256/ormlite/table/DatabaseTableConfig<TT;>;"
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$6;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl$6;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    return-object v0
.end method

.method static createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .param p0, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ID:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1041
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/j256/ormlite/dao/BaseDaoImpl$5;

    invoke-direct {v0, p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl$5;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V

    return-object v0
.end method

.method private createIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 5
    .param p1, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1088
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v2, p0, v3, p1, v4}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;ILcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/stmt/SelectIterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1090
    .local v1, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    return-object v1

    .line 1091
    .end local v1    # "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not build iterator for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private createIterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 8
    .param p2, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 1098
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1100
    .local v7, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    return-object v7

    .line 1101
    .end local v7    # "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :catch_0
    move-exception v6

    .line 1102
    .local v6, "e":Ljava/sql/SQLException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not build prepared-query iterator for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected checkForInitialized()V
    .locals 2

    .prologue
    .line 1060
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-boolean v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialized:Z

    if-nez v0, :cond_0

    .line 1061
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you must call initialize() before you can use the dao"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1063
    :cond_0
    return-void
.end method

.method public closeableIterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 544
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public create(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 318
    if-nez p1, :cond_0

    .line 319
    const/4 v2, 0x0

    .line 330
    :goto_0
    return v2

    .line 321
    :cond_0
    instance-of v2, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 323
    check-cast v1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    .line 324
    .local v1, "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    invoke-virtual {v1, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->setDao(Lcom/j256/ormlite/dao/Dao;)V

    .line 326
    .end local v1    # "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v3}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 328
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v2, v0, p1, v3}, Lcom/j256/ormlite/stmt/StatementExecutor;->create(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 330
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v2
.end method

.method public createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 381
    if-nez p1, :cond_0

    .line 382
    new-instance v2, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {v2, v3, v3, v3}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V

    .line 391
    :goto_0
    return-object v2

    .line 384
    :cond_0
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->extractId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 386
    .local v0, "id":Ljava/lang/Object;, "TID;"
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->idExists(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 387
    :cond_1
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->create(Ljava/lang/Object;)I

    move-result v1

    .line 388
    .local v1, "numRows":I
    new-instance v2, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {v2, v4, v3, v1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V

    goto :goto_0

    .line 390
    .end local v1    # "numRows":I
    :cond_2
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->update(Ljava/lang/Object;)I

    move-result v1

    .line 391
    .restart local v1    # "numRows":I
    new-instance v2, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    invoke-direct {v2, v3, v4, v1}, Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;-><init>(ZZI)V

    goto :goto_0
.end method

.method public delete(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 464
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 466
    if-nez p1, :cond_0

    .line 467
    const/4 v1, 0x0

    .line 473
    :goto_0
    return v1

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 471
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 473
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public deleteById(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 480
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "id":Ljava/lang/Object;, "TID;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 482
    if-nez p1, :cond_0

    .line 483
    const/4 v1, 0x0

    .line 489
    :goto_0
    return v1

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 487
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 489
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public executeRawNoArgs(Ljava/lang/String;)I
    .locals 4
    .param p1, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 695
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v3}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 697
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v2, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->executeRawNoArgs(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 701
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return v2

    .line 698
    :catch_0
    move-exception v1

    .line 699
    .local v1, "e":Ljava/sql/SQLException;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not run raw execute statement "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    .end local v1    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v2
.end method

.method public extractId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TID;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 746
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 747
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v1

    .line 748
    .local v1, "idField":Lcom/j256/ormlite/field/FieldType;
    if-nez v1, :cond_0

    .line 749
    new-instance v2, Ljava/sql/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not have an id field"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 752
    :cond_0
    invoke-virtual {v1, p1}, Lcom/j256/ormlite/field/FieldType;->extractJavaFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 753
    .local v0, "id":Ljava/lang/Object;, "TID;"
    return-object v0
.end method

.method public getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;
    .locals 1

    .prologue
    .line 1011
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    return-object v0
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 758
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getObjectCache()Lcom/j256/ormlite/dao/ObjectCache;
    .locals 1

    .prologue
    .line 871
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    return-object v0
.end method

.method public getObjectFactory()Lcom/j256/ormlite/table/ObjectFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/table/ObjectFactory",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 986
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectFactory:Lcom/j256/ormlite/table/ObjectFactory;

    return-object v0
.end method

.method public getTableInfo()Lcom/j256/ormlite/table/TableInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 1006
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    return-object v0
.end method

.method public idExists(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 944
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "id":Ljava/lang/Object;, "TID;"
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 946
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-virtual {v1, v0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExists(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 948
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public initialize()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    const/4 v11, 0x1

    .line 140
    iget-boolean v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialized:Z

    if-eqz v8, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    if-nez v8, :cond_2

    .line 146
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connectionSource was never set on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 149
    :cond_2
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v8}, Lcom/j256/ormlite/support/ConnectionSource;->getDatabaseType()Lcom/j256/ormlite/db/DatabaseType;

    move-result-object v8

    iput-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 150
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    if-nez v8, :cond_3

    .line 151
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connectionSource is getting a null DatabaseType in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 154
    :cond_3
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    if-nez v8, :cond_4

    .line 155
    new-instance v8, Lcom/j256/ormlite/table/TableInfo;

    iget-object v9, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v10, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->dataClass:Ljava/lang/Class;

    invoke-direct {v8, v9, p0, v10}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/BaseDaoImpl;Ljava/lang/Class;)V

    iput-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 160
    :goto_1
    new-instance v8, Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v9, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v10, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v8, v9, v10, p0}, Lcom/j256/ormlite/stmt/StatementExecutor;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    iput-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    .line 175
    sget-object v8, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoConfigLevelLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 176
    .local v2, "daoConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/dao/BaseDaoImpl<**>;>;"
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-gt v8, v11, :cond_0

    .line 190
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_6

    .line 191
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/j256/ormlite/dao/BaseDaoImpl;

    .line 200
    .local v1, "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {v8, v1}, Lcom/j256/ormlite/dao/DaoManager;->registerDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    invoke-virtual {v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getTableInfo()Lcom/j256/ormlite/table/TableInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/j256/ormlite/table/TableInfo;->getFieldTypes()[Lcom/j256/ormlite/field/FieldType;

    move-result-object v0

    .local v0, "arr$":[Lcom/j256/ormlite/field/FieldType;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v7, :cond_5

    aget-object v4, v0, v6

    .line 205
    .local v4, "fieldType":Lcom/j256/ormlite/field/FieldType;
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->getDataClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/j256/ormlite/field/FieldType;->configDaoInformation(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 157
    .end local v0    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .end local v1    # "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    .end local v2    # "daoConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/dao/BaseDaoImpl<**>;>;"
    .end local v4    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v5    # "i":I
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_4
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    iget-object v9, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v8, v9}, Lcom/j256/ormlite/table/DatabaseTableConfig;->extractFieldTypes(Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 158
    new-instance v8, Lcom/j256/ormlite/table/TableInfo;

    iget-object v9, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v10, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-direct {v8, v9, p0, v10}, Lcom/j256/ormlite/table/TableInfo;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/table/DatabaseTableConfig;)V

    iput-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    goto :goto_1

    .line 207
    .restart local v1    # "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    .restart local v2    # "daoConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/j256/ormlite/dao/BaseDaoImpl<**>;>;"
    .restart local v5    # "i":I
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Ljava/sql/SQLException;
    :try_start_2
    iget-object v8, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-static {v8, v1}, Lcom/j256/ormlite/dao/DaoManager;->unregisterDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/Dao;)V

    .line 210
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .end local v1    # "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    .end local v3    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v8

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 219
    sget-object v9, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoConfigLevelLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->remove()V

    throw v8

    .line 214
    .restart local v0    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .restart local v1    # "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_5
    const/4 v8, 0x1

    :try_start_3
    iput-boolean v8, v1, Lcom/j256/ormlite/dao/BaseDaoImpl;->initialized:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 218
    .end local v0    # "arr$":[Lcom/j256/ormlite/field/FieldType;
    .end local v1    # "dao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<**>;"
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 219
    sget-object v8, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoConfigLevelLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->remove()V

    goto/16 :goto_0
.end method

.method public iterator()Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p1, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 550
    invoke-direct {p0, p1}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createIterator(I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 551
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0
.end method

.method public iterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;
    .locals 1
    .param p2, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;I)",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 607
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/j256/ormlite/dao/BaseDaoImpl;->createIterator(Lcom/j256/ormlite/stmt/PreparedQuery;I)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    .line 609
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->lastIterator:Lcom/j256/ormlite/dao/CloseableIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->iterator()Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    return-object v0
.end method

.method public notifyChanges()V
    .locals 3

    .prologue
    .line 898
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoObserverMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 899
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->daoObserverMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/dao/Dao$DaoObserver;

    .line 900
    .local v0, "daoObserver":Lcom/j256/ormlite/dao/Dao$DaoObserver;
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao$DaoObserver;->onChange()V

    goto :goto_0

    .line 903
    .end local v0    # "daoObserver":Lcom/j256/ormlite/dao/Dao$DaoObserver;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public query(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 277
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v0, v1, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->query(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/stmt/QueryBuilder",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 259
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-direct {v0, v1, v2, p0}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    return-object v0
.end method

.method public queryForAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 248
    iget-object v0, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForAll(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "preparedQuery":Lcom/j256/ormlite/stmt/PreparedQuery;, "Lcom/j256/ormlite/stmt/PreparedQuery<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 237
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 239
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForFirst(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 241
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public queryForId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "id":Ljava/lang/Object;, "TID;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 226
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 228
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v0, p1, v2}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryForId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 230
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v1
.end method

.method public varargs queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/j256/ormlite/dao/GenericRawResults",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 614
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/j256/ormlite/stmt/StatementExecutor;->queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Ljava/sql/SQLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not perform raw query for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/j256/ormlite/misc/SqlExceptionUtil;->create(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method

.method public update(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 397
    .local p0, "this":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/j256/ormlite/dao/BaseDaoImpl;->checkForInitialized()V

    .line 399
    if-nez p1, :cond_0

    .line 400
    const/4 v2, 0x0

    .line 411
    :goto_0
    return v2

    .line 402
    :cond_0
    instance-of v2, p1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 404
    check-cast v1, Lcom/j256/ormlite/misc/BaseDaoEnabled;

    .line 405
    .local v1, "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    invoke-virtual {v1, p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->setDao(Lcom/j256/ormlite/dao/Dao;)V

    .line 407
    .end local v1    # "daoEnabled":Lcom/j256/ormlite/misc/BaseDaoEnabled;, "Lcom/j256/ormlite/misc/BaseDaoEnabled<TT;TID;>;"
    :cond_1
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v3}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/j256/ormlite/support/ConnectionSource;->getReadWriteConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 409
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    iget-object v2, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->statementExecutor:Lcom/j256/ormlite/stmt/StatementExecutor;

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->objectCache:Lcom/j256/ormlite/dao/ObjectCache;

    invoke-virtual {v2, v0, p1, v3}, Lcom/j256/ormlite/stmt/StatementExecutor;->update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 411
    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/j256/ormlite/dao/BaseDaoImpl;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    throw v2
.end method
