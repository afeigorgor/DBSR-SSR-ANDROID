.class public final Lcom/github/shadowsocks/utils/Utils$$anonfun$1;
.super Lscala/runtime/AbstractFunction1;
.source "Utils.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/utils/Utils$;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Lscala/util/Try",
        "<*>;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 258
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 258
    check-cast p1, Lscala/util/Try;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/utils/Utils$$anonfun$1;->apply(Lscala/util/Try;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Lscala/util/Try;)V
    .locals 2
    .param p1, "x0$1"    # Lscala/util/Try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/util/Try",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .line 259
    instance-of v1, p1, Lscala/util/Failure;

    if-eqz v1, :cond_0

    check-cast p1, Lscala/util/Failure;

    .end local p1    # "x0$1":Lscala/util/Try;
    invoke-virtual {p1}, Lscala/util/Failure;->exception()Ljava/lang/Throwable;

    move-result-object v0

    .line 260
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 261
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 258
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 262
    .restart local p1    # "x0$1":Lscala/util/Try;
    :cond_0
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0
.end method
