.class public final Lcom/github/shadowsocks/BaseService$$anonfun$3;
.super Ljava/lang/Object;
.source "BaseService.scala"

# interfaces
.implements Ljava/lang/Runnable;
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
    .line 199
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/BaseService$$anonfun$3;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/github/shadowsocks/BaseService$$anonfun$3;->$outer:Lcom/github/shadowsocks/BaseService;

    invoke-static {v0}, Lcom/github/shadowsocks/BaseService$class;->run$body$1(Lcom/github/shadowsocks/BaseService;)V

    return-void
.end method
