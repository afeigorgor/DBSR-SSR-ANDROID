.class public final Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll$1;
.super Lscala/runtime/AbstractFunction1;
.source "Parser.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/utils/Parser$;->findAll(Ljava/lang/CharSequence;)Lscala/collection/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/util/matching/Regex$Match;",
        "Lcom/github/shadowsocks/database/Profile;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lscala/util/matching/Regex$Match;)Lcom/github/shadowsocks/database/Profile;
    .locals 7
    .param p1, "m"    # Lscala/util/matching/Regex$Match;

    .prologue
    const/4 v3, 0x0

    .line 60
    :try_start_0
    sget-object v2, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern()Lscala/util/matching/Regex;

    move-result-object v2

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v4}, Lscala/util/matching/Regex;->findFirstMatchIn(Ljava/lang/CharSequence;)Lscala/Option;

    move-result-object v2

    .line 61
    instance-of v4, v2, Lscala/Some;

    if-eqz v4, :cond_2

    check-cast v2, Lscala/Some;

    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/util/matching/Regex$Match;

    .line 62
    .local v1, "ss":Lscala/util/matching/Regex$Match;
    new-instance v0, Lcom/github/shadowsocks/database/Profile;

    invoke-direct {v0}, Lcom/github/shadowsocks/database/Profile;-><init>()V

    .line 63
    .local v0, "profile":Lcom/github/shadowsocks/database/Profile;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/database/Profile;->method_$eq(Ljava/lang/String;)V

    .line 64
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "verify_sha1"

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/database/Profile;->protocol_$eq(Ljava/lang/String;)V

    .line 65
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/database/Profile;->password_$eq(Ljava/lang/String;)V

    .line 66
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/database/Profile;->name_$eq(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/database/Profile;->host_$eq(Ljava/lang/String;)V

    .line 68
    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v5, 0x6

    invoke-virtual {v1, v5}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/database/Profile;->remotePort_$eq(I)V

    .line 69
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "utf-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/database/Profile;->name_$eq(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "profile":Lcom/github/shadowsocks/database/Profile;
    .end local v1    # "ss":Lscala/util/matching/Regex$Match;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, v3

    .line 71
    goto :goto_0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    sget-object v4, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/Parser$;->TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v5}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v6, "parser error: "

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lscala/util/matching/Regex$Match;->source()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 76
    goto :goto_0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Lscala/util/matching/Regex$Match;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll$1;->apply(Lscala/util/matching/Regex$Match;)Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    return-object v0
.end method
