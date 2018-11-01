.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;
.super Lscala/runtime/AbstractFunction1;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;
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
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;

    .prologue
    .line 729
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 729
    check-cast p1, Lcom/github/shadowsocks/database/SSRSub;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;->apply(Lcom/github/shadowsocks/database/SSRSub;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Lcom/github/shadowsocks/database/SSRSub;)V
    .locals 20
    .param p1, "ssrsub"    # Lcom/github/shadowsocks/database/SSRSub;

    .prologue
    .line 731
    sget-object v14, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v14}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/SSRSub;->url_group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/github/shadowsocks/database/ProfileManager;->getAllProfilesByGroup(Ljava/lang/String;)Lscala/Option;

    move-result-object v14

    .line 732
    instance-of v15, v14, Lscala/Some;

    if-eqz v15, :cond_1

    check-cast v14, Lscala/Some;

    invoke-virtual {v14}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscala/collection/immutable/List;

    .line 731
    :goto_0
    invoke-static {v8}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v5

    .line 736
    .local v5, "delete_profiles":Lscala/runtime/ObjectRef;
    const-string v13, ""

    .line 737
    .local v13, "result":Ljava/lang/String;
    new-instance v14, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v14}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 738
    const-wide/16 v16, 0x5

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v15}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v14

    .line 739
    const-wide/16 v16, 0x5

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v15}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v14

    .line 740
    const-wide/16 v16, 0x5

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1, v15}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 742
    .local v2, "builder":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v3

    .line 744
    .local v3, "client":Lokhttp3/OkHttpClient;
    new-instance v14, Lokhttp3/Request$Builder;

    invoke-direct {v14}, Lokhttp3/Request$Builder;-><init>()V

    .line 745
    invoke-virtual/range {p1 .. p1}, Lcom/github/shadowsocks/database/SSRSub;->url()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v14

    .line 746
    invoke-virtual {v14}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v10

    .line 749
    .local v10, "request":Lokhttp3/Request;
    :try_start_0
    invoke-virtual {v3, v10}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v14

    invoke-interface {v14}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v11

    .line 750
    .local v11, "response":Lokhttp3/Response;
    invoke-virtual {v11}, Lokhttp3/Response;->code()I

    move-result v4

    .line 751
    .local v4, "code":I
    const/16 v14, 0xc8

    if-ne v4, v14, :cond_2

    .line 752
    new-instance v12, Ljava/lang/String;

    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x8

    invoke-static {v14, v15}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/String;-><init>([B)V

    .line 753
    .local v12, "response_string":Ljava/lang/String;
    const/4 v14, -0x1

    invoke-static {v14}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v7

    .line 754
    .local v7, "limit_num":Lscala/runtime/IntRef;
    const/4 v14, 0x0

    invoke-static {v14}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v6

    .line 755
    .local v6, "encounter_num":Lscala/runtime/IntRef;
    const-string v14, "MAX="

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_0

    .line 756
    new-instance v14, Lscala/collection/immutable/StringOps;

    sget-object v15, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v16, "\\n"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const-string v17, "MAX="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v16, v16, v17

    const-string v17, "\\D+"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v14

    iput v14, v7, Lscala/runtime/IntRef;->elem:I

    .line 758
    :cond_0
    sget-object v14, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v14, v12}, Lcom/github/shadowsocks/utils/Parser$;->findAll_ssr(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v9

    .line 759
    .local v9, "profiles_ssr":Lscala/collection/Iterator;
    sget-object v14, Lscala/util/Random$;->MODULE$:Lscala/util/Random$;

    sget-object v15, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    invoke-virtual {v15}, Lscala/collection/Iterator$;->IteratorCanBuildFrom()Lscala/collection/TraversableOnce$BufferedCanBuildFrom;

    move-result-object v15

    invoke-virtual {v14, v9, v15}, Lscala/util/Random$;->shuffle(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/TraversableOnce;

    move-result-object v9

    .end local v9    # "profiles_ssr":Lscala/collection/Iterator;
    check-cast v9, Lscala/collection/Iterator;

    .line 760
    .restart local v9    # "profiles_ssr":Lscala/collection/Iterator;
    new-instance v14, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v5, v7, v6}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;Lscala/runtime/ObjectRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V

    invoke-interface {v9, v14}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    .line 770
    iget-object v14, v5, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v14, Lscala/collection/immutable/List;

    new-instance v15, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2$$anonfun$apply$3;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;)V

    invoke-virtual {v14, v15}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    .line 776
    invoke-virtual {v11}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v14

    invoke-virtual {v14}, Lokhttp3/ResponseBody;->close()V

    .line 729
    .end local v4    # "code":I
    .end local v6    # "encounter_num":Lscala/runtime/IntRef;
    .end local v7    # "limit_num":Lscala/runtime/IntRef;
    .end local v9    # "profiles_ssr":Lscala/collection/Iterator;
    .end local v11    # "response":Lokhttp3/Response;
    .end local v12    # "response_string":Ljava/lang/String;
    :goto_1
    return-void

    .line 734
    .end local v2    # "builder":Lokhttp3/OkHttpClient$Builder;
    .end local v3    # "client":Lokhttp3/OkHttpClient;
    .end local v5    # "delete_profiles":Lscala/runtime/ObjectRef;
    .end local v10    # "request":Lokhttp3/Request;
    .end local v13    # "result":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 775
    .restart local v2    # "builder":Lokhttp3/OkHttpClient$Builder;
    .restart local v3    # "client":Lokhttp3/OkHttpClient;
    .restart local v4    # "code":I
    .restart local v5    # "delete_profiles":Lscala/runtime/ObjectRef;
    .restart local v10    # "request":Lokhttp3/Request;
    .restart local v11    # "response":Lokhttp3/Response;
    .restart local v13    # "result":Ljava/lang/String;
    :cond_2
    new-instance v14, Ljava/lang/Exception;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;

    invoke-virtual {v15}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->com$github$shadowsocks$ProfileManagerActivity$$anonfun$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v15

    const v16, 0x7f0900af

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget-object v19, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lscala/Predef$;->int2Integer(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    .end local v4    # "code":I
    .end local v11    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v14

    .line 779
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1$$anonfun$apply$mcV$sp$2;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;

    invoke-virtual {v15}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;->com$github$shadowsocks$ProfileManagerActivity$$anonfun$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v15

    const v16, 0x7f0900af

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v14}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v17, v18

    invoke-virtual/range {v15 .. v17}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1
.end method
