.class public final Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction1;
.source "Shadowsocks.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/net/HttpURLConnection;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    .prologue
    .line 293
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 293
    check-cast p1, Ljava/net/HttpURLConnection;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->apply(Ljava/net/HttpURLConnection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 13
    .param p1, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 294
    const/16 v7, 0x1388

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 295
    const/16 v7, 0x1388

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 296
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 297
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 298
    iget-object v7, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-virtual {v7}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->com$github$shadowsocks$Shadowsocks$$anonfun$$$outer()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$testCount()I

    move-result v7

    iget-object v8, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    iget v8, v8, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->id$1:I

    if-ne v7, v8, :cond_2

    .line 299
    const/4 v7, 0x0

    invoke-static {v7}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v1

    .line 300
    .local v1, "result":Lscala/runtime/ObjectRef;
    const/4 v7, 0x1

    invoke-static {v7}, Lscala/runtime/BooleanRef;->create(Z)Lscala/runtime/BooleanRef;

    move-result-object v6

    .line 302
    .local v6, "success":Lscala/runtime/BooleanRef;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 303
    .local v4, "start":J
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v4

    .line 305
    .local v2, "elapsed":J
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 306
    .local v0, "code":I
    const/16 v7, 0xcc

    if-eq v0, v7, :cond_0

    const/16 v7, 0xc8

    if-ne v0, v7, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    if-nez v7, :cond_1

    .line 307
    :cond_0
    iget-object v7, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-virtual {v7}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->com$github$shadowsocks$Shadowsocks$$anonfun$$$outer()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v7

    const v8, 0x7f09004c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v11, v2, v3}, Lscala/Predef$;->long2Long(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/github/shadowsocks/Shadowsocks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v0    # "code":I
    .end local v2    # "elapsed":J
    .end local v4    # "start":J
    :goto_0
    iget-object v7, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-virtual {v7}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->com$github$shadowsocks$Shadowsocks$$anonfun$$$outer()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v8

    monitor-enter v8

    :try_start_1
    iget-object v7, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-virtual {v7}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->com$github$shadowsocks$Shadowsocks$$anonfun$$$outer()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$testCount()I

    move-result v7

    iget-object v9, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    iget v9, v9, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->id$1:I

    if-ne v7, v9, :cond_3

    sget-object v7, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v7}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/shadowsocks/ShadowsocksApplication;->isVpnEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-virtual {v7}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->com$github$shadowsocks$Shadowsocks$$anonfun$$$outer()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/shadowsocks/Shadowsocks;->handler()Landroid/os/Handler;

    move-result-object v7

    new-instance v9, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2$$anonfun$12;

    invoke-direct {v9, p0, v1, v6}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2$$anonfun$12;-><init>(Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;Lscala/runtime/ObjectRef;Lscala/runtime/BooleanRef;)V

    invoke-virtual {v7, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v7

    invoke-static {v7}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    .end local v1    # "result":Lscala/runtime/ObjectRef;
    .end local v6    # "success":Lscala/runtime/BooleanRef;
    :goto_2
    return-object v7

    .line 308
    .restart local v0    # "code":I
    .restart local v1    # "result":Lscala/runtime/ObjectRef;
    .restart local v2    # "elapsed":J
    .restart local v4    # "start":J
    .restart local v6    # "success":Lscala/runtime/BooleanRef;
    :cond_1
    :try_start_2
    new-instance v7, Ljava/lang/Exception;

    iget-object v8, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-virtual {v8}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->com$github$shadowsocks$Shadowsocks$$anonfun$$$outer()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v8

    const v9, 0x7f09004e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v12, v0}, Lscala/Predef$;->int2Integer(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/github/shadowsocks/Shadowsocks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 310
    .end local v0    # "code":I
    .end local v2    # "elapsed":J
    .end local v4    # "start":J
    :catch_0
    move-exception v7

    .line 311
    const/4 v8, 0x0

    iput-boolean v8, v6, Lscala/runtime/BooleanRef;->elem:Z

    .line 312
    iget-object v8, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-virtual {v8}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->com$github$shadowsocks$Shadowsocks$$anonfun$$$outer()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v8

    const v9, 0x7f09004d

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/github/shadowsocks/Shadowsocks;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    goto :goto_0

    .line 298
    .end local v1    # "result":Lscala/runtime/ObjectRef;
    .end local v6    # "success":Lscala/runtime/BooleanRef;
    :cond_2
    sget-object v7, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 314
    .restart local v1    # "result":Lscala/runtime/ObjectRef;
    .restart local v6    # "success":Lscala/runtime/BooleanRef;
    :cond_3
    :try_start_3
    sget-object v7, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public final com$github$shadowsocks$Shadowsocks$$anonfun$$anonfun$$run$body$8(Lscala/runtime/ObjectRef;Lscala/runtime/BooleanRef;)V
    .locals 3
    .param p1, "result$1"    # Lscala/runtime/ObjectRef;
    .param p2, "success$1"    # Lscala/runtime/BooleanRef;

    .prologue
    .line 315
    iget-boolean v0, p2, Lscala/runtime/BooleanRef;->elem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->com$github$shadowsocks$Shadowsocks$$anonfun$$$outer()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->com$github$shadowsocks$Shadowsocks$$anonfun$$$outer()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f09004f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 318
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1$$anonfun$apply$2;->$outer:Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-virtual {v0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;->com$github$shadowsocks$Shadowsocks$$anonfun$$$outer()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    goto :goto_0
.end method
