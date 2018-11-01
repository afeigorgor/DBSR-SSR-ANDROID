.class public Lscala/io/BufferedSource;
.super Lscala/io/Source;
.source "BufferedSource.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lscala/io/BufferedSource$BufferedLineIterator;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private volatile bitmap$0:B

.field private final bufferSize:I

.field private charReaderCreated:Z

.field private final codec:Lscala/io/Codec;

.field private final inputStream:Ljava/io/InputStream;

.field private iter:Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private scala$io$BufferedSource$$charReader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILscala/io/Codec;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I
    .param p3, "codec"    # Lscala/io/Codec;

    .prologue
    .line 22
    iput-object p1, p0, Lscala/io/BufferedSource;->inputStream:Ljava/io/InputStream;

    iput p2, p0, Lscala/io/BufferedSource;->bufferSize:I

    iput-object p3, p0, Lscala/io/BufferedSource;->codec:Lscala/io/Codec;

    invoke-direct {p0}, Lscala/io/Source;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lscala/io/BufferedSource;->charReaderCreated:Z

    return-void
.end method

.method private charReaderCreated()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lscala/io/BufferedSource;->charReaderCreated:Z

    return v0
.end method

.method private charReaderCreated_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lscala/io/BufferedSource;->charReaderCreated:Z

    return-void
.end method

.method private iter$lzycompute()Lscala/collection/Iterator;
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/io/BufferedSource;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    .line 40
    new-instance v0, Lscala/io/BufferedSource$$anonfun$iter$1;

    invoke-direct {v0, p0}, Lscala/io/BufferedSource$$anonfun$iter$1;-><init>(Lscala/io/BufferedSource;)V

    new-instance v1, Lscala/collection/Iterator$$anon$9;

    invoke-direct {v1, v0}, Lscala/collection/Iterator$$anon$9;-><init>(Lscala/Function0;)V

    .line 41
    new-instance v0, Lscala/io/BufferedSource$$anonfun$iter$2;

    invoke-direct {v0, p0}, Lscala/io/BufferedSource$$anonfun$iter$2;-><init>(Lscala/io/BufferedSource;)V

    invoke-interface {v1, v0}, Lscala/collection/Iterator;->takeWhile(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    .line 42
    new-instance v1, Lscala/io/BufferedSource$$anonfun$iter$3;

    invoke-direct {v1, p0}, Lscala/io/BufferedSource$$anonfun$iter$3;-><init>(Lscala/io/BufferedSource;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    iput-object v0, p0, Lscala/io/BufferedSource;->iter:Lscala/collection/Iterator;

    iget-byte v0, p0, Lscala/io/BufferedSource;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/io/BufferedSource;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/io/BufferedSource;->iter:Lscala/collection/Iterator;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scala$io$BufferedSource$$charReader$lzycompute()Ljava/io/BufferedReader;
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lscala/io/BufferedSource;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lscala/io/BufferedSource;->charReaderCreated_$eq(Z)V

    .line 35
    invoke-virtual {p0}, Lscala/io/BufferedSource;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v0

    .line 33
    iput-object v0, p0, Lscala/io/BufferedSource;->scala$io$BufferedSource$$charReader:Ljava/io/BufferedReader;

    iget-byte v0, p0, Lscala/io/BufferedSource;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lscala/io/BufferedSource;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lscala/io/BufferedSource;->scala$io$BufferedSource$$charReader:Ljava/io/BufferedReader;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bufferedReader()Ljava/io/BufferedReader;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/io/BufferedReader;

    invoke-virtual {p0}, Lscala/io/BufferedSource;->reader()Ljava/io/InputStreamReader;

    move-result-object v1

    iget v2, p0, Lscala/io/BufferedSource;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method public codec()Lscala/io/Codec;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lscala/io/BufferedSource;->codec:Lscala/io/Codec;

    return-object v0
.end method

.method public getLines()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Lscala/io/BufferedSource$BufferedLineIterator;

    invoke-direct {v0, p0}, Lscala/io/BufferedSource$BufferedLineIterator;-><init>(Lscala/io/BufferedSource;)V

    return-object v0
.end method

.method public iter()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-byte v0, p0, Lscala/io/BufferedSource;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/io/BufferedSource;->iter$lzycompute()Lscala/collection/Iterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lscala/io/BufferedSource;->iter:Lscala/collection/Iterator;

    goto :goto_0
.end method

.method public mkString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 91
    invoke-virtual {p0}, Lscala/io/BufferedSource;->scala$io$BufferedSource$$decachedReader()Ljava/io/BufferedReader;

    move-result-object v0

    .line 92
    .local v0, "allReader":Ljava/io/BufferedReader;
    new-instance v3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 93
    .local v3, "sb":Lscala/collection/mutable/StringBuilder;
    iget v4, p0, Lscala/io/BufferedSource;->bufferSize:I

    new-array v1, v4, [C

    .line 94
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 95
    .local v2, "n":I
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 96
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .line 97
    if-lez v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lscala/collection/mutable/StringBuilder;->appendAll([CII)Lscala/collection/mutable/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {v3}, Lscala/collection/mutable/StringBuilder;->result()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public reader()Ljava/io/InputStreamReader;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lscala/io/BufferedSource;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p0}, Lscala/io/BufferedSource;->codec()Lscala/io/Codec;

    move-result-object v2

    invoke-virtual {v2}, Lscala/io/Codec;->decoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/CharsetDecoder;)V

    return-object v0
.end method

.method public scala$io$BufferedSource$$charReader()Ljava/io/BufferedReader;
    .locals 1

    .prologue
    .line 33
    iget-byte v0, p0, Lscala/io/BufferedSource;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lscala/io/BufferedSource;->scala$io$BufferedSource$$charReader$lzycompute()Ljava/io/BufferedReader;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lscala/io/BufferedSource;->scala$io$BufferedSource$$charReader:Ljava/io/BufferedReader;

    goto :goto_0
.end method

.method public scala$io$BufferedSource$$decachedReader()Ljava/io/BufferedReader;
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Lscala/io/BufferedSource;->charReaderCreated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lscala/io/BufferedSource;->iter()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v0, Ljava/io/PushbackReader;

    invoke-virtual {p0}, Lscala/io/BufferedSource;->scala$io$BufferedSource$$charReader()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;)V

    .line 59
    .local v0, "pb":Ljava/io/PushbackReader;
    invoke-virtual {p0}, Lscala/io/BufferedSource;->iter()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToChar(Ljava/lang/Object;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PushbackReader;->unread(I)V

    .line 60
    new-instance v1, Ljava/io/BufferedReader;

    iget v2, p0, Lscala/io/BufferedSource;->bufferSize:I

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 57
    .end local v0    # "pb":Ljava/io/PushbackReader;
    :goto_0
    return-object v1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lscala/io/BufferedSource;->scala$io$BufferedSource$$charReader()Ljava/io/BufferedReader;

    move-result-object v1

    goto :goto_0
.end method
