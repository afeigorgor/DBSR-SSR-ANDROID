.class public Lcom/github/shadowsocks/job/SSRSubUpdateJob;
.super Lcom/evernote/android/job/Job;
.source "SSRSubUpdateJob.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/evernote/android/job/Job;-><init>()V

    return-void
.end method


# virtual methods
.method public onRunJob(Lcom/evernote/android/job/Job$Params;)Lcom/evernote/android/job/Job$Result;
    .locals 7
    .param p1, "params"    # Lcom/evernote/android/job/Job$Params;

    .prologue
    const v6, 0x7f0900b8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 41
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->settings()Landroid/content/SharedPreferences;

    move-result-object v2

    sget-object v3, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/Key$;->ssrsub_autoupdate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 42
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager()Lcom/github/shadowsocks/database/SSRSubManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/SSRSubManager;->getAllSSRSubs()Lscala/Option;

    move-result-object v2

    .line 43
    instance-of v3, v2, Lscala/Some;

    if-eqz v3, :cond_1

    check-cast v2, Lscala/Some;

    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    .line 44
    .local v1, "ssrsubs":Lscala/collection/immutable/List;
    invoke-static {v4}, Lscala/runtime/IntRef;->create(I)Lscala/runtime/IntRef;

    move-result-object v0

    .line 45
    .local v0, "result":Lscala/runtime/IntRef;
    new-instance v2, Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1;

    invoke-direct {v2, p0, v0}, Lcom/github/shadowsocks/job/SSRSubUpdateJob$$anonfun$onRunJob$1;-><init>(Lcom/github/shadowsocks/job/SSRSubUpdateJob;Lscala/runtime/IntRef;)V

    invoke-virtual {v1, v2}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    .line 99
    iget v2, v0, Lscala/runtime/IntRef;->elem:I

    if-ne v2, v4, :cond_0

    .line 100
    const-string v2, "SSRSubUpdateJob"

    const-string v3, "update ssr sub successfully!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->resources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 102
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 103
    sget-object v2, Lcom/evernote/android/job/Job$Result;->SUCCESS:Lcom/evernote/android/job/Job$Result;

    .line 39
    .end local v0    # "result":Lscala/runtime/IntRef;
    .end local v1    # "ssrsubs":Lscala/collection/immutable/List;
    :goto_0
    return-object v2

    .line 105
    .restart local v0    # "result":Lscala/runtime/IntRef;
    .restart local v1    # "ssrsubs":Lscala/collection/immutable/List;
    :cond_0
    const-string v2, "SSRSubUpdateJob"

    const-string v3, "update ssr sub failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->resources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 107
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 108
    sget-object v2, Lcom/evernote/android/job/Job$Result;->RESCHEDULE:Lcom/evernote/android/job/Job$Result;

    goto :goto_0

    .line 111
    .end local v0    # "result":Lscala/runtime/IntRef;
    .end local v1    # "ssrsubs":Lscala/collection/immutable/List;
    :cond_1
    const-string v2, "SSRSubUpdateJob"

    const-string v3, "update ssr sub failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->resources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 113
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 114
    sget-object v2, Lcom/evernote/android/job/Job$Result;->FAILURE:Lcom/evernote/android/job/Job$Result;

    goto :goto_0

    .line 118
    :cond_2
    sget-object v2, Lcom/evernote/android/job/Job$Result;->RESCHEDULE:Lcom/evernote/android/job/Job$Result;

    goto :goto_0
.end method
