.class public final Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;
.super Lscala/runtime/AbstractFunction1$mcVI$sp;
.source "BaseService.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/BaseService;

.field private final msg$1:Ljava/lang/String;

.field private final s$1:I


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/BaseService;ILjava/lang/String;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/BaseService;
    .param p2, "s$1"    # I
    .param p3, "msg$1"    # Ljava/lang/String;

    .prologue
    .line 290
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;->$outer:Lcom/github/shadowsocks/BaseService;

    iput p2, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;->s$1:I

    iput-object p3, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;->msg$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 290
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;->apply(I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 290
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v0}, Lcom/github/shadowsocks/BaseService;->callbacks()Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;

    iget v1, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;->s$1:I

    iget-object v2, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-interface {v2}, Lcom/github/shadowsocks/BaseService;->binder()Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/aidl/IShadowsocksService$Stub;->getProfileName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/github/shadowsocks/BaseService$$anonfun$run$body$3$1;->msg$1:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback;->stateChanged(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
