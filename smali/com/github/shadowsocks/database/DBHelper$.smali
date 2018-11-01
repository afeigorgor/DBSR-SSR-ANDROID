.class public final Lcom/github/shadowsocks/database/DBHelper$;
.super Ljava/lang/Object;
.source "DBHelper.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/database/DBHelper$;


# instance fields
.field private apps:Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/Buffer",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/database/DBHelper$;

    invoke-direct {v0}, Lcom/github/shadowsocks/database/DBHelper$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/database/DBHelper$;->MODULE$:Lcom/github/shadowsocks/database/DBHelper$;

    return-void
.end method

.method private apps()Lscala/collection/mutable/Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Buffer",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/shadowsocks/database/DBHelper$;->apps:Lscala/collection/mutable/Buffer;

    return-object v0
.end method

.method private apps_$eq(Lscala/collection/mutable/Buffer;)V
    .locals 0
    .param p1, "x$1"    # Lscala/collection/mutable/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/Buffer",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/github/shadowsocks/database/DBHelper$;->apps:Lscala/collection/mutable/Buffer;

    return-void
.end method


# virtual methods
.method public isAllDigits(Ljava/lang/String;)Z
    .locals 2
    .param p1, "x"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1, p1}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/github/shadowsocks/database/DBHelper$$anonfun$isAllDigits$1;

    invoke-direct {v1}, Lcom/github/shadowsocks/database/DBHelper$$anonfun$isAllDigits$1;-><init>()V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/StringOps;->forall(Lscala/Function1;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateProxiedApps(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "old"    # Ljava/lang/String;

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/github/shadowsocks/database/DBHelper$;->apps()Lscala/collection/mutable/Buffer;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/JavaConverters$;->asScalaBufferConverter(Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/convert/Decorators$AsScala;->asScala()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/mutable/Buffer;

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/database/DBHelper$;->apps_$eq(Lscala/collection/mutable/Buffer;)V

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v5, p2}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x7c

    invoke-virtual {v1, v5}, Lscala/collection/immutable/StringOps;->split(C)[Ljava/lang/String;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v4, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    new-instance v4, Lcom/github/shadowsocks/database/DBHelper$$anonfun$1;

    invoke-direct {v4}, Lcom/github/shadowsocks/database/DBHelper$$anonfun$1;-><init>()V

    invoke-interface {v1, v4}, Lscala/collection/mutable/ArrayOps;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    new-instance v3, Lcom/github/shadowsocks/database/DBHelper$$anonfun$2;

    invoke-direct {v3}, Lcom/github/shadowsocks/database/DBHelper$$anonfun$2;-><init>()V

    sget-object v4, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v5, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v5}, Lscala/reflect/ClassTag$;->Int()Lscala/reflect/ClassTag;

    move-result-object v5

    invoke-virtual {v4, v5}, Lscala/Array$;->canBuildFrom(Lscala/reflect/ClassTag;)Lscala/collection/generic/CanBuildFrom;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lscala/collection/mutable/ArrayOps;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-virtual {v2, v1}, Lscala/Predef$;->intArrayOps([I)Lscala/collection/mutable/ArrayOps;

    move-result-object v1

    invoke-interface {v1}, Lscala/collection/mutable/ArrayOps;->toSet()Lscala/collection/immutable/Set;

    move-result-object v0

    .line 63
    .local v0, "uidSet":Lscala/collection/immutable/Set;
    invoke-direct {p0}, Lcom/github/shadowsocks/database/DBHelper$;->apps()Lscala/collection/mutable/Buffer;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/database/DBHelper$$anonfun$updateProxiedApps$1;

    invoke-direct {v2, v0}, Lcom/github/shadowsocks/database/DBHelper$$anonfun$updateProxiedApps$1;-><init>(Lscala/collection/immutable/Set;)V

    invoke-interface {v1, v2}, Lscala/collection/mutable/Buffer;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/TraversableLike;

    new-instance v2, Lcom/github/shadowsocks/database/DBHelper$$anonfun$updateProxiedApps$2;

    invoke-direct {v2}, Lcom/github/shadowsocks/database/DBHelper$$anonfun$updateProxiedApps$2;-><init>()V

    sget-object v3, Lscala/collection/mutable/Buffer$;->MODULE$:Lscala/collection/mutable/Buffer$;

    invoke-virtual {v3}, Lscala/collection/mutable/Buffer$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lscala/collection/TraversableLike;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscala/collection/TraversableOnce;

    const-string v2, "\n"

    invoke-interface {v1, v2}, Lscala/collection/TraversableOnce;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 61
    .end local v0    # "uidSet":Lscala/collection/immutable/Set;
    :cond_0
    :try_start_1
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
