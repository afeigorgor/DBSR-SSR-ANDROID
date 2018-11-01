.class public abstract Lcom/github/shadowsocks/BaseService$class;
.super Ljava/lang/Object;
.source "BaseService.scala"


# direct methods
.method public static $init$(Lcom/github/shadowsocks/BaseService;)V
    .locals 1
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 66
    sget-object v0, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/State$;->STOPPED()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$$state_$eq(I)V

    .line 76
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-interface {p0, v0}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$_setter_$callbacks_$eq(Landroid/os/RemoteCallbackList;)V

    .line 82
    new-instance v0, Lcom/github/shadowsocks/BaseService$$anonfun$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/BaseService$$anonfun$1;-><init>(Lcom/github/shadowsocks/BaseService;)V

    invoke-interface {p0, v0}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$_setter_$com$github$shadowsocks$BaseService$$closeReceiver_$eq(Landroid/content/BroadcastReceiver;)V

    .line 88
    new-instance v0, Lcom/github/shadowsocks/BaseService$$anon$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/BaseService$$anon$1;-><init>(Lcom/github/shadowsocks/BaseService;)V

    invoke-interface {p0, v0}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$_setter_$binder_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;)V

    return-void
.end method

.method public static changeState(Lcom/github/shadowsocks/BaseService;ILjava/lang/String;)V
    .locals 2
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;
    .param p1, "s"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Landroid/os/Handler;

    move-object v1, p0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 287
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/github/shadowsocks/BaseService$$anonfun$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/github/shadowsocks/BaseService$$anonfun$5;-><init>(Lcom/github/shadowsocks/BaseService;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static changeState$default$2(Lcom/github/shadowsocks/BaseService;)Ljava/lang/String;
    .locals 1
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 285
    const/4 v0, 0x0

    return-object v0
.end method

.method public static checkProfile(Lcom/github/shadowsocks/BaseService;Lcom/github/shadowsocks/database/Profile;)Z
    .locals 3
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    const/4 v1, 0x1

    .line 137
    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 138
    check-cast v0, Landroid/content/Context;

    const v2, 0x7f090094

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/github/shadowsocks/BaseService;->stopRunner(ZLjava/lang/String;)V

    .line 139
    const/4 v0, 0x0

    .line 137
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 140
    goto :goto_0
.end method

.method public static connect(Lcom/github/shadowsocks/BaseService;)V
    .locals 15
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 143
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v11

    const-string v12, "198.199.101.152"

    if-nez v11, :cond_1

    if-eqz v12, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 144
    :cond_2
    sget-object v11, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v11}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/shadowsocks/ShadowsocksApplication;->containerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v2

    .line 145
    .local v2, "holder":Lcom/google/android/gms/tagmanager/ContainerHolder;
    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v1

    .line 146
    .local v1, "container":Lcom/google/android/gms/tagmanager/Container;
    const-string v11, "proxy_url"

    invoke-virtual {v1, v11}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "url":Ljava/lang/String;
    sget-object v12, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    move-object v11, p0

    check-cast v11, Landroid/content/Context;

    invoke-virtual {v12, v11}, Lcom/github/shadowsocks/utils/Utils$;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 149
    .local v9, "sig":Ljava/lang/String;
    new-instance v11, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v11}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 150
    new-instance v12, Lcom/github/shadowsocks/BaseService$$anonfun$2;

    invoke-direct {v12, p0}, Lcom/github/shadowsocks/BaseService$$anonfun$2;-><init>(Lcom/github/shadowsocks/BaseService;)V

    invoke-virtual {v11, v12}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v11

    .line 154
    const-wide/16 v12, 0xa

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13, v14}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v11

    .line 155
    const-wide/16 v12, 0xa

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13, v14}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v11

    .line 156
    const-wide/16 v12, 0x1e

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v12, v13, v14}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v11

    .line 157
    invoke-virtual {v11}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 158
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v11, Lokhttp3/FormBody$Builder;

    invoke-direct {v11}, Lokhttp3/FormBody$Builder;-><init>()V

    .line 159
    const-string v12, "sig"

    invoke-virtual {v11, v12, v9}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    move-result-object v11

    .line 160
    invoke-virtual {v11}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v7

    .line 161
    .local v7, "requestBody":Lokhttp3/FormBody;
    new-instance v11, Lokhttp3/Request$Builder;

    invoke-direct {v11}, Lokhttp3/Request$Builder;-><init>()V

    .line 162
    invoke-virtual {v11, v10}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 163
    invoke-virtual {v11, v7}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v11

    .line 164
    invoke-virtual {v11}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 166
    .local v6, "request":Lokhttp3/Request;
    invoke-virtual {v0, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v11

    invoke-interface {v11}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v8

    .line 167
    .local v8, "resposne":Lokhttp3/Response;
    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v11

    invoke-virtual {v11}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "list":Ljava/lang/String;
    sget-object v12, Lscala/util/Random$;->MODULE$:Lscala/util/Random$;

    sget-object v13, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v11, Lscala/collection/immutable/StringOps;

    sget-object v14, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v14, v3}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v14}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    const/16 v14, 0x7c

    invoke-virtual {v11, v14}, Lscala/collection/immutable/StringOps;->split(C)[Ljava/lang/String;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    invoke-virtual {v13, v11}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v11

    invoke-interface {v11}, Lscala/collection/mutable/ArrayOps;->toSeq()Lscala/collection/Seq;

    move-result-object v11

    sget-object v13, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v13}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lscala/util/Random$;->shuffle(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/TraversableOnce;

    move-result-object v4

    check-cast v4, Lscala/collection/Seq;

    .line 170
    .local v4, "proxies":Lscala/collection/Seq;
    new-instance v12, Lscala/collection/immutable/StringOps;

    sget-object v13, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-interface {v4}, Lscala/collection/Seq;->head()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v13, v11}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x3a

    invoke-virtual {v12, v11}, Lscala/collection/immutable/StringOps;->split(C)[Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "proxy":[Ljava/lang/String;
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/github/shadowsocks/database/Profile;->host_$eq(Ljava/lang/String;)V

    .line 172
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    new-instance v12, Lscala/collection/immutable/StringOps;

    sget-object v13, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v14, 0x1

    aget-object v14, v5, v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lscala/collection/immutable/StringOps;->toInt()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/github/shadowsocks/database/Profile;->remotePort_$eq(I)V

    .line 173
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    const/4 v12, 0x2

    aget-object v12, v5, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/github/shadowsocks/database/Profile;->password_$eq(Ljava/lang/String;)V

    .line 174
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v11

    const/4 v12, 0x3

    aget-object v12, v5, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/github/shadowsocks/database/Profile;->method_$eq(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getBlackList(Lcom/github/shadowsocks/BaseService;)Ljava/lang/String;
    .locals 6
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 304
    check-cast p0, Landroid/content/Context;

    .end local p0    # "$this":Lcom/github/shadowsocks/BaseService;
    const v4, 0x7f0900dd

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "default":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->containerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 307
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    const-string v4, "black_list_lite"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "update":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v2, v1

    .line 309
    .local v2, "list":Ljava/lang/String;
    :goto_0
    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v5, "exclude = "

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 303
    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    .end local v2    # "list":Ljava/lang/String;
    .end local v3    # "update":Ljava/lang/String;
    :goto_1
    return-object v4

    .restart local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    .restart local v3    # "update":Ljava/lang/String;
    :cond_1
    move-object v2, v3

    .line 308
    goto :goto_0

    .line 311
    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    .end local v3    # "update":Ljava/lang/String;
    :catch_0
    move-exception v4

    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v5, "exclude = "

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static getState(Lcom/github/shadowsocks/BaseService;)I
    .locals 1
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 252
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$$state()I

    move-result v0

    return v0
.end method

.method public static handler(Lcom/github/shadowsocks/BaseService;)Landroid/os/Handler;
    .locals 2
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 78
    new-instance v0, Landroid/os/Handler;

    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "$this":Lcom/github/shadowsocks/BaseService;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static final lookup$body$1(Lcom/github/shadowsocks/BaseService;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 150
    sget-object v1, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {v1, p1, v3}, Lcom/github/shadowsocks/utils/Utils$;->resolve(Ljava/lang/String;Z)Lscala/Option;

    move-result-object v1

    .line 151
    instance-of v2, v1, Lscala/Some;

    if-eqz v2, :cond_0

    check-cast v1, Lscala/Some;

    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "ip":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    aput-object v2, v1, v3

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 150
    .end local v0    # "ip":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 152
    :cond_0
    sget-object v1, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    invoke-interface {v1, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static onCreate(Lcom/github/shadowsocks/BaseService;)V
    .locals 1
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 277
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$$super$onCreate()V

    .line 278
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->refreshContainerHolder()V

    .line 279
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->updateAssets()V

    return-void
.end method

.method public static final onReceive$body$1(Lcom/github/shadowsocks/BaseService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    const v0, 0x7f0900c1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    const/4 v0, 0x1

    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->stopRunner$default$2()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/github/shadowsocks/BaseService;->stopRunner(ZLjava/lang/String;)V

    return-void
.end method

.method public static onStartCommand(Lcom/github/shadowsocks/BaseService;Landroid/content/Intent;II)I
    .locals 1
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 283
    const/4 v0, 0x2

    return v0
.end method

.method public static protectPath(Lcom/github/shadowsocks/BaseService;)Ljava/lang/String;
    .locals 2
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 80
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    check-cast p0, Landroid/content/ContextWrapper;

    .end local p0    # "$this":Lcom/github/shadowsocks/BaseService;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v1, "/protect_path"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final run$body$1(Lcom/github/shadowsocks/BaseService;)V
    .locals 2
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 199
    check-cast p0, Landroid/content/Context;

    .end local p0    # "$this":Lcom/github/shadowsocks/BaseService;
    const v0, 0x7f090075

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static final run$body$2(Lcom/github/shadowsocks/BaseService;)V
    .locals 12
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 257
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->callbacksCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txRate()J

    move-result-wide v2

    .line 259
    .local v2, "txRate":J
    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxRate()J

    move-result-wide v4

    .line 260
    .local v4, "rxRate":J
    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txTotal()J

    move-result-wide v6

    .line 261
    .local v6, "txTotal":J
    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxTotal()J

    move-result-wide v8

    .line 262
    .local v8, "rxTotal":J
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->callbacks()Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .local v10, "n":I
    sget-object v0, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 263
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lscala/Predef$;->intWrapper(I)I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object v11

    new-instance v0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$2$1;-><init>(Lcom/github/shadowsocks/BaseService;JJJJ)V

    invoke-virtual {v11, v0}, Lscala/collection/immutable/Range;->foreach$mVc$sp(Lscala/Function1;)V

    .line 270
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->callbacks()Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 257
    .end local v2    # "txRate":J
    .end local v4    # "rxRate":J
    .end local v6    # "txTotal":J
    .end local v8    # "rxTotal":J
    .end local v10    # "n":I
    :cond_0
    return-void
.end method

.method public static final run$body$3(Lcom/github/shadowsocks/BaseService;ILjava/lang/String;)V
    .locals 4
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;
    .param p1, "s$1"    # I
    .param p2, "msg$1"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$$state()I

    move-result v1

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_2

    .line 288
    :cond_0
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->callbacksCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 289
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->callbacks()Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "n":I
    sget-object v1, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 290
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lscala/Predef$;->intWrapper(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;-><init>(Lcom/github/shadowsocks/BaseService;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lscala/collection/immutable/Range;->foreach$mVc$sp(Lscala/Function1;)V

    .line 297
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->callbacks()Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 299
    .end local v0    # "n":I
    :cond_1
    invoke-interface {p0, p1}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$$state_$eq(I)V

    .line 287
    :cond_2
    return-void
.end method

.method public static startRunner(Lcom/github/shadowsocks/BaseService;Lcom/github/shadowsocks/database/Profile;)V
    .locals 5
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 179
    invoke-interface {p0, p1}, Lcom/github/shadowsocks/BaseService;->profile_$eq(Lcom/github/shadowsocks/database/Profile;)V

    move-object v1, p0

    .line 181
    check-cast v1, Landroid/content/ContextWrapper;

    new-instance v3, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    sget-object v1, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->reset()V

    .line 183
    new-instance v2, Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    move-object v1, p0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;-><init>(Landroid/content/Context;)V

    invoke-interface {p0, v2}, Lcom/github/shadowsocks/BaseService;->trafficMonitorThread_$eq(Lcom/github/shadowsocks/utils/TrafficMonitorThread;)V

    .line 184
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->trafficMonitorThread()Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->start()V

    .line 186
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->closeReceiverRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 189
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/github/shadowsocks/utils/Action$;->MODULE$:Lcom/github/shadowsocks/utils/Action$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Action$;->CLOSE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object v1, p0

    .line 191
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$$closeReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lcom/github/shadowsocks/BaseService;->closeReceiverRegistered_$eq(Z)V

    .line 195
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->CONNECTING()I

    move-result v1

    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->changeState$default$2()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lcom/github/shadowsocks/BaseService;->changeState(ILjava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->isMethodUnsafe()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->handler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/BaseService$$anonfun$3;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/BaseService$$anonfun$3;-><init>(Lcom/github/shadowsocks/BaseService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    .line 201
    :goto_0
    sget-object v1, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v2, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;-><init>(Lcom/github/shadowsocks/BaseService;)V

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/utils/Utils$;->ThrowableFuture(Lscala/Function0;)V

    return-void

    .line 199
    :cond_1
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method

.method public static stopRunner(Lcom/github/shadowsocks/BaseService;ZLjava/lang/String;)V
    .locals 5
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;
    .param p1, "stopService"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 215
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->closeReceiverRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 216
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->com$github$shadowsocks$BaseService$$closeReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 217
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/github/shadowsocks/BaseService;->closeReceiverRegistered_$eq(Z)V

    .line 221
    :cond_0
    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txTotal()J

    move-result-wide v0

    sget-object v2, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxTotal()J

    move-result-wide v2

    invoke-interface {p0, v0, v1, v2, v3}, Lcom/github/shadowsocks/BaseService;->updateTrafficTotal(JJ)V

    .line 223
    sget-object v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->reset()V

    .line 224
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->trafficMonitorThread()Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->trafficMonitorThread()Lcom/github/shadowsocks/utils/TrafficMonitorThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/TrafficMonitorThread;->stopThread()V

    .line 226
    invoke-interface {p0, v4}, Lcom/github/shadowsocks/BaseService;->trafficMonitorThread_$eq(Lcom/github/shadowsocks/utils/TrafficMonitorThread;)V

    .line 230
    :cond_1
    sget-object v0, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/State$;->STOPPED()I

    move-result v0

    invoke-interface {p0, v0, p2}, Lcom/github/shadowsocks/BaseService;->changeState(ILjava/lang/String;)V

    .line 233
    if-eqz p1, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 235
    :cond_2
    invoke-interface {p0, v4}, Lcom/github/shadowsocks/BaseService;->profile_$eq(Lcom/github/shadowsocks/database/Profile;)V

    return-void
.end method

.method public static updateTrafficRate(Lcom/github/shadowsocks/BaseService;)V
    .locals 2
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 256
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/BaseService$$anonfun$4;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/BaseService$$anonfun$4;-><init>(Lcom/github/shadowsocks/BaseService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static updateTrafficTotal(Lcom/github/shadowsocks/BaseService;JJ)V
    .locals 5
    .param p0, "$this"    # Lcom/github/shadowsocks/BaseService;
    .param p1, "tx"    # J
    .param p3, "rx"    # J

    .prologue
    .line 239
    invoke-interface {p0}, Lcom/github/shadowsocks/BaseService;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    .line 240
    .local v1, "profile":Lcom/github/shadowsocks/database/Profile;
    if-eqz v1, :cond_0

    .line 241
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/database/ProfileManager;->getProfile(I)Lscala/Option;

    move-result-object v2

    .line 242
    instance-of v3, v2, Lscala/Some;

    if-eqz v3, :cond_1

    check-cast v2, Lscala/Some;

    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    .line 243
    .local v0, "p":Lcom/github/shadowsocks/database/Profile;
    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->tx()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/github/shadowsocks/database/Profile;->tx_$eq(J)V

    .line 244
    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->rx()J

    move-result-wide v2

    add-long/2addr v2, p3

    invoke-virtual {v0, v2, v3}, Lcom/github/shadowsocks/database/Profile;->rx_$eq(J)V

    .line 245
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 238
    .end local v0    # "p":Lcom/github/shadowsocks/database/Profile;
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    sget-object v3, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 241
    :cond_2
    new-instance v3, Lscala/MatchError;

    invoke-direct {v3, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
