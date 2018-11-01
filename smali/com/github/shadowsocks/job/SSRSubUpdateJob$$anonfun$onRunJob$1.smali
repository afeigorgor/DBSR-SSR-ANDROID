.class public final Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1;
.super Lscala/runtime/AbstractFunction1;
.source "SSRSubUpdateJob.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/job/SSRSubUpdateJob;->onRunJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/Job$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lcom/github/shadowsocks/database/SSRSub;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final result$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/job/SSRSubUpdateJob;Lscala/runtime/IntRef;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/job/SSRSubUpdateJob;
    .param p2, "result$1"    # Lscala/runtime/IntRef;

    .prologue
    .line 45
    iput-object p2, p0, Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1;->result$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lcom/github/shadowsocks/database/SSRSub;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1;->apply(Lcom/github/shadowsocks/database/SSRSub;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Lcom/github/shadowsocks/database/SSRSub;)V
    .locals 18
    .param p1, "ssrsub"    # Lcom/github/shadowsocks/database/SSRSub;

    .prologue
    .line 47
    sget-object v13, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v13}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/SSRSub;->url_group()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/github/shadowsocks/database/ProfileManager;->getAllProfilesByGroup(Ljava/lang/String;)Lscala/Option;

    move-result-object v13

    .line 48
    instance-of v14, v13, Lscala/Some;

    if-eqz v14, :cond_1

    check-cast v13, Lscala/Some;

    invoke-virtual {v13}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscala/collection/immutable/List;

    .line 47
    :goto_0
    invoke-static {v8}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v5

    .line 53
    .local v5, "delete_profiles":Lscala/runtime/ObjectRef;
    new-instance v13, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v13}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 54
    const-wide/16 v14, 0x5

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v13 .. v16}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v13

    .line 55
    const-wide/16 v14, 0x5

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v13 .. v16}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v13

    .line 56
    const-wide/16 v14, 0x5

    sget-object v16, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v13 .. v16}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 58
    .local v2, "builder":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 60
    .local v3, "client":Lokhttp3/OkHttpClient;
    new-instance v13, Lokhttp3/Request$Builder;

    invoke-direct {v13}, Lokhttp3/Request$Builder;-><init>()V

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/SSRSub;->url()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v13

    .line 62
    invoke-virtual {v13}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v10

    .line 65
    .local v10, "request":Lokhttp3/Request;
    :try_start_0
    invoke-virtual {v3, v10}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v13

    invoke-interface {v13}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v11

    .line 66
    .local v11, "response":Lokhttp3/Response;
    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v4

    .line 67
    .local v4, "code":I
    const/16 v13, 0xc8

    if-ne v4, v13, :cond_2

    .line 68
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x8

    invoke-static {v13, v14}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    .line 69
    .local v12, "response_string":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-static {v13}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v7

    .line 70
    .local v7, "limit_num":Lscala/runtime/IntRef;
    const/4 v13, 0x0

    invoke-static {v13}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v6

    .line 71
    .local v6, "encounter_num":Lscala/runtime/IntRef;
    const-string v13, "MAX="

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_0

    .line 72
    new-instance v13, Lscala/collection/immutable/StringOps;

    sget-object v14, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v15, "\\n"

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    const-string v16, "MAX="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v15, v15, v16

    const-string v16, "\\D+"

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v13

    iput v13, v7, Lscala/runtime/IntRef;->elem:I

    .line 74
    :cond_0
    sget-object v13, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v13, v12}, Lcom/github/shadowsocks/utils/Parser$;->findAll_ssr(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v9

    .line 75
    .local v9, "profiles_ssr":Lscala/collection/Iterator;
    sget-object v13, Lscala/util/Random$;->MODULE$:Lscala/util/Random$;

    sget-object v14, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v14}, Lscala/collection/Iterator$;->IteratorCanBuildFrom()Lscala/collection/TraversableOnce$BufferedCanBuildFrom;

    move-result-object v14

    invoke-virtual {v13, v9, v14}, Lscala/util/Random$;->shuffle(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/TraversableOnce;

    move-result-object v9

    .end local v9    # "profiles_ssr":Lscala/collection/Iterator;
    check-cast v9, Lscala/collection/Iterator;

    .line 76
    .restart local v9    # "profiles_ssr":Lscala/collection/Iterator;
    new-instance v13, Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1$$anonfun$apply$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v5, v7, v6}, Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1$$anonfun$apply$1;-><init>(Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1;Lscala/runtime/ObjectRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V

    invoke-interface {v9, v13}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    .line 86
    iget-object v13, v5, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v13, Lscala/collection/immutable/List;

    new-instance v14, Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1$$anonfun$apply$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1$$anonfun$apply$3;-><init>(Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1;)V

    invoke-virtual {v13, v14}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    .line 92
    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/ResponseBody;->close()V

    .line 45
    .end local v4    # "code":I
    .end local v6    # "encounter_num":Lscala/runtime/IntRef;
    .end local v7    # "limit_num":Lscala/runtime/IntRef;
    .end local v9    # "profiles_ssr":Lscala/collection/Iterator;
    .end local v11    # "response":Lokhttp3/Response;
    .end local v12    # "response_string":Ljava/lang/String;
    :goto_1
    return-void

    .line 50
    .end local v2    # "builder":Lokhttp3/OkHttpClient$Builder;
    .end local v3    # "client":Lokhttp3/OkHttpClient;
    .end local v5    # "delete_profiles":Lscala/runtime/ObjectRef;
    .end local v10    # "request":Lokhttp3/Request;
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 91
    .restart local v2    # "builder":Lokhttp3/OkHttpClient$Builder;
    .restart local v3    # "client":Lokhttp3/OkHttpClient;
    .restart local v4    # "code":I
    .restart local v5    # "delete_profiles":Lscala/runtime/ObjectRef;
    .restart local v10    # "request":Lokhttp3/Request;
    .restart local v11    # "response":Lokhttp3/Response;
    :cond_2
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "error"

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v4    # "code":I
    .end local v11    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v13

    .line 95
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1;->result$1:Lscala/runtime/IntRef;

    const/4 v14, 0x0

    iput v14, v13, Lscala/runtime/IntRef;->elem:I

    goto :goto_1
.end method
