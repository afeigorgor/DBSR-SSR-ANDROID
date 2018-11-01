.class public final Lcom/github/shadowsocks/database/DBHelper$$anonfun$updateProxiedApps$1;
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
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final uidSet$1:Lscala/collection/immutable/Set;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/Set;)V
    .locals 0
    .param p1, "uidSet$1"    # Lscala/collection/immutable/Set;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/github/shadowsocks/database/DBHelper$$anonfun$updateProxiedApps$1;->uidSet$1:Lscala/collection/immutable/Set;

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
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/database/DBHelper$$anonfun$updateProxiedApps$1;->apply(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/github/shadowsocks/database/DBHelper$$anonfun$updateProxiedApps$1;->uidSet$1:Lscala/collection/immutable/Set;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/immutable/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
