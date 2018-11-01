.class public final Lcom/github/shadowsocks/Typefaces$;
.super Ljava/lang/Object;
.source "Shadowsocks.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/Typefaces$;


# instance fields
.field private final cache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/Typefaces$;

    invoke-direct {v0}, Lcom/github/shadowsocks/Typefaces$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/Typefaces$;->MODULE$:Lcom/github/shadowsocks/Typefaces$;

    .line 87
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/Typefaces$;->cache:Ljava/util/Hashtable;

    return-void
.end method

.method private final cache()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/github/shadowsocks/Typefaces$;->cache:Ljava/util/Hashtable;

    return-object v0
.end method

.method private final liftedTree1$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "c$1"    # Landroid/content/Context;
    .param p2, "assetPath$1"    # Ljava/lang/String;
    .param p3, "nonLocalReturnKey1$1"    # Ljava/lang/Object;

    .prologue
    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/github/shadowsocks/Typefaces$;->cache()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "Typefaces"

    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v3, "Could not get typeface \'"

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    const-string v3, "\' because "

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V

    .line 79
    new-instance v0, Lscala/runtime/NonLocalReturnControl;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lscala/runtime/NonLocalReturnControl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "assetPath"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 71
    :try_start_0
    invoke-direct {p0}, Lcom/github/shadowsocks/Typefaces$;->cache()Ljava/util/Hashtable;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :try_start_1
    invoke-direct {p0}, Lcom/github/shadowsocks/Typefaces$;->cache()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 82
    :goto_0
    invoke-direct {p0}, Lcom/github/shadowsocks/Typefaces$;->cache()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    monitor-exit v2

    :goto_1
    return-object v0

    .line 73
    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/github/shadowsocks/Typefaces$;->liftedTree1$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Landroid/graphics/Typeface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_1

    invoke-virtual {v0}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    goto :goto_1

    :cond_1
    throw v0
.end method
