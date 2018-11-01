.class public final Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;
.super Lscala/runtime/AbstractFunction0$mcZ$sp;
.source "AppManager.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/AppManager;->loadAppsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/AppManager;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/AppManager;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/AppManager;

    .prologue
    .line 264
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcZ$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->apply()Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply()Z
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->apply$mcZ$sp()Z

    move-result v0

    return v0
.end method

.method public apply$mcZ$sp()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 265
    const/4 v1, 0x0

    invoke-static {v1}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 267
    .local v0, "adapter":Lscala/runtime/ObjectRef;
    :cond_0
    iget-object v1, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appsLoading()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 268
    new-instance v1, Lcom/github/shadowsocks/AppManager$AppsAdapter;

    iget-object v2, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-direct {v1, v2}, Lcom/github/shadowsocks/AppManager$AppsAdapter;-><init>(Lcom/github/shadowsocks/AppManager;)V

    iput-object v1, v0, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appsLoading()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$handler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1$$anonfun$6;

    invoke-direct {v2, p0, v0}, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1$$anonfun$6;-><init>(Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;Lscala/runtime/ObjectRef;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    return v1
.end method

.method public final com$github$shadowsocks$AppManager$$anonfun$$run$body$1(Lscala/runtime/ObjectRef;)V
    .locals 4
    .param p1, "adapter$1"    # Lscala/runtime/ObjectRef;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v0, p1, Lscala/runtime/ObjectRef;->elem:Ljava/lang/Object;

    check-cast v0, Lcom/github/shadowsocks/AppManager$AppsAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 272
    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    iget-object v1, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->$outer:Lcom/github/shadowsocks/AppManager;

    iget-object v2, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v2}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$loadingView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v3}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/shadowsocks/utils/Utils$;->crossFade(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
