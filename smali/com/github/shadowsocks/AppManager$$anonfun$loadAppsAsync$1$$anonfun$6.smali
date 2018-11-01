.class public final Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1$$anonfun$6;
.super Ljava/lang/Object;
.source "AppManager.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;

.field private final adapter$1:Lscala/runtime/ObjectRef;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;Lscala/runtime/ObjectRef;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;
    .param p2, "adapter$1"    # Lscala/runtime/ObjectRef;

    .prologue
    .line 270
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1$$anonfun$6;->$outer:Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;

    iput-object p2, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1$$anonfun$6;->adapter$1:Lscala/runtime/ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1$$anonfun$6;->$outer:Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;

    iget-object v1, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1$$anonfun$6;->adapter$1:Lscala/runtime/ObjectRef;

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->com$github$shadowsocks$AppManager$$anonfun$$run$body$1(Lscala/runtime/ObjectRef;)V

    return-void
.end method
