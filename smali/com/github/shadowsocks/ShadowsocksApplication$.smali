.class public final Lcom/github/shadowsocks/ShadowsocksApplication$;
.super Ljava/lang/Object;
.source "ShadowsocksApplication.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;


# instance fields
.field private app:Lcom/github/shadowsocks/ShadowsocksApplication;

.field private volatile bitmap$0:B

.field private final com$github$shadowsocks$ShadowsocksApplication$$EXECUTABLES:[Ljava/lang/String;

.field private com$github$shadowsocks$ShadowsocksApplication$$SIMPLIFIED_CHINESE:Ljava/util/Locale;

.field private com$github$shadowsocks$ShadowsocksApplication$$TRADITIONAL_CHINESE:Ljava/util/Locale;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-direct {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/github/shadowsocks/utils/Executable$;->MODULE$:Lcom/github/shadowsocks/utils/Executable$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Executable$;->PDNSD()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/github/shadowsocks/utils/Executable$;->MODULE$:Lcom/github/shadowsocks/utils/Executable$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Executable$;->REDSOCKS()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/github/shadowsocks/utils/Executable$;->MODULE$:Lcom/github/shadowsocks/utils/Executable$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Executable$;->SS_TUNNEL()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/github/shadowsocks/utils/Executable$;->MODULE$:Lcom/github/shadowsocks/utils/Executable$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Executable$;->SS_LOCAL()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 73
    sget-object v2, Lcom/github/shadowsocks/utils/Executable$;->MODULE$:Lcom/github/shadowsocks/utils/Executable$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Executable$;->TUN2SOCKS()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 72
    const/4 v1, 0x5

    .line 73
    sget-object v2, Lcom/github/shadowsocks/utils/Executable$;->MODULE$:Lcom/github/shadowsocks/utils/Executable$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Executable$;->KCPTUN()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$EXECUTABLES:[Ljava/lang/String;

    return-void
.end method

.method private com$github$shadowsocks$ShadowsocksApplication$$SIMPLIFIED_CHINESE$lzycompute()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const-string v0, "zh-Hans-CN"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 76
    :goto_0
    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$SIMPLIFIED_CHINESE:Ljava/util/Locale;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$SIMPLIFIED_CHINESE:Ljava/util/Locale;

    return-object v0

    .line 77
    :cond_1
    :try_start_1
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private com$github$shadowsocks$ShadowsocksApplication$$TRADITIONAL_CHINESE$lzycompute()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    const-string v0, "zh-Hant-TW"

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 78
    :goto_0
    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$TRADITIONAL_CHINESE:Ljava/util/Locale;

    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object v0

    .line 79
    :cond_1
    :try_start_1
    sget-object v0, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public app()Lcom/github/shadowsocks/ShadowsocksApplication;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->app:Lcom/github/shadowsocks/ShadowsocksApplication;

    return-object v0
.end method

.method public app_$eq(Lcom/github/shadowsocks/ShadowsocksApplication;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/ShadowsocksApplication;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->app:Lcom/github/shadowsocks/ShadowsocksApplication;

    return-void
.end method

.method public com$github$shadowsocks$ShadowsocksApplication$$EXECUTABLES()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$EXECUTABLES:[Ljava/lang/String;

    return-object v0
.end method

.method public final com$github$shadowsocks$ShadowsocksApplication$$SIMPLIFIED_CHINESE()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 76
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$SIMPLIFIED_CHINESE$lzycompute()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$SIMPLIFIED_CHINESE:Ljava/util/Locale;

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ShadowsocksApplication$$TRADITIONAL_CHINESE()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 78
    iget-byte v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$TRADITIONAL_CHINESE$lzycompute()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$;->com$github$shadowsocks$ShadowsocksApplication$$TRADITIONAL_CHINESE:Ljava/util/Locale;

    goto :goto_0
.end method
