.class public final Lcom/github/shadowsocks/database/DBHelper$$anonfun$updateProxiedApps$2;
.super Lscala/runtime/AbstractFunction1;
.source "DBHelper.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/database/DBHelper$;->updateProxiedApps(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        "Ljava/lang/String;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 63
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/database/DBHelper$$anonfun$updateProxiedApps$2;->apply(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "x$2"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 63
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method
