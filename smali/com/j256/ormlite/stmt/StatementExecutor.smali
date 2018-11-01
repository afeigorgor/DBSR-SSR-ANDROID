.class public Lcom/j256/ormlite/stmt/StatementExecutor;
.super Ljava/lang/Object;
.source "StatementExecutor.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/GenericRowMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/stmt/GenericRowMapper",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static logger:Lcom/j256/ormlite/logger/Logger;

.field private static final noFieldTypes:[Lcom/j256/ormlite/field/FieldType;


# instance fields
.field private final dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private final databaseType:Lcom/j256/ormlite/db/DatabaseType;

.field private ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

.field private ifExistsQuery:Ljava/lang/String;

.field private final localIsInBatchMode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedDelete",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedCreate",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/mapped/MappedUpdate",
            "<TT;TID;>;"
        }
    .end annotation
.end field

.field private preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/stmt/PreparedQuery",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final tableInfo:Lcom/j256/ormlite/table/TableInfo;
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
    .line 52
    const-class v0, Lcom/j256/ormlite/stmt/StatementExecutor;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/j256/ormlite/field/FieldType;

    sput-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    return-void
.end method

.method public constructor <init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V
    .locals 1
    .param p1, "databaseType"    # Lcom/j256/ormlite/db/DatabaseType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/db/DatabaseType;",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    .local p3, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;TID;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/j256/ormlite/stmt/StatementExecutor$1;

    invoke-direct {v0, p0}, Lcom/j256/ormlite/stmt/StatementExecutor$1;-><init>(Lcom/j256/ormlite/stmt/StatementExecutor;)V

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    .line 81
    iput-object p1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    .line 82
    iput-object p2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    .line 83
    iput-object p3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 84
    return-void
.end method

.method private assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V
    .locals 3
    .param p1, "compiledStatement"    # Lcom/j256/ormlite/support/CompiledStatement;
    .param p2, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 698
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 699
    aget-object v1, p2, v0

    sget-object v2, Lcom/j256/ormlite/field/SqlType;->STRING:Lcom/j256/ormlite/field/SqlType;

    invoke-interface {p1, v0, v1, v2}, Lcom/j256/ormlite/support/CompiledStatement;->setObject(ILjava/lang/Object;Lcom/j256/ormlite/field/SqlType;)V

    .line 698
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 701
    :cond_0
    return-void
.end method

.method private prepareQueryForAll()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 704
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    if-nez v0, :cond_0

    .line 705
    new-instance v0, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v0, v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    .line 707
    :cond_0
    return-void
.end method


# virtual methods
.method public buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;ILcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/stmt/SelectIterator;
    .locals 6
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "resultFlags"    # I
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "I",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
            "Lcom/j256/ormlite/stmt/SelectIterator",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p1, "classDao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/StatementExecutor;->prepareQueryForAll()V

    .line 217
    iget-object v3, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;

    move-result-object v0

    return-object v0
.end method

