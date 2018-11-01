.class public final Lcom/github/shadowsocks/utils/ConfigUtils$;
.super Ljava/lang/Object;
.source "Constants.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;


# instance fields
.field private final PDNSD_DIRECT:Ljava/lang/String;

.field private final PDNSD_LOCAL:Ljava/lang/String;

.field private final PROXYCHAINS:Ljava/lang/String;

.field private final REDSOCKS:Ljava/lang/String;

.field private final REMOTE_SERVER:Ljava/lang/String;

.field private final SHADOWSOCKS:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/ConfigUtils$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/ConfigUtils$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->MODULE$:Lcom/github/shadowsocks/utils/ConfigUtils$;

    .line 59
    const-string v0, "{\"server\": \"%s\", \"server_port\": %d, \"local_port\": %d, \"password\": \"%s\", \"method\":\"%s\", \"timeout\": %d, \"protocol\": \"%s\", \"obfs\": \"%s\", \"obfs_param\": \"%s\", \"protocol_param\": \"%s\"}"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->SHADOWSOCKS:Ljava/lang/String;

    .line 72
    const-string v0, "base {\n log_debug = off;\n log_info = off;\n log = stderr;\n daemon = off;\n redirector = iptables;\n}\nredsocks {\n local_ip = 127.0.0.1;\n local_port = 8123;\n ip = 127.0.0.1;\n port = %d;\n type = socks5;\n}\n"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->REDSOCKS:Ljava/lang/String;

    .line 77
    const-string v0, "strict_chain\nlocalnet 127.0.0.0/255.0.0.0\n[ProxyList]\n%s %s %s %s %s"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->PROXYCHAINS:Ljava/lang/String;

    .line 81
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "\n      |global {\n      | perm_cache = 2048;\n      | %s\n      | cache_dir = \"%s\";\n      | server_ip = %s;\n      | server_port = %d;\n      | query_method = tcp_only;\n      | min_ttl = 15m;\n      | max_ttl = 1w;\n      | timeout = 10;\n      | daemon = off;\n      |}\n      |\n      |server {\n      | label = \"local\";\n      | ip = 127.0.0.1;\n      | port = %d;\n      | reject = %s;\n      | reject_policy = negate;\n      | reject_recursively = on;\n      |}\n      |\n      |rr {\n      | name=localhost;\n      | reverse=on;\n      | a=127.0.0.1;\n      | owner=localhost;\n      | soa=localhost,root.localhost,42,86400,900,86400,86400;\n      |}\n    "

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->stripMargin()Ljava/lang/String;

    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_LOCAL:Ljava/lang/String;

    .line 114
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "\n      |global {\n      | perm_cache = 2048;\n      | %s\n      | cache_dir = \"%s\";\n      | server_ip = %s;\n      | server_port = %d;\n      | query_method = udp_only;\n      | min_ttl = 15m;\n      | max_ttl = 1w;\n      | timeout = 10;\n      | daemon = off;\n      | par_queries = 4;\n      |}\n      |\n      |%s\n      |\n      |server {\n      | label = \"local-server\";\n      | ip = 127.0.0.1;\n      | query_method = tcp_only;\n      | port = %d;\n      | reject = %s;\n      | reject_policy = negate;\n      | reject_recursively = on;\n      |}\n      |\n      |rr {\n      | name=localhost;\n      | reverse=on;\n      | a=127.0.0.1;\n      | owner=localhost;\n      | soa=localhost,root.localhost,42,86400,900,86400,86400;\n      |}\n    "

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->stripMargin()Ljava/lang/String;

    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_DIRECT:Ljava/lang/String;

    .line 151
    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v2, "\n        |server {\n        | label = \"remote-servers\";\n        | ip = %s;\n        | port = %d;\n        | timeout = 3;\n        | query_method = udp_only;\n        | %s\n        | policy = included;\n        | reject = %s;\n        | reject_policy = fail;\n        | reject_recursively = on;\n        |}\n      "

    invoke-virtual {v1, v2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lscala/collection/immutable/StringOps;->stripMargin()Ljava/lang/String;

    move-result-object v0

    .line 150
    iput-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->REMOTE_SERVER:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public EscapedJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "OriginString"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "ProcessString":Ljava/lang/String;
    return-object v0
.end method

.method public PDNSD_DIRECT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_DIRECT:Ljava/lang/String;

    return-object v0
.end method

.method public PDNSD_LOCAL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->PDNSD_LOCAL:Ljava/lang/String;

    return-object v0
.end method

.method public PROXYCHAINS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->PROXYCHAINS:Ljava/lang/String;

    return-object v0
.end method

.method public REDSOCKS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->REDSOCKS:Ljava/lang/String;

    return-object v0
.end method

.method public REMOTE_SERVER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->REMOTE_SERVER:Ljava/lang/String;

    return-object v0
.end method

.method public SHADOWSOCKS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/github/shadowsocks/utils/ConfigUtils$;->SHADOWSOCKS:Ljava/lang/String;

    return-object v0
.end method
