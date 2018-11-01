.class public final Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$crashRecovery$1;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksApplication.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksApplication;->crashRecovery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/lang/String;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksApplication;

.field private final cmd$1:Lscala/collection/mutable/ArrayBuffer;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksApplication;Lscala/collection/mutable/ArrayBuffer;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksApplication;
    .param p2, "cmd$1"    # Lscala/collection/mutable/ArrayBuffer;

    .prologue
    .line 225
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$crashRecovery$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$crashRecovery$1;->cmd$1:Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 225
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$crashRecovery$1;->apply(Ljava/lang/String;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/lang/String;)V
    .locals 10
    .param p1, "task"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 226
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$crashRecovery$1;->cmd$1:Lscala/collection/mutable/ArrayBuffer;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v0, v9, [Ljava/lang/String;

    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v5, "killall %s"

    invoke-virtual {v4, v5}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v6, v9, [Ljava/lang/Object;

    aput-object p1, v6, v8

    invoke-virtual {v5, v6}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 227
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$crashRecovery$1;->cmd$1:Lscala/collection/mutable/ArrayBuffer;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v0, v9, [Ljava/lang/String;

    new-instance v3, Lscala/collection/immutable/StringOps;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v5, "rm -f %1$s/%2$s-nat.conf %1$s/%2$s-vpn.conf"

    invoke-virtual {v4, v5}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    .line 228
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$crashRecovery$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    invoke-virtual {v7}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object p1, v6, v9

    invoke-virtual {v5, v6}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    check-cast v0, [Ljava/lang/Object;

    .line 227
    invoke-virtual {v2, v0}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    return-void
.end method
