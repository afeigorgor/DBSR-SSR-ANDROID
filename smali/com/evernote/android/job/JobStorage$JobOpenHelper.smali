.class Lcom/evernote/android/job/JobStorage$JobOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "JobStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/android/job/JobStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobOpenHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evernote/android/job/JobStorage;


# direct methods
.method public constructor <init>(Lcom/evernote/android/job/JobStorage;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->this$0:Lcom/evernote/android/job/JobStorage;

    .line 259
    const-string v0, "evernote_jobs.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 260
    return-void
.end method

.method private createJobTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 286
    const-string v0, "create table jobs (_id integer primary key, tag text not null, startMs integer, endMs integer, backoffMs integer, backoffPolicy text not null, intervalMs integer, requirementsEnforced integer, requiresCharging integer, requiresDeviceIdle integer, exact integer, networkType text not null, extras text, persisted integer, numFailures integer, scheduledAt integer, isTransient integer, flexMs integer, flexSupport integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method private upgradeFrom1To2(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 309
    const-string v0, "alter table jobs add column isTransient integer;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private upgradeFrom2To3(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 313
    const-string v1, "alter table jobs add column flexMs integer;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 314
    const-string v1, "alter table jobs add column flexSupport integer;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 317
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "intervalMs"

    sget-wide v2, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 319
    const-string v1, "jobs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intervalMs>0 AND intervalMs<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/evernote/android/job/JobRequest;->MIN_INTERVAL:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 322
    const-string v1, "update jobs set flexMs = intervalMs;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->createJobTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 265
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 269
    :goto_0
    if-ge p2, p3, :cond_0

    .line 270
    packed-switch p2, :pswitch_data_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->upgradeFrom1To2(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 273
    add-int/lit8 p2, p2, 0x1

    .line 274
    goto :goto_0

    .line 276
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/evernote/android/job/JobStorage$JobOpenHelper;->upgradeFrom2To3(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 277
    add-int/lit8 p2, p2, 0x1

    .line 278
    goto :goto_0

    .line 283
    :cond_0
    return-void

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
