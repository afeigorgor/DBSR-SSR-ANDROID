.class public final Lcom/evernote/android/job/util/support/PersistableBundleCompat;
.super Ljava/lang/Object;
.source "PersistableBundleCompat.java"


# static fields
.field private static final CAT:Lnet/vrallev/android/cat/CatLog;


# instance fields
.field private final mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/evernote/android/job/util/JobCat;

    const-string v1, "PersistableBundleCompat"

    invoke-direct {v0, v1}, Lcom/evernote/android/job/util/JobCat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lnet/vrallev/android/cat/CatLog;

    return-void
.end method


# virtual methods
.method public saveToXml()Ljava/lang/String;
    .locals 4

    .prologue
    .line 235
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->mValues:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/evernote/android/job/util/support/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 238
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 252
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 248
    :goto_0
    return-object v2

    .line 240
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    sget-object v2, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v2, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 243
    const-string v2, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 253
    :catch_1
    move-exception v3

    goto :goto_0

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Error;
    :try_start_4
    sget-object v2, Lcom/evernote/android/job/util/support/PersistableBundleCompat;->CAT:Lnet/vrallev/android/cat/CatLog;

    invoke-virtual {v2, v0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 248
    const-string v2, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 252
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    .line 253
    :catch_3
    move-exception v3

    goto :goto_0

    .line 251
    .end local v0    # "e":Ljava/lang/Error;
    :catchall_0
    move-exception v2

    .line 252
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 254
    :goto_2
    throw v2

    .line 240
    :catch_4
    move-exception v2

    move-object v0, v2

    goto :goto_1

    .line 253
    :catch_5
    move-exception v3

    goto :goto_0

    :catch_6
    move-exception v3

    goto :goto_2
.end method
