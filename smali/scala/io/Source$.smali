.class public final Lscala/io/Source$;
.super Ljava/lang/Object;
.source "Source.scala"


# static fields
.field public static final MODULE$:Lscala/io/Source$;


# instance fields
.field private final DefaultBufSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/io/Source$;

    invoke-direct {v0}, Lscala/io/Source$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/io/Source$;->MODULE$:Lscala/io/Source$;

    .line 23
    const/16 v0, 0x800

    iput v0, p0, Lscala/io/Source$;->DefaultBufSize:I

    return-void
.end method


# virtual methods
.method public DefaultBufSize()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lscala/io/Source$;->DefaultBufSize:I

    return v0
.end method

.method public createBufferedSource(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .param p3, "reset"    # Lscala/Function0;
    .param p4, "close"    # Lscala/Function0;
    .param p5, "codec"    # Lscala/io/Codec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "I",
            "Lscala/Function0",
            "<",
            "Lscala/io/Source;",
            ">;",
            "Lscala/Function0",
            "<",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/io/Codec;",
            ")",
            "Lscala/io/BufferedSource;"
        }
    .end annotation

    .prologue
    .line 160
    if-nez p3, :cond_0

    new-instance v0, Lscala/io/Source$$anonfun$2;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lscala/io/Source$$anonfun$2;-><init>(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)V

    move-object v6, v0

    .line 162
    .local v6, "resetFn":Lscala/Function0;
    :goto_0
    new-instance v0, Lscala/io/BufferedSource;

    invoke-direct {v0, p1, p2, p5}, Lscala/io/BufferedSource;-><init>(Ljava/io/InputStream;ILscala/io/Codec;)V

    invoke-virtual {v0, v6}, Lscala/io/BufferedSource;->withReset(Lscala/Function0;)Lscala/io/Source;

    move-result-object v0

    invoke-virtual {v0, p4}, Lscala/io/Source;->withClose(Lscala/Function0;)Lscala/io/Source;

    move-result-object v0

    check-cast v0, Lscala/io/BufferedSource;

    return-object v0

    .end local v6    # "resetFn":Lscala/Function0;
    :cond_0
    move-object v6, p3

    .line 160
    goto :goto_0
.end method

.method public fromFile(Ljava/io/File;ILscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "bufferSize"    # I
    .param p3, "codec"    # Lscala/io/Codec;

    .prologue
    .line 91
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 96
    .local v1, "inputStream":Ljava/io/FileInputStream;
    new-instance v3, Lscala/io/Source$$anonfun$fromFile$2;

    invoke-direct {v3, p1, p2, p3}, Lscala/io/Source$$anonfun$fromFile$2;-><init>(Ljava/io/File;ILscala/io/Codec;)V

    .line 97
    new-instance v4, Lscala/io/Source$$anonfun$fromFile$1;

    invoke-direct {v4, v1}, Lscala/io/Source$$anonfun$fromFile$1;-><init>(Ljava/io/FileInputStream;)V

    move-object v0, p0

    move v2, p2

    move-object v5, p3

    .line 98
    invoke-virtual/range {v0 .. v5}, Lscala/io/Source$;->createBufferedSource(Ljava/io/InputStream;ILscala/Function0;Lscala/Function0;Lscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object v0

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v3, "file:"

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/io/BufferedSource;->withDescription(Ljava/lang/String;)Lscala/io/Source;

    move-result-object v0

    check-cast v0, Lscala/io/BufferedSource;

    return-object v0
.end method

.method public fromFile(Ljava/io/File;Lscala/io/Codec;)Lscala/io/BufferedSource;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "codec"    # Lscala/io/Codec;

    .prologue
    .line 76
    invoke-virtual {p0}, Lscala/io/Source$;->DefaultBufSize()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lscala/io/Source$;->fromFile(Ljava/io/File;ILscala/io/Codec;)Lscala/io/BufferedSource;

    move-result-object v0

    return-object v0
.end method
