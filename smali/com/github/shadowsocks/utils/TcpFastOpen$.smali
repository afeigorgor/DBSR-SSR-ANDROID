.class public final Lcom/github/shadowsocks/utils/TcpFastOpen$;
.super Ljava/lang/Object;
.source "TcpFastOpen.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/TcpFastOpen$;


# instance fields
.field private volatile bitmap$0:Z

.field private supported:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/TcpFastOpen$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/TcpFastOpen$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/TcpFastOpen$;->MODULE$:Lcom/github/shadowsocks/utils/TcpFastOpen$;

    return-void
.end method

.method private supported$lzycompute()Z
    .locals 10

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 16
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/github/shadowsocks/utils/TcpFastOpen$;->bitmap$0:Z

    if-nez v3, :cond_0

    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v7, "^(\\d+)\\.(\\d+)\\.(\\d+)"

    invoke-virtual {v6, v7}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lscala/collection/immutable/StringOps;->r()Lscala/util/matching/Regex;

    move-result-object v3

    const-string v6, "os.version"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lscala/util/matching/Regex;->findFirstMatchIn(Ljava/lang/CharSequence;)Lscala/Option;

    move-result-object v3

    .line 17
    instance-of v6, v3, Lscala/Some;

    if-eqz v6, :cond_6

    check-cast v3, Lscala/Some;

    invoke-virtual {v3}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/util/matching/Regex$Match;

    .line 18
    .local v1, "m":Lscala/util/matching/Regex$Match;
    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v0

    .line 19
    .local v0, "kernel":I
    if-ge v0, v8, :cond_1

    move v3, v4

    .line 16
    .end local v0    # "kernel":I
    .end local v1    # "m":Lscala/util/matching/Regex$Match;
    :goto_0
    iput-boolean v3, p0, Lcom/github/shadowsocks/utils/TcpFastOpen$;->supported:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/github/shadowsocks/utils/TcpFastOpen$;->bitmap$0:Z

    :cond_0
    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v3, p0, Lcom/github/shadowsocks/utils/TcpFastOpen$;->supported:Z

    return v3

    .line 19
    .restart local v0    # "kernel":I
    .restart local v1    # "m":Lscala/util/matching/Regex$Match;
    :cond_1
    if-le v0, v8, :cond_2

    move v3, v5

    goto :goto_0

    .line 20
    :cond_2
    :try_start_1
    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v2

    .line 21
    .local v2, "major":I
    if-ge v2, v9, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    if-le v2, v9, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lscala/collection/immutable/StringOps;->toInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-lt v3, v5, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_0

    .end local v0    # "kernel":I
    .end local v1    # "m":Lscala/util/matching/Regex$Match;
    .end local v2    # "major":I
    :cond_6
    move v3, v4

    .line 23
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public enabled(Z)Ljava/lang/String;
    .locals 10
    .param p1, "value"    # Z

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 31
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TcpFastOpen$;->sendEnabled()Z

    move-result v2

    if-eq v2, p1, :cond_3

    .line 32
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$SU;->available()Z

    move-result v1

    .line 33
    .local v1, "suAvailable":Z
    if-ne v1, v7, :cond_2

    .line 34
    const-string v5, "su"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    .line 35
    new-instance v3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v6, "if echo "

    invoke-virtual {v3, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_0

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v6, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    const-string v6, " > /proc/sys/net/ipv4/tcp_fastopen; then"

    invoke-virtual {v3, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    .line 36
    const-string v3, "  echo Success."

    aput-object v3, v2, v7

    .line 34
    const/4 v3, 0x2

    .line 37
    const-string v6, "else"

    aput-object v6, v2, v3

    .line 38
    const-string v3, "  echo Failed."

    aput-object v3, v2, v9

    .line 34
    const/4 v3, 0x4

    .line 39
    const-string v6, "fi"

    aput-object v6, v2, v3

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 34
    invoke-static {v5, v2, v4, v7}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 40
    .local v0, "res":Ljava/util/List;
    if-nez v0, :cond_1

    move-object v2, v4

    .line 31
    .end local v0    # "res":Ljava/util/List;
    .end local v1    # "suAvailable":Z
    :goto_1
    return-object v2

    .line 35
    .restart local v1    # "suAvailable":Z
    :cond_0
    invoke-static {v8}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 40
    .restart local v0    # "res":Ljava/util/List;
    :cond_1
    sget-object v2, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {v2, v0}, Lscala/collection/JavaConverters$;->asScalaBufferConverter(Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/convert/Decorators$AsScala;->asScala()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/TraversableOnce;

    const-string v3, "\n"

    invoke-interface {v2, v3}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .end local v0    # "res":Ljava/util/List;
    :cond_2
    move-object v2, v4

    .line 41
    goto :goto_1

    .end local v1    # "suAvailable":Z
    :cond_3
    move-object v2, v4

    .line 42
    goto :goto_1
.end method

.method public sendEnabled()Z
    .locals 4

    .prologue
    .line 27
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/sys/net/ipv4/tcp_fastopen"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v3, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v3, v0}, Lcom/github/shadowsocks/utils/Utils$;->readAllLines(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 26
    :goto_0
    return v1

    .line 28
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public supported()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/github/shadowsocks/utils/TcpFastOpen$;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/github/shadowsocks/utils/TcpFastOpen$;->supported:Z

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/utils/TcpFastOpen$;->supported$lzycompute()Z

    move-result v0

    goto :goto_0
.end method
