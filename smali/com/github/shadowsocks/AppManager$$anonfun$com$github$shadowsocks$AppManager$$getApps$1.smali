.class public final Lcom/github/shadowsocks/AppManager$$anonfun$com$github$shadowsocks$AppManager$$getApps$1;
.super Lscala/runtime/AbstractFunction1;
.source "AppManager.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/AppManager$;->com$github$shadowsocks$AppManager$$getApps(Landroid/content/pm/PackageManager;)[Lcom/github/shadowsocks/AppManager$ProxiedApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Landroid/content/pm/PackageInfo;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 86
    check-cast p1, Landroid/content/pm/PackageInfo;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/AppManager$$anonfun$com$github$shadowsocks$AppManager$$getApps$1;->apply(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "p"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 86
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
