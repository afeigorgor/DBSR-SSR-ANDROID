.class public final Lcom/github/shadowsocks/BaseService$$anonfun$2;
.super Ljava/lang/Object;
.source "BaseService.scala"

# interfaces
.implements Lokhttp3/Dns;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/BaseService;->connect()V
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
    .line 150
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/BaseService$$anonfun$2;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anonfun$2;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-static {v0, p1}, Lcom/github/shadowsocks/BaseService$class;->lookup$body$1(Lcom/github/shadowsocks/BaseService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
