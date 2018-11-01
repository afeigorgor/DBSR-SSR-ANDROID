.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$1;
.super Lscala/runtime/AbstractFunction0;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->setEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction0",
        "<",
        "Lscala/collection/immutable/Stream",
        "<",
        "Ljava/lang/String;",
        ">;>;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings;

    .prologue
    .line 485
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$1;->apply()Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Lscala/collection/immutable/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/Stream",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v0, Lcom/github/shadowsocks/ShadowsocksSettings$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksSettings$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksSettings$;->com$github$shadowsocks$ShadowsocksSettings$$PROXY_PREFS()[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    invoke-interface {v0}, Lscala/collection/mutable/ArrayOps;->toStream()Lscala/collection/immutable/Stream;

    move-result-object v0

    sget-object v1, Lscala/collection/immutable/Stream$;->MODULE$:Lscala/collection/immutable/Stream$;

    new-instance v2, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$1$$anonfun$apply$1;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$1$$anonfun$apply$1;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setEnabled$1;)V

    invoke-virtual {v1, v2}, Lscala/collection/immutable/Stream$;->consWrapper(Lscala/Function0;)Lscala/collection/immutable/Stream$ConsWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lscala/collection/immutable/Stream$ConsWrapper;->$hash$colon$colon$colon(Lscala/collection/immutable/Stream;)Lscala/collection/immutable/Stream;

    move-result-object v0

    return-object v0
.end method
