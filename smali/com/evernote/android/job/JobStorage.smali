.class Lcom/evernote/android/job/JobStorage;
.super Ljava/lang/Object;
.source "JobStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evernote/android/job/JobStorage$JobOpenHelper;,
        Lcom/evernote/android/job/JobStorage$JobCacheId;
    }
.end annotation


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;


# instance fields
.field private final mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mDbHelper:Lcom/evernote/android/job/JobStorage$JobOpenHelper;

.field private final mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "JobStorage"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v1, "evernote_jobs"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/JobStorage;->mPreferences:Landroid/content/SharedPreferences;

    .line 98
    new-instance v1, Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-direct {v1, p0}, Lcom/evernote/android/job/JobStorage$JobCacheId;-><init>(Lcom/evernote/android/job/JobStorage;)V

    iput-object v1, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    .line 100
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "JOB_ID_COUNTER"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 101
    .local v0, "lastJobId":I
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/evernote/android/job/JobStorage;->mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    new-instance v1, Lcom/evernote/android/job/JobStorage$JobOpenHelper;

    invoke-direct {v1, p0, p1}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;-><init>(Lcom/evernote/android/job/JobStorage;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/evernote/android/job/JobStorage;->mDbHelper:Lcom/evernote/android/job/JobStorage$JobOpenHelper;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/evernote/android/job/JobStorage;IZ)Lcom/evernote/android/job/JobRequest;
    .locals 1
    .param p0, "x0"    # Lcom/evernote/android/job/JobStorage;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/evernote/android/job/JobStorage;->load(IZ)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    return-object v0
.end method

.method private getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDbHelper:Lcom/evernote/android/job/JobStorage$JobOpenHelper;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 239
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0

    .line 239
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private load(IZ)Lcom/evernote/android/job/JobRequest;
    .locals 11
    .param p1, "id"    # I
    .param p2, "includeTransient"    # Z

    .prologue
    const/4 v10, 0x0

    .line 209
    const/4 v8, 0x0

    .line 211
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v3, "_id=?"

    .line 212
    .local v3, "where":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND isTransient<=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "jobs"

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 217
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    invoke-static {v8}, Lcom/evernote/android/job/JobRequest;->fromCursor(Landroid/database/Cursor;)Lcom/evernote/android/job/JobRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 225
    if-eqz v8, :cond_1

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 230
    .end local v3    # "where":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    .line 225
    .restart local v3    # "where":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v3    # "where":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v0, v10

    .line 230
    goto :goto_0

    .line 221
    :catch_0
    move-exception v9

    .line 222
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "could not load id %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v9, v1, v2}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    if-eqz v8, :cond_3

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 225
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 226
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private store(Lcom/evernote/android/job/JobRequest;)V
    .locals 6
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 201
    :try_start_0
    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 202
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-direct {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "jobs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v3, "could not store %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v1, v3, v4}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateRequestInCache(Lcom/evernote/android/job/JobRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/evernote/android/job/JobStorage$JobCacheId;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method


# virtual methods
.method public declared-synchronized get(I)Lcom/evernote/android/job/JobRequest;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evernote/android/job/JobStorage$JobCacheId;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evernote/android/job/JobRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllJobRequests(Ljava/lang/String;Z)Ljava/util/Set;
    .locals 13
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "includeTransient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lcom/evernote/android/job/JobRequest;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 130
    monitor-enter p0

    :try_start_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    .local v12, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/JobRequest;>;"
    const/4 v9, 0x0

    .line 136
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    if-eqz p2, :cond_1

    .line 138
    .local v3, "where":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    .line 145
    .local v4, "args":[Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "jobs"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 148
    new-instance v8, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-virtual {v0}, Lcom/evernote/android/job/JobStorage$JobCacheId;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 150
    .local v8, "cachedRequests":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/evernote/android/job/JobRequest;>;"
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 152
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 153
    .local v11, "id":Ljava/lang/Integer;
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 159
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v8    # "cachedRequests":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/evernote/android/job/JobRequest;>;"
    .end local v11    # "id":Ljava/lang/Integer;
    :catch_0
    move-exception v10

    .line 160
    .local v10, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v1, "could not load all jobs"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v1, v2}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    if-eqz v9, :cond_0

    .line 164
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_3
    monitor-exit p0

    return-object v12

    .line 137
    :cond_1
    :try_start_4
    const-string v3, "ifnull(isTransient, 0)<=0"

    goto :goto_0

    .line 140
    :cond_2
    if-eqz p2, :cond_3

    const-string v3, ""

    .line 141
    .restart local v3    # "where":Ljava/lang/String;
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tag=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .restart local v4    # "args":[Ljava/lang/String;
    goto :goto_1

    .line 140
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    :cond_3
    const-string v3, "ifnull(isTransient, 0)<=0 AND "

    goto :goto_4

    .line 156
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v8    # "cachedRequests":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/evernote/android/job/JobRequest;>;"
    .restart local v11    # "id":Ljava/lang/Integer;
    :cond_4
    invoke-static {v9}, Lcom/evernote/android/job/JobRequest;->fromCursor(Landroid/database/Cursor;)Lcom/evernote/android/job/JobRequest;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 163
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "args":[Ljava/lang/String;
    .end local v8    # "cachedRequests":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/evernote/android/job/JobRequest;>;"
    .end local v11    # "id":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_5

    .line 164
    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 130
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/JobRequest;>;"
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 163
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "args":[Ljava/lang/String;
    .restart local v8    # "cachedRequests":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/evernote/android/job/JobRequest;>;"
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/evernote/android/job/JobRequest;>;"
    :cond_6
    if-eqz v9, :cond_0

    .line 164
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3
.end method

.method public declared-synchronized nextJobId()I
    .locals 3

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 183
    .local v0, "id":I
    if-gez v0, :cond_0

    .line 188
    const/4 v0, 0x1

    .line 189
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mJobCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "JOB_ID_COUNTER"

    .line 193
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 194
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return v0

    .line 181
    .end local v0    # "id":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized put(Lcom/evernote/android/job/JobRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage;->updateRequestInCache(Lcom/evernote/android/job/JobRequest;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage;->store(Lcom/evernote/android/job/JobRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/evernote/android/job/JobRequest;)V
    .locals 7
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/evernote/android/job/JobStorage;->mCacheId:Lcom/evernote/android/job/JobStorage$JobCacheId;

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evernote/android/job/JobStorage$JobCacheId;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    invoke-direct {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "jobs"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v2, "could not delete %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized update(Lcom/evernote/android/job/JobRequest;Landroid/content/ContentValues;)V
    .locals 7
    .param p1, "request"    # Lcom/evernote/android/job/JobRequest;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage;->updateRequestInCache(Lcom/evernote/android/job/JobRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    invoke-direct {p0}, Lcom/evernote/android/job/JobStorage;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "jobs"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/evernote/android/job/JobRequest;->getJobId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :goto_0
    monitor-exit p0

    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/evernote/android/job/JobStorage;->CAT:Lnet/vrallev/android/cat/CatLog;

    const-string v2, "could not update %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
