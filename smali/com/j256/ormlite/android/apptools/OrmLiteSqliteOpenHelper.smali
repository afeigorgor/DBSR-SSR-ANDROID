.class public abstract Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "OrmLiteSqliteOpenHelper.java"


# static fields
.field protected static logger:Lcom/j256/ormlite/logger/Logger;


# instance fields
.field protected cancelQueriesEnabled:Z

.field protected connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

.field private volatile isOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;

    invoke-static {v0}, Lcom/j256/ormlite/logger/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/j256/ormlite/logger/Logger;

    move-result-object v0

    sput-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->logger:Lcom/j256/ormlite/logger/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseName"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "databaseVersion"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    new-instance v0, Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-direct {v0, p0}, Lcom/j256/ormlite/android/AndroidConnectionSource;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->isOpen:Z

    .line 55
    sget-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string v1, "{}: constructed connectionSource {}"

    iget-object v2, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-virtual {v0, v1, p0, v2}, Lcom/j256/ormlite/logger/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 252
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidConnectionSource;->close()V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->isOpen:Z

    .line 258
    return-void
.end method

.method public getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;
    .locals 3

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->isOpen:Z

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->logger:Lcom/j256/ormlite/logger/Logger;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v2, "Getting connectionSource was called after closed"

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/logger/Logger;->warn(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    return-object v0
.end method

.method public getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/j256/ormlite/dao/DaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 279
    .local v1, "dao":Lcom/j256/ormlite/dao/Dao;, "Lcom/j256/ormlite/dao/Dao<TT;*>;"
    move-object v0, v1

    .line 280
    .local v0, "castDao":Lcom/j256/ormlite/dao/Dao;, "TD;"
    return-object v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    .line 195
    .local v2, "cs":Lcom/j256/ormlite/support/ConnectionSource;
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/j256/ormlite/support/ConnectionSource;->getSpecialConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    .line 196
    .local v1, "conn":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v0, 0x0

    .line 197
    .local v0, "clearSpecial":Z
    if-nez v1, :cond_0

    .line 198
    new-instance v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    .end local v1    # "conn":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->cancelQueriesEnabled:Z

    invoke-direct {v1, p1, v4, v5}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;-><init>(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 200
    .restart local v1    # "conn":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    invoke-interface {v2, v1}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    const/4 v0, 0x1

    .line 207
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v2, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 213
    :cond_1
    return-void

    .line 202
    :catch_0
    move-exception v3

    .line 203
    .local v3, "e":Ljava/sql/SQLException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Could not save special connection"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 209
    .end local v3    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 210
    invoke-interface {v2, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_2
    throw v4
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v2

    .line 226
    .local v2, "cs":Lcom/j256/ormlite/support/ConnectionSource;
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/j256/ormlite/support/ConnectionSource;->getSpecialConnection(Ljava/lang/String;)Lcom/j256/ormlite/support/DatabaseConnection;

    move-result-object v1

    .line 227
    .local v1, "conn":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v0, 0x0

    .line 228
    .local v0, "clearSpecial":Z
    if-nez v1, :cond_0

    .line 229
    new-instance v1, Lcom/j256/ormlite/android/AndroidDatabaseConnection;

    .end local v1    # "conn":Lcom/j256/ormlite/support/DatabaseConnection;
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->cancelQueriesEnabled:Z

    invoke-direct {v1, p1, v4, v5}, Lcom/j256/ormlite/android/AndroidDatabaseConnection;-><init>(Landroid/database/sqlite/SQLiteDatabase;ZZ)V

    .line 231
    .restart local v1    # "conn":Lcom/j256/ormlite/support/DatabaseConnection;
    :try_start_0
    invoke-interface {v2, v1}, Lcom/j256/ormlite/support/ConnectionSource;->saveSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    const/4 v0, 0x1

    .line 238
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v2, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    .line 244
    :cond_1
    return-void

    .line 233
    :catch_0
    move-exception v3

    .line 234
    .local v3, "e":Ljava/sql/SQLException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Could not save special connection"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 240
    .end local v3    # "e":Ljava/sql/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 241
    invoke-interface {v2, v1}, Lcom/j256/ormlite/support/ConnectionSource;->clearSpecialConnection(Lcom/j256/ormlite/support/DatabaseConnection;)V

    :cond_2
    throw v4
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
