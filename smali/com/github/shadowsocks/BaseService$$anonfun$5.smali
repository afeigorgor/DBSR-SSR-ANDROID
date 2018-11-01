.class public final Lcom/github/shadowsocks/BaseService$$anonfun$5;
.super Ljava/lang/Object;
.source "BaseService.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/BaseService;->changeState(ILjava/lang/String;)V
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
    .line 287
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/BaseService$$anonfun$5;->$outer:Lcom/github/shadowsocks/BaseService;

    iput p2, p0, Lcom/github/shadowsocks/BaseService$$anonfun$5;->s$1:I

    iput-object p3, p0, Lcom/github/shadowsocks/BaseService$$anonfun$5;->msg$1:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anonfun$5;->$outer:Lcom/github/shadowsocks/BaseService;

    iget v1, p0, Lcom/github/shadowsocks/BaseService$$anonfun$5;->s$1:I

    iget-object v2, p0, Lcom/github/shadowsocks/BaseService$$anonfun$5;->msg$1:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/github/shadowsocks/BaseService$class;->run$body$3(Lcom/github/shadowsocks/BaseService;ILjava/lang/String;)V

    return-void
.end method
