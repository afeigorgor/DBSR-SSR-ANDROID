.class public final Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll_ssr$1;
.super Lscala/runtime/AbstractFunction1;
.source "Parser.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/utils/Parser$;->findAll_ssr(Ljava/lang/CharSequence;)Lscala/collection/Iterator;
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
    .line 79
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lscala/util/matching/Regex$Match;)Lcom/github/shadowsocks/database/Profile;
    .locals 9
    .param p1, "m"    # Lscala/util/matching/Regex$Match;

    .prologue
    const/4 v5, 0x0

    .line 80
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "="

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    invoke-static {v4, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    const-string v6, "UTF-8"

    invoke-direct {v3, v4, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 81
    .local v3, "uri":Ljava/lang/String;
    sget-object v4, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr()Lscala/util/matching/Regex;

    move-result-object v4

    invoke-virtual {v4, v3}, Lscala/util/matching/Regex;->findFirstMatchIn(Ljava/lang/CharSequence;)Lscala/Option;

    move-result-object v4

    .line 82
    instance-of v6, v4, Lscala/Some;

    if-eqz v6, :cond_4

    check-cast v4, Lscala/Some;

    invoke-virtual {v4}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/util/matching/Regex$Match;

    .line 83
    .local v2, "ss":Lscala/util/matching/Regex$Match;
    new-instance v1, Lcom/github/shadowsocks/database/Profile;

    invoke-direct {v1}, Lcom/github/shadowsocks/database/Profile;-><init>()V

    .line 84
    .local v1, "profile":Lcom/github/shadowsocks/database/Profile;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/github/shadowsocks/database/Profile;->host_$eq(Ljava/lang/String;)V

    .line 85
    new-instance v4, Lscala/collection/immutable/StringOps;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/shadowsocks/database/Profile;->remotePort_$eq(I)V

    .line 86
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/github/shadowsocks/database/Profile;->protocol_$eq(Ljava/lang/String;)V

    .line 87
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/github/shadowsocks/database/Profile;->method_$eq(Ljava/lang/String;)V

    .line 88
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/github/shadowsocks/database/Profile;->obfs_$eq(Ljava/lang/String;)V

    .line 89
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x7

    invoke-virtual {v2, v6}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/github/shadowsocks/database/Profile;->password_$eq(Ljava/lang/String;)V

    .line 91
    sget-object v4, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_obfsparam()Lscala/util/matching/Regex;

    move-result-object v4

    invoke-virtual {v4, v3}, Lscala/util/matching/Regex;->findFirstMatchIn(Ljava/lang/CharSequence;)Lscala/Option;

    move-result-object v4

    .line 92
    instance-of v6, v4, Lscala/Some;

    if-eqz v6, :cond_0

    check-cast v4, Lscala/Some;

    invoke-virtual {v4}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/matching/Regex$Match;

    .line 93
    .local v0, "param":Lscala/util/matching/Regex$Match;
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/github/shadowsocks/database/Profile;->obfs_param_$eq(Ljava/lang/String;)V

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 97
    .end local v0    # "param":Lscala/util/matching/Regex$Match;
    :cond_0
    sget-object v4, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_protocolparam()Lscala/util/matching/Regex;

    move-result-object v4

    invoke-virtual {v4, v3}, Lscala/util/matching/Regex;->findFirstMatchIn(Ljava/lang/CharSequence;)Lscala/Option;

    move-result-object v4

    .line 98
    instance-of v6, v4, Lscala/Some;

    if-eqz v6, :cond_1

    check-cast v4, Lscala/Some;

    invoke-virtual {v4}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/matching/Regex$Match;

    .line 99
    .restart local v0    # "param":Lscala/util/matching/Regex$Match;
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/github/shadowsocks/database/Profile;->protocol_param_$eq(Ljava/lang/String;)V

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 103
    .end local v0    # "param":Lscala/util/matching/Regex$Match;
    :cond_1
    sget-object v4, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_remarks()Lscala/util/matching/Regex;

    move-result-object v4

    invoke-virtual {v4, v3}, Lscala/util/matching/Regex;->findFirstMatchIn(Ljava/lang/CharSequence;)Lscala/Option;

    move-result-object v4

    .line 104
    instance-of v6, v4, Lscala/Some;

    if-eqz v6, :cond_3

    check-cast v4, Lscala/Some;

    invoke-virtual {v4}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/matching/Regex$Match;

    .line 105
    .restart local v0    # "param":Lscala/util/matching/Regex$Match;
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/github/shadowsocks/database/Profile;->name_$eq(Ljava/lang/String;)V

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 109
    .end local v0    # "param":Lscala/util/matching/Regex$Match;
    :goto_0
    sget-object v4, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/Parser$;->com$github$shadowsocks$utils$Parser$$decodedPattern_ssr_groupparam()Lscala/util/matching/Regex;

    move-result-object v4

    invoke-virtual {v4, v3}, Lscala/util/matching/Regex;->findFirstMatchIn(Ljava/lang/CharSequence;)Lscala/Option;

    move-result-object v4

    .line 110
    instance-of v6, v4, Lscala/Some;

    if-eqz v6, :cond_2

    check-cast v4, Lscala/Some;

    invoke-virtual {v4}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/util/matching/Regex$Match;

    .line 111
    .restart local v0    # "param":Lscala/util/matching/Regex$Match;
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/github/shadowsocks/database/Profile;->url_group_$eq(Ljava/lang/String;)V

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 79
    .end local v0    # "param":Lscala/util/matching/Regex$Match;
    .end local v1    # "profile":Lcom/github/shadowsocks/database/Profile;
    .end local v2    # "ss":Lscala/util/matching/Regex$Match;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v1

    .line 106
    .restart local v1    # "profile":Lcom/github/shadowsocks/database/Profile;
    .restart local v2    # "ss":Lscala/util/matching/Regex$Match;
    .restart local v3    # "uri":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lscala/util/matching/Regex$Match;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/github/shadowsocks/database/Profile;->name_$eq(Ljava/lang/String;)V

    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "profile":Lcom/github/shadowsocks/database/Profile;
    .end local v2    # "ss":Lscala/util/matching/Regex$Match;
    :cond_4
    move-object v1, v5

    .line 116
    goto :goto_1

    .line 120
    .end local v3    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 121
    sget-object v6, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/Parser$;->TAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v7}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v8, "parser error: "

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lscala/util/matching/Regex$Match;->source()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v5

    .line 122
    goto :goto_1
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 79
    check-cast p1, Lscala/util/matching/Regex$Match;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/utils/Parser$$anonfun$findAll_ssr$1;->apply(Lscala/util/matching/Regex$Match;)Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    return-object v0
.end method
