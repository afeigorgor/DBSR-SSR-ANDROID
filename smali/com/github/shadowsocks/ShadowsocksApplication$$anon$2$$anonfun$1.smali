.class public final Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2$$anonfun$1;
.super Ljava/lang/Object;
.source "ShadowsocksApplication.scala"

# interfaces
.implements Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;->onResult(Lcom/google/android/gms/tagmanager/ContainerHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;

    .prologue
    .line 183
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2$$anonfun$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2$$anonfun$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;

    invoke-virtual {v0, p1, p2}, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$2;->com$github$shadowsocks$ShadowsocksApplication$$anon$$getValue$body$1(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
