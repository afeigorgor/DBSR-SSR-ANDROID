.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$1;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->setProfile(Lcom/github/shadowsocks/database/Profile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<[",
        "Ljava/lang/String;",
        "Lscala/collection/mutable/WrappedArray",
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
    .line 495
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 495
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$setProfile$1;->apply([Ljava/lang/String;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method

.method public final apply([Ljava/lang/String;)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .param p1, "xs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lscala/collection/mutable/WrappedArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    sget-object v0, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "xs":[Ljava/lang/String;
    invoke-virtual {v0, p1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    return-object v0
.end method
