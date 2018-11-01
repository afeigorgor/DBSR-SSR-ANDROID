.class public final Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;
.super Ljava/lang/Object;
.source "ShadowsocksApplication.scala"

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<",
        "Lcom/google/android/gms/tagmanager/ContainerHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksApplication;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksApplication;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksApplication;

    .prologue
    .line 175
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final com$github$shadowsocks$ShadowsocksApplication$$anon$$getValue$body$1(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/util/Map;

    .prologue
    .line 184
    const-string v0, "getSignature"

    if-nez p1, :cond_1

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 187
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 184
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    :cond_2
    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/utils/Utils$;->getSignature(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 0
    .param p1, "x$1"    # Lcom/google/android/gms/common/api/Result;

    .prologue
    .line 175
    check-cast p1, Lcom/google/android/gms/tagmanager/ContainerHolder;

    .end local p1    # "x$1":Lcom/google/android/gms/common/api/Result;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    return-void
.end method

.method public onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    .line 177
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    invoke-virtual {v1, p1}, Lcom/github/shadowsocks/ShadowsocksApplication;->containerHolder_$eq(Lcom/google/android/gms/tagmanager/ContainerHolder;)V

    .line 181
    invoke-interface {p1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 182
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    const-string v1, "getSignature"

    .line 183
    new-instance v2, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2$$anonfun$1;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2$$anonfun$1;-><init>(Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;)V

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/Container;->registerFunctionCallMacroCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;)V

    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    :cond_0
    return-void
.end method
