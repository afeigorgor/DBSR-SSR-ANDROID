.class public final Lcom/github/shadowsocks/AppManager$AppsAdapter$$anonfun$1;
.super Lscala/runtime/AbstractFunction2;
.source "AppManager.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/AppManager$AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2",
        "<",
        "Lcom/github/shadowsocks/AppManager$ProxiedApp;",
        "Lcom/github/shadowsocks/AppManager$ProxiedApp;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/AppManager$AppsAdapter;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/AppManager$AppsAdapter;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/AppManager$AppsAdapter;

    .prologue
    .line 128
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$AppsAdapter$$anonfun$1;->$outer:Lcom/github/shadowsocks/AppManager$AppsAdapter;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;
    .param p2, "v2"    # Ljava/lang/Object;

    .prologue
    .line 128
    check-cast p1, Lcom/github/shadowsocks/AppManager$ProxiedApp;

    .end local p1    # "v1":Ljava/lang/Object;
    check-cast p2, Lcom/github/shadowsocks/AppManager$ProxiedApp;

    .end local p2    # "v2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/AppManager$AppsAdapter$$anonfun$1;->apply(Lcom/github/shadowsocks/AppManager$ProxiedApp;Lcom/github/shadowsocks/AppManager$ProxiedApp;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Lcom/github/shadowsocks/AppManager$ProxiedApp;Lcom/github/shadowsocks/AppManager$ProxiedApp;)Z
    .locals 3
    .param p1, "a"    # Lcom/github/shadowsocks/AppManager$ProxiedApp;
    .param p2, "b"    # Lcom/github/shadowsocks/AppManager$ProxiedApp;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/github/shadowsocks/AppManager$AppsAdapter$$anonfun$1;->$outer:Lcom/github/shadowsocks/AppManager$AppsAdapter;

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager$AppsAdapter;->com$github$shadowsocks$AppManager$AppsAdapter$$$outer()Lcom/github/shadowsocks/AppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$proxiedApps()Lscala/collection/mutable/HashSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->packageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 130
    .local v0, "aProxied":Z
    iget-object v1, p0, Lcom/github/shadowsocks/AppManager$AppsAdapter$$anonfun$1;->$outer:Lcom/github/shadowsocks/AppManager$AppsAdapter;

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager$AppsAdapter;->com$github$shadowsocks$AppManager$AppsAdapter$$$outer()Lcom/github/shadowsocks/AppManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$proxiedApps()Lscala/collection/mutable/HashSet;

    move-result-object v1

    invoke-virtual {p2}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->packageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 128
    .end local v0    # "aProxied":Z
    :goto_0
    return v0

    .line 130
    .restart local v0    # "aProxied":Z
    :cond_0
    invoke-virtual {p1}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
