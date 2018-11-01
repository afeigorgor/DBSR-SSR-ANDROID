.class public final Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;
.super Lscala/runtime/AbstractFunction0$mcZ$sp;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15(Landroid/content/DialogInterface;ILandroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity;

.field public final UrlAddEdit$1:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;Landroid/widget/EditText;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;
    .param p2, "UrlAddEdit$1"    # Landroid/widget/EditText;

    .prologue
    .line 798
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->UrlAddEdit$1:Landroid/widget/EditText;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcZ$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->apply()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Z
    .locals 1

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->apply$mcZ$sp()Z

    move-result v0

    return v0
.end method

.method public apply$mcZ$sp()Z
    .locals 14

    .prologue
    .line 799
    iget-object v8, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v8}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$handler()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anonfun$28;

    invoke-direct {v9, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anonfun$28;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 802
    const-string v6, ""

    .line 803
    .local v6, "result":Ljava/lang/String;
    new-instance v8, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v8}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 804
    const-wide/16 v10, 0x5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11, v9}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v8

    .line 805
    const-wide/16 v10, 0x5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11, v9}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v8

    .line 806
    const-wide/16 v10, 0x5

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11, v9}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 808
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 811
    .local v1, "client":Lokhttp3/OkHttpClient;
    :try_start_0
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    .line 812
    iget-object v9, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->UrlAddEdit$1:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v8

    .line 813
    invoke-virtual {v8}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 814
    .local v4, "request":Lokhttp3/Request;
    invoke-virtual {v1, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v5

    .line 815
    .local v5, "response":Lokhttp3/Response;
    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v2

    .line 816
    .local v2, "code":I
    const/16 v8, 0xc8

    if-ne v2, v8, :cond_3

    .line 817
    sget-object v8, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    invoke-virtual {v10}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    invoke-static {v10, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v9}, Lcom/github/shadowsocks/utils/Parser$;->findAll_ssr(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v8

    invoke-interface {v8}, Lscala/collection/Iterator;->toList()Lscala/collection/immutable/List;

    move-result-object v3

    .line 818
    .local v3, "profiles_ssr":Lscala/collection/immutable/List;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lscala/collection/immutable/List;->apply(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v8}, Lcom/github/shadowsocks/database/Profile;->url_group()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    .line 819
    :cond_0
    new-instance v7, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anon$6;

    invoke-direct {v7, p0, v3}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anon$6;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;Lscala/collection/immutable/List;)V

    .line 823
    .local v7, "ssrsub":Lcom/github/shadowsocks/database/SSRSub;
    iget-object v8, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v8}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$handler()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anonfun$29;

    invoke-direct {v9, p0, v7}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anonfun$29;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;Lcom/github/shadowsocks/database/SSRSub;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v8

    .line 818
    invoke-static {v8}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    .line 826
    .end local v7    # "ssrsub":Lcom/github/shadowsocks/database/SSRSub;
    :goto_0
    invoke-virtual {v5}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    .end local v2    # "code":I
    .end local v3    # "profiles_ssr":Lscala/collection/immutable/List;
    .end local v4    # "request":Lokhttp3/Request;
    .end local v5    # "response":Lokhttp3/Response;
    :goto_1
    iget-object v8, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v8}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$handler()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anonfun$30;

    invoke-direct {v9, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anonfun$30;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 832
    iget-object v8, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v8}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$handler()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anonfun$31;

    invoke-direct {v9, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1$$anonfun$31;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v8

    return v8

    .line 818
    .restart local v2    # "code":I
    .restart local v3    # "profiles_ssr":Lscala/collection/immutable/List;
    .restart local v4    # "request":Lokhttp3/Request;
    .restart local v5    # "response":Lokhttp3/Response;
    :cond_1
    :try_start_1
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    sget-object v8, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 825
    .end local v3    # "profiles_ssr":Lscala/collection/immutable/List;
    :cond_3
    new-instance v8, Ljava/lang/Exception;

    iget-object v9, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v10, 0x7f0900af

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    sget-object v13, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v13, v2}, Lscala/Predef$;->int2Integer(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 828
    .end local v2    # "code":I
    .end local v4    # "request":Lokhttp3/Request;
    .end local v5    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v8

    .line 829
    iget-object v9, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v10, 0x7f0900af

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$anonfun$$run$body$5()V
    .locals 6

    .prologue
    .line 800
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v3, 0x7f0900b2

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v4, 0x7f0900b3

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog_$eq(Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$anonfun$$run$body$6(Lcom/github/shadowsocks/database/SSRSub;)V
    .locals 1
    .param p1, "ssrsub$1"    # Lcom/github/shadowsocks/database/SSRSub;

    .prologue
    .line 823
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager()Lcom/github/shadowsocks/database/SSRSubManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/database/SSRSubManager;->createSSRSub(Lcom/github/shadowsocks/database/SSRSub;)Lcom/github/shadowsocks/database/SSRSub;

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$anonfun$$run$body$7()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$anonfun$$run$body$8()V
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->ssrsubDialog()V

    return-void
.end method
