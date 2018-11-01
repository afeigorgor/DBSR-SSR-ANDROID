.class public Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;
.super Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;
.source "MappedPreparedStmt.java"

# interfaces
.implements Lcom/j256/ormlite/stmt/PreparedDelete;
.implements Lcom/j256/ormlite/stmt/PreparedQuery;
.implements Lcom/j256/ormlite/stmt/PreparedUpdate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery",
        "<TT;TID;>;",
        "Lcom/j256/ormlite/stmt/PreparedDelete",
        "<TT;>;",
        "Lcom/j256/ormlite/stmt/PreparedQuery",
        "<TT;>;",
        "Lcom/j256/ormlite/stmt/PreparedUpdate",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

.field private final cacheStore:Z

.field private final limit:Ljava/lang/Long;

.field private final type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/stmt/ArgumentHolder;Ljava/lang/Long;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;Z)V
    .locals 0
    .param p2, "statement"    # Ljava/lang/String;
    .param p3, "argFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p4, "resultFieldTypes"    # [Lcom/j256/ormlite/field/FieldType;
    .param p5, "argHolders"    # [Lcom/j256/ormlite/stmt/ArgumentHolder;
    .param p6, "limit"    # Ljava/lang/Long;
    .param p7, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .param p8, "cacheStore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/table/TableInfo",
            "<TT;TID;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "[",
            "Lcom/j256/ormlite/field/FieldType;",
            "[",
            "Lcom/j256/ormlite/stmt/ArgumentHolder;",
            "Ljava/lang/Long;",
            "Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    .local p1, "tableInfo":Lcom/j256/ormlite/table/TableInfo;, "Lcom/j256/ormlite/table/TableInfo<TT;TID;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/stmt/mapped/BaseMappedQuery;-><init>(Lcom/j256/ormlite/table/TableInfo;Ljava/lang/String;[Lcom/j256/ormlite/field/FieldType;[Lcom/j256/ormlite/field/FieldType;)V

    .line 36
    iput-object p5, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    .line 38
    iput-object p6, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->limit:Ljava/lang/Long;

    .line 39
    iput-object p7, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    .line 40
    iput-boolean p8, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->cacheStore:Z

    .line 41
    return-void
.end method

.method private assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 10
    .param p1, "stmt"    # Lcom/j256/ormlite/support/CompiledStatement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    const/4 v4, 0x0

    .line 91
    .local v4, "ok":Z
    :try_start_0
    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->limit:Ljava/lang/Long;

    if-eqz v6, :cond_0

    .line 93
    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->limit:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-interface {p1, v6}, Lcom/j256/ormlite/support/CompiledStatement;->setMaxRows(I)V

    .line 96
    :cond_0
    const/4 v1, 0x0

    .line 97
    .local v1, "argValues":[Ljava/lang/Object;
    sget-object v6, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->logger:Lcom/j256/ormlite/logger/Logger;

    sget-object v7, Lcom/j256/ormlite/logger/Log$Level;->TRACE:Lcom/j256/ormlite/logger/Log$Level;

    invoke-virtual {v6, v7}, Lcom/j256/ormlite/logger/Logger;->isLevelEnabled(Lcom/j256/ormlite/logger/Log$Level;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v6, v6

    if-lez v6, :cond_1

    .line 98
    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v6, v6

    new-array v1, v6, [Ljava/lang/Object;

    .line 100
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 101
    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    aget-object v6, v6, v3

    invoke-interface {v6}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getSqlArgValue()Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "argValue":Ljava/lang/Object;
    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    aget-object v2, v6, v3

    .line 104
    .local v2, "fieldType":Lcom/j256/ormlite/field/FieldType;
    if-nez v2, :cond_3

    .line 105
    iget-object v6, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    aget-object v6, v6, v3

    invoke-interface {v6}, Lcom/j256/ormlite/stmt/ArgumentHolder;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v5

    .line 109
    .local v5, "sqlType":Lcom/j256/ormlite/field/SqlType;
    :goto_1
    invoke-interface {p1, v3, v0, v5}, Lcom/j256/ormlite/support/CompiledStatement;->setObject(ILjava/lang/Object;Lcom/j256/ormlite/field/SqlType;)V

    .line 110
    if-eqz v1, :cond_2

    .line 111
    aput-object v0, v1, v3

    .line 100
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    .end local v5    # "sqlType":Lcom/j256/ormlite/field/SqlType;
    :cond_3
    invoke-virtual {v2}, Lcom/j256/ormlite/field/FieldType;->getSqlType()Lcom/j256/ormlite/field/SqlType;

    move-result-object v5

    .restart local v5    # "sqlType":Lcom/j256/ormlite/field/SqlType;
    goto :goto_1

    .line 114
    .end local v0    # "argValue":Ljava/lang/Object;
    .end local v2    # "fieldType":Lcom/j256/ormlite/field/FieldType;
    .end local v5    # "sqlType":Lcom/j256/ormlite/field/SqlType;
    :cond_4
    sget-object v6, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v7, "prepared statement \'{}\' with {} args"

    iget-object v8, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->statement:Ljava/lang/String;

    iget-object v9, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argHolders:[Lcom/j256/ormlite/stmt/ArgumentHolder;

    array-length v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/j256/ormlite/logger/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    if-eqz v1, :cond_5

    .line 117
    sget-object v6, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v7, "prepared statement arguments: {}"

    invoke-virtual {v6, v7, v1}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_5
    const/4 v4, 0x1

    .line 122
    if-nez v4, :cond_6

    .line 123
    const-string v6, "statement"

    invoke-static {p1, v6}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    :cond_6
    return-object p1

    .line 122
    .end local v1    # "argValues":[Ljava/lang/Object;
    .end local v3    # "i":I
    :catchall_0
    move-exception v6

    if-nez v4, :cond_7

    .line 123
    const-string v7, "statement"

    invoke-static {p1, v7}, Lcom/j256/ormlite/misc/IOUtils;->closeThrowSqlException(Ljava/io/Closeable;Ljava/lang/String;)V

    :cond_7
    throw v6
.end method


# virtual methods
.method public compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 1
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    return-object v0
.end method

.method public compile(Lcom/j256/ormlite/support/DatabaseConnection;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;I)Lcom/j256/ormlite/support/CompiledStatement;
    .locals 7
    .param p1, "databaseConnection"    # Lcom/j256/ormlite/support/DatabaseConnection;
    .param p2, "type"    # Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;
    .param p3, "resultFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    if-eq v0, p2, :cond_0

    .line 52
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not compile this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->type:Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " statement since the caller is expecting a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " statement.  Check your QueryBuilder methods."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->statement:Ljava/lang/String;

    iget-object v3, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->argFieldTypes:[Lcom/j256/ormlite/field/FieldType;

    iget-boolean v5, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->cacheStore:Z

    move-object v0, p1

    move-object v2, p2

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/j256/ormlite/support/DatabaseConnection;->compileStatement(Ljava/lang/String;Lcom/j256/ormlite/stmt/StatementBuilder$StatementType;[Lcom/j256/ormlite/field/FieldType;IZ)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v6

    .line 58
    .local v6, "stmt":Lcom/j256/ormlite/support/CompiledStatement;
    invoke-direct {p0, v6}, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->assignStatementArguments(Lcom/j256/ormlite/support/CompiledStatement;)Lcom/j256/ormlite/support/CompiledStatement;

    move-result-object v0

    return-object v0
.end method

.method public getStatement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;, "Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt<TT;TID;>;"
    iget-object v0, p0, Lcom/j256/ormlite/stmt/mapped/MappedPreparedStmt;->statement:Ljava/lang/String;

    return-object v0
.end method