.method public buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;
    .locals 9
    .param p2, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .param p5, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/BaseDaoImpl",
            "<TT;TID;>;",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/stmt/PreparedStmt",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            "I)",
            "Lcom/j256/ormlite/stmt/SelectIterator",
            "<TT;TID;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p1, "classDao":Lcom/j256/ormlite/dao/BaseDaoImpl;, "Lcom/j256/ormlite/dao/BaseDaoImpl<TT;TID;>;"
    .local p3, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v5

    .line 244
    .local v5, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v6, 0x0

    .line 246
    .local v6, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v1, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p3, v5, v1, p5}, Lcom/j256/ormlite/stmt/PreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v6

    .line 247
    new-instance v0, Lcom/j256/ormlite/stmt/SelectIterator;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v1}, Lcom/j256/ormlite/table/TableInfo;->getDataClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p3}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v7

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/j256/ormlite/stmt/SelectIterator;-><init>(Ljava/lang/Class;Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/support/CompiledStatement;Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .local v0, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    const/4 v5, 0x0

    .line 250
    const/4 v6, 0x0

    .line 253
    const-string v1, "compiled statement"

    invoke-static {v6, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 254
    if-eqz v5, :cond_0

    .line 255
    invoke-interface {p2, v5}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_0
    return-object v0

    .line 253
    .end local v0    # "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :catchall_0
    move-exception v1

    const-string v2, "compiled statement"

    invoke-static {v6, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 254
    if-eqz v5, :cond_1

    .line 255
    invoke-interface {p2, v5}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_1
    throw v1
.end method

.method public create(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 3
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    if-nez v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedInsert:Lcom/j256/ormlite/stmt/mapped/MappedCreate;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedCreate;->insert(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    .line 459
    .local v0, "result":I
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 462
    :cond_1
    return v0
.end method

.method public delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 3
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    if-nez v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    invoke-virtual {v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->delete(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    .line 529
    .local v0, "result":I
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 532
    :cond_1
    return v0
.end method

.method public deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 3
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    if-nez v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedDelete:Lcom/j256/ormlite/stmt/mapped/MappedDelete;

    invoke-virtual {v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedDelete;->deleteById(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    .line 543
    .local v0, "result":I
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 546
    :cond_1
    return v0
.end method

.method public executeRawNoArgs(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;)I
    .locals 2
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 428
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "running raw execute statement: {}"

    invoke-virtual {v0, v1, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Lcom/j256/ormlite/support/DatabaseConnection;->executeStatement(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ifExists(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "connection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 680
    iget-object v6, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 681
    new-instance v3, Lcom/j256/ormlite/stmt/QueryBuilder;

    iget-object v6, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v7, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    iget-object v8, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-direct {v3, v6, v7, v8}, Lcom/j256/ormlite/stmt/QueryBuilder;-><init>(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/dao/Dao;)V

    .line 682
    .local v3, "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    new-array v6, v4, [Ljava/lang/String;

    const-string v7, "COUNT(*)"

    aput-object v7, v6, v5

    invoke-virtual {v3, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    .line 687
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v6

    iget-object v7, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v7}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/j256/ormlite/field/FieldType;->getColumnName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/j256/ormlite/stmt/SelectArg;

    invoke-direct {v8}, Lcom/j256/ormlite/stmt/SelectArg;-><init>()V

    invoke-virtual {v6, v7, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 688
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    .line 689
    new-array v6, v4, [Lcom/j256/ormlite/field/FieldType;

    iget-object v7, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v7}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v7

    aput-object v7, v6, v5

    iput-object v6, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    .line 691
    .end local v3    # "qb":Lcom/j256/ormlite/stmt/QueryBuilder;, "Lcom/j256/ormlite/stmt/QueryBuilder<TT;TID;>;"
    :cond_0
    iget-object v6, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v6}, Lcom/j256/ormlite/table/TableInfo;->getIdField()Lcom/j256/ormlite/field/FieldType;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/j256/ormlite/field/FieldType;->convertJavaFieldToSqlArgValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 692
    .local v2, "idSqlArg":Ljava/lang/Object;
    iget-object v6, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v5

    iget-object v8, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    invoke-interface {p1, v6, v7, v8}, Lcom/j256/ormlite/support/DatabaseConnection;->queryForLong(Ljava/lang/String;[Ljava/lang/Object;[Lcom/j256/ormlite/field/FieldType;)J

    move-result-wide v0

    .line 693
    .local v0, "count":J
    sget-object v6, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v7, "query of \'{}\' returned {}"

    iget-object v8, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->ifExistsQuery:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 694
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_1

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method public bridge synthetic mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-virtual {p0, p1}, Lcom/j256/ormlite/stmt/StatementExecutor;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mapRow(Lcom/j256/ormlite/support/DatabaseResults;)[Ljava/lang/String;
    .locals 4
    .param p1, "results"    # Lcom/j256/ormlite/support/DatabaseResults;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 671
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-interface {p1}, Lcom/j256/ormlite/support/DatabaseResults;->getColumnCount()I

    move-result v1

    .line 672
    .local v1, "columnN":I
    new-array v2, v1, [Ljava/lang/String;

    .line 673
    .local v2, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "colC":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 674
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/DatabaseResults;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    :cond_0
    return-object v2
.end method

.method public query(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;
    .locals 8
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/stmt/PreparedStmt",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
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
    .line 197
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    const/4 v1, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/j256/ormlite/stmt/StatementExecutor;->buildIterator(Lcom/j256/ormlite/dao/BaseDaoImpl;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;I)Lcom/j256/ormlite/stmt/SelectIterator;

    move-result-object v6

    .line 200
    .local v6, "iterator":Lcom/j256/ormlite/stmt/SelectIterator;, "Lcom/j256/ormlite/stmt/SelectIterator<TT;TID;>;"
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/SelectIterator;->hasNextThrow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v6}, Lcom/j256/ormlite/stmt/SelectIterator;->nextThrow()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 207
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v0

    const-string v1, "iterator"

    invoke-static {v6, v1}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 204
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :try_start_1
    sget-object v0, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "query of \'{}\' returned {} results"

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    const-string v0, "iterator"

    invoke-static {v6, v0}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v7
.end method

.method public queryForAll(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;
    .locals 1
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")",
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
    .line 125
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    invoke-direct {p0}, Lcom/j256/ormlite/stmt/StatementExecutor;->prepareQueryForAll()V

    .line 126
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->preparedQueryForAll:Lcom/j256/ormlite/stmt/PreparedQuery;

    invoke-virtual {p0, p1, v0, p2}, Lcom/j256/ormlite/stmt/StatementExecutor;->query(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForFirst(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/PreparedStmt;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 5
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "Lcom/j256/ormlite/stmt/PreparedStmt",
            "<TT;>;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "preparedStmt":Lcom/j256/ormlite/stmt/PreparedStmt;, "Lcom/j256/ormlite/stmt/PreparedStmt<TT;>;"
    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-interface {p2, p1, v2}, Lcom/j256/ormlite/stmt/PreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    .line 103
    .local v0, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    const/4 v1, 0x0

    .line 105
    .local v1, "results":Lcom/j256/ormlite/support/DatabaseResults;
    const/4 v2, 0x1

    :try_start_0
    invoke-interface {v0, v2}, Lcom/j256/ormlite/support/CompiledStatement;->setMaxRows(I)V

    .line 106
    invoke-interface {v0, p3}, Lcom/j256/ormlite/support/CompiledStatement;->runQuery(Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v1

    .line 107
    invoke-interface {v1}, Lcom/j256/ormlite/support/DatabaseResults;->first()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query-for-first of \'{}\' returned at least 1 result"

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    invoke-interface {p2, v1}, Lcom/j256/ormlite/stmt/PreparedStmt;->mapRow(Lcom/j256/ormlite/support/DatabaseResults;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 115
    const-string v3, "results"

    invoke-static {v1, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 116
    const-string v3, "compiled statement"

    invoke-static {v0, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    :goto_0
    return-object v2

    .line 111
    :cond_0
    :try_start_1
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query-for-first of \'{}\' returned at 0 results"

    invoke-interface {p2}, Lcom/j256/ormlite/stmt/PreparedStmt;->getStatement()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    const/4 v2, 0x0

    .line 115
    const-string v3, "results"

    invoke-static {v1, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 116
    const-string v3, "compiled statement"

    invoke-static {v0, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v2

    const-string v3, "results"

    invoke-static {v1, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 116
    const-string v3, "compiled statement"

    invoke-static {v0, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2
.end method

.method public queryForId(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;
    .locals 3
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TID;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "id":Ljava/lang/Object;, "TID;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;Lcom/j256/ormlite/field/FieldType;)Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    move-result-object v0

    iput-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedQueryForId:Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;

    invoke-virtual {v0, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedQueryForFieldEq;->execute(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public queryRaw(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/String;[Ljava/lang/String;Lcom/j256/ormlite/dao/ObjectCache;)Lcom/j256/ormlite/dao/GenericRawResults;
    .locals 9
    .param p1, "connectionSource"    # Lcom/j256/ormlite/support/ConnectionSource;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/String;
    .param p4, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
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
    .line 265
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "executing raw query for: {}"

    invoke-virtual {v2, v3, p2}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    array-length v2, p3

    if-lez v2, :cond_0

    .line 268
    sget-object v2, Lcom/j256/ormlite/stmt/StatementExecutor;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v3, "query arguments: {}"

    invoke-virtual {v2, v3, p3}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-virtual {v2}, Lcom/j256/ormlite/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/j256/ormlite/support/ConnectionSource;->getReadOnlyConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v0

    .line 271
    .local v0, "connection":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v6, 0x0

    .line 273
    .local v6, "compiledStatement":Lcom/j256/ormlite/support/CompiledStatement;
    :try_start_0
    sget-object v2, Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;->SELECT:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    sget-object v3, Lcom/j256/ormlite/stmt/StatementExecutor;->noFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v6

    .line 275
    invoke-direct {p0, v6, p3}, Lcom/j256/ormlite/stmt/StatementExecutor;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;[Ljava/lang/String;)V

    .line 276
    new-instance v1, Lcom/j256/ormlite/stmt/RawResultsImpl;

    const-class v5, [Ljava/lang/String;

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move-object v7, p0

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/j256/ormlite/stmt/RawResultsImpl;-><init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/String;Ljava/lang/Class;Lcom/j256/ormlite/support/CompiledStatement;Lcom/j256/ormlite/stmt/GenericRowMapper;Lcom/j256/ormlite/dao/ObjectCache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .local v1, "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<[Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 279
    const/4 v0, 0x0

    .line 282
    const-string v2, "compiled statement"

    invoke-static {v6, v2}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 283
    if-eqz v0, :cond_1

    .line 284
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_1
    return-object v1

    .line 282
    .end local v1    # "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<[Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    const-string v3, "compiled statement"

    invoke-static {v6, v3}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 283
    if-eqz v0, :cond_2

    .line 284
    invoke-interface {p1, v0}, Lcom/j256/ormlite/support/ConnectionSource;->releaseConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_2
    throw v2
.end method

.method public update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I
    .locals 3
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p3, "objectCache"    # Lcom/j256/ormlite/dao/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/DatabaseConnection;",
            "TT;",
            "Lcom/j256/ormlite/dao/ObjectCache;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lcom/j256/ormlite/stmt/StatementExecutor;, "Lcom/j256/ormlite/stmt/StatementExecutor<TT;TID;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    if-nez v1, :cond_0

    .line 470
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->databaseType:Lcom/j256/ormlite/db/DatabaseType;

    iget-object v2, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->tableInfo:Lcom/j256/ormlite/table/TableInfo;

    invoke-static {v1, v2}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->build(Lcom/j256/ormlite/db/DatabaseType;Lcom/j256/ormlite/table/TableInfo;)Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    move-result-object v1

    iput-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->mappedUpdate:Lcom/j256/ormlite/stmt/mapped/MappedUpdate;

    invoke-virtual {v1, p1, p2, p3}, Lcom/j256/ormlite/stmt/mapped/MappedUpdate;->update(Lcom/j256/ormlite/support/DatabaseConnection;Ljava/lang/Object;Lcom/j256/ormlite/dao/ObjectCache;)I

    move-result v0

    .line 473
    .local v0, "result":I
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->localIsInBatchMode:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/j256/ormlite/stmt/StatementExecutor;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->notifyChanges()V

    .line 476
    :cond_1
    return v0
.end method
