.class public final Lcom/github/shadowsocks/utils/Parser$;
.super Ljava/lang/Object;
.source "Parser.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/Parser$;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final com$github$shadowsocks$utils$Parser$$decodedPattern:Lscala/util/matching/Regex;

.field private final com$github$shadowsocks$utils$Parser$$decodedPattern_ssr:Lscala/util/matching/Regex;

.field private final com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_groupparam:Lscala/util/matching/Regex;

.field private final com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_obfsparam:Lscala/util/matching/Regex;

.field private final com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_protocolparam:Lscala/util/matching/Regex;

.field private final com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_remarks:Lscala/util/matching/Regex;

.field private final pattern:Lscala/util/matching/Regex;

.field private final pattern_ssr:Lscala/util/matching/Regex;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/Parser$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/Parser$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    .line 48
    const-string v0, "ShadowParser"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "(?i)ss://([A-Za-z0-9+-/=_]+)(#(.+))?"

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->r()Lscala/util/matching/Regex;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->pattern:Lscala/util/matching/Regex;

    .line 50
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "(?i)^((.+?)(-auth)??:(.*)@(.+?):(\\d+?))$"

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->r()Lscala/util/matching/Regex;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern:Lscala/util/matching/Regex;

    .line 52
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "(?i)ssr://([A-Za-z0-9_=-]+)"

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->r()Lscala/util/matching/Regex;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->pattern_ssr:Lscala/util/matching/Regex;

    .line 53
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "(?i)^((.+):(\\d+?):(.*):(.+):(.*):([^/]+))"

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->r()Lscala/util/matching/Regex;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr:Lscala/util/matching/Regex;

    .line 54
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "(?i)[?&]obfsparam=([A-Za-z0-9_=-]*)"

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->r()Lscala/util/matching/Regex;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_obfsparam:Lscala/util/matching/Regex;

    .line 55
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "(?i)[?&]remarks=([A-Za-z0-9_=-]*)"

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->r()Lscala/util/matching/Regex;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_remarks:Lscala/util/matching/Regex;

    .line 56
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "(?i)[?&]protoparam=([A-Za-z0-9_=-]*)"

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->r()Lscala/util/matching/Regex;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_protocolparam:Lscala/util/matching/Regex;

    .line 57
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "(?i)[?&]group=([A-Za-z0-9_=-]*)"

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->r()Lscala/util/matching/Regex;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_groupparam:Lscala/util/matching/Regex;

    return-void
.end method

.method private pattern()Lscala/util/matching/Regex;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->pattern:Lscala/util/matching/Regex;

    return-object v0
.end method

.method private pattern_ssr()Lscala/util/matching/Regex;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->pattern_ssr:Lscala/util/matching/Regex;

    return-object v0
.end method


# virtual methods
.method public TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public com$github$shadowsocks$utils$Parser$$decodedPattern()Lscala/util/matching/Regex;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern:Lscala/util/matching/Regex;

    return-object v0
.end method

.method public com$github$shadowsocks$utils$Parser$$decodedPattern_ssr()Lscala/util/matching/Regex;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr:Lscala/util/matching/Regex;

    return-object v0
.end method

.method public com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_groupparam()Lscala/util/matching/Regex;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_groupparam:Lscala/util/matching/Regex;

    return-object v0
.end method

.method public com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_obfsparam()Lscala/util/matching/Regex;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_obfsparam:Lscala/util/matching/Regex;

    return-object v0
.end method

.method public com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_protocolparam()Lscala/util/matching/Regex;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_protocolparam:Lscala/util/matching/Regex;

    return-object v0
.end method

.method public com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_remarks()Lscala/util/matching/Regex;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_remarks:Lscala/util/matching/Regex;

    return-object v0
.end method

.method public findAll(Ljava/lang/CharSequence;)Lscala/collection/Iterator;
    .locals 2
    .param p1, "data"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lscala/collection/Iterator",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/github/shadowsocks/utils/Parser$;->pattern()Lscala/util/matching/Regex;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "data":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v0, p1}, Lscala/util/matching/Regex;->findAllMatchIn(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll$1;

    invoke-direct {v1}, Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll$1;-><init>()V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll$2;

    invoke-direct {v1}, Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll$2;-><init>()V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public findAll_ssr(Ljava/lang/CharSequence;)Lscala/collection/Iterator;
    .locals 2
    .param p1, "data"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lscala/collection/Iterator",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/github/shadowsocks/utils/Parser$;->pattern_ssr()Lscala/util/matching/Regex;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "data":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {v0, p1}, Lscala/util/matching/Regex;->findAllMatchIn(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll_ssr$1;

    invoke-direct {v1}, Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll_ssr$1;-><init>()V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->map(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    .line 123
    new-instance v1, Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll_ssr$2;

    invoke-direct {v1}, Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll_ssr$2;-><init>()V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->filter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method
