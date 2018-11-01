.class public final Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;
.super Lscala/runtime/AbstractFunction0$mcV$sp;
.source "BaseService.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/BaseService;->startRunner(Lcom/github/shadowsocks/database/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/BaseService;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/BaseService;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/BaseService;

    .prologue
    .line 201
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcV$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->apply()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->apply$mcV$sp()V

    return-void
.end method

.method public apply$mcV$sp()V
    .locals 6

    .prologue
    const v5, 0x7f0900a6

    const/4 v4, 0x1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->connect()V
    :try_end_0
    .catch Lcom/github/shadowsocks/BaseService$NameNotResolvedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/github/shadowsocks/BaseService$KcpcliParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/github/shadowsocks/BaseService$NullConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    .line 206
    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 207
    iget-object v2, p0, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->$outer:Lcom/github/shadowsocks/BaseService;

    new-instance v3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->$outer:Lcom/github/shadowsocks/BaseService;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/github/shadowsocks/BaseService;->stopRunner(ZLjava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->$outer:Lcom/github/shadowsocks/BaseService;

    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->$outer:Lcom/github/shadowsocks/BaseService;

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f090097

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/github/shadowsocks/BaseService;->stopRunner(ZLjava/lang/String;)V

    goto :goto_0

    .line 203
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 204
    iget-object v2, p0, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->$outer:Lcom/github/shadowsocks/BaseService;

    new-instance v3, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v3}, Lscala/collection/mutable/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->$outer:Lcom/github/shadowsocks/BaseService;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/github/shadowsocks/BaseService$KcpcliParseException;->cause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Lcom/github/shadowsocks/BaseService;->stopRunner(ZLjava/lang/String;)V

    goto :goto_0

    .line 202
    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->$outer:Lcom/github/shadowsocks/BaseService;

    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anonfun$startRunner$1;->$outer:Lcom/github/shadowsocks/BaseService;

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f09006d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Lcom/github/shadowsocks/BaseService;->stopRunner(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method
