.class public final Lcom/github/shadowsocks/AppManager$$anonfun$com$github$shadowsocks$AppManager$$getApps$2;
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
        "Lcom/github/shadowsocks/AppManager$ProxiedApp;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final pm$1:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "pm$1"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$$anonfun$com$github$shadowsocks$AppManager$$getApps$2;->pm$1:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/content/pm/PackageInfo;)Lcom/github/shadowsocks/AppManager$ProxiedApp;
    .locals 5
    .param p1, "p"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 87
    new-instance v0, Lcom/github/shadowsocks/AppManager$ProxiedApp;

    iget-object v1, p0, Lcom/github/shadowsocks/AppManager$$anonfun$com$github$shadowsocks$AppManager$$getApps$2;->pm$1:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 88
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/github/shadowsocks/AppManager$$anonfun$com$github$shadowsocks$AppManager$$getApps$2;->pm$1:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 87
    invoke-direct {v0, v1, v2, v3}, Lcom/github/shadowsocks/AppManager$ProxiedApp;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 87
    check-cast p1, Landroid/content/pm/PackageInfo;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/AppManager$$anonfun$com$github$shadowsocks$AppManager$$getApps$2;->apply(Landroid/content/pm/PackageInfo;)Lcom/github/shadowsocks/AppManager$ProxiedApp;

    move-result-object v0

    return-object v0
.end method
