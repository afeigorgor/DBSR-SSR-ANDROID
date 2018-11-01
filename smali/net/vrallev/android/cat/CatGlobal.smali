.class public final Lnet/vrallev/android/cat/CatGlobal;
.super Ljava/lang/Object;
.source "CatGlobal.java"


# static fields
.field private static final DISABLED_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISABLED_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_CAT_LOGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lnet/vrallev/android/cat/CatLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_CAT_LOG_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultCatLog:Lnet/vrallev/android/cat/CatLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lnet/vrallev/android/cat/CatGlobal;->DISABLED_TAGS:Ljava/util/Set;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/vrallev/android/cat/CatGlobal;->DISABLED_PACKAGES:Ljava/util/List;

    .line 28
    new-instance v0, Lnet/vrallev/android/cat/instance/CatLazy;

    invoke-direct {v0}, Lnet/vrallev/android/cat/instance/CatLazy;-><init>()V

    sput-object v0, Lnet/vrallev/android/cat/CatGlobal;->defaultCatLog:Lnet/vrallev/android/cat/CatLog;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/vrallev/android/cat/CatGlobal;->PACKAGE_CAT_LOGS:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/vrallev/android/cat/CatGlobal;->PACKAGE_CAT_LOG_KEYS:Ljava/util/List;

    return-void
.end method

.method static declared-synchronized getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;
    .locals 5

    .prologue
    .line 82
    const-class v4, Lnet/vrallev/android/cat/CatGlobal;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lnet/vrallev/android/cat/CatGlobal;->PACKAGE_CAT_LOG_KEYS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    invoke-static {}, Lnet/vrallev/android/cat/CatUtil;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "callingPackage":Ljava/lang/String;
    sget-object v3, Lnet/vrallev/android/cat/CatGlobal;->PACKAGE_CAT_LOG_KEYS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 85
    sget-object v3, Lnet/vrallev/android/cat/CatGlobal;->PACKAGE_CAT_LOG_KEYS:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, "catLogPackage":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    sget-object v3, Lnet/vrallev/android/cat/CatGlobal;->PACKAGE_CAT_LOGS:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/vrallev/android/cat/CatLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v1    # "catLogPackage":Ljava/lang/String;
    :goto_1
    monitor-exit v4

    return-object v3

    .line 84
    .restart local v1    # "catLogPackage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 92
    .end local v1    # "catLogPackage":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v3, Lnet/vrallev/android/cat/CatGlobal;->defaultCatLog:Lnet/vrallev/android/cat/CatLog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 82
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static isCallingClassDisabled()Z
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Lnet/vrallev/android/cat/CatUtil;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lnet/vrallev/android/cat/CatGlobal;->DISABLED_PACKAGES:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 68
    sget-object v3, Lnet/vrallev/android/cat/CatGlobal;->DISABLED_PACKAGES:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "disabledPackage":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    const/4 v3, 0x1

    .line 74
    .end local v0    # "disabledPackage":Ljava/lang/String;
    :goto_1
    return v3

    .line 67
    .restart local v0    # "disabledPackage":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "disabledPackage":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method static declared-synchronized print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/List;)V
    .locals 3
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/util/List",
            "<+",
            "Lnet/vrallev/android/cat/print/CatPrinter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p4, "printers":Ljava/util/List;, "Ljava/util/List<+Lnet/vrallev/android/cat/print/CatPrinter;>;"
    const-class v2, Lnet/vrallev/android/cat/CatGlobal;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lnet/vrallev/android/cat/CatGlobal;->DISABLED_TAGS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lnet/vrallev/android/cat/CatGlobal;->DISABLED_TAGS:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    monitor-exit v2

    return-void

    .line 37
    :cond_1
    :try_start_1
    sget-object v1, Lnet/vrallev/android/cat/CatGlobal;->DISABLED_PACKAGES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->isCallingClassDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    :cond_2
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 43
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/vrallev/android/cat/print/CatPrinter;

    invoke-interface {v1, p0, p1, p2, p3}, Lnet/vrallev/android/cat/print/CatPrinter;->println(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized setDefaultCatLogPackage(Ljava/lang/String;Lnet/vrallev/android/cat/CatLog;)V
    .locals 2
    .param p0, "catLogPackage"    # Ljava/lang/String;
    .param p1, "catLog"    # Lnet/vrallev/android/cat/CatLog;

    .prologue
    .line 96
    const-class v1, Lnet/vrallev/android/cat/CatGlobal;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnet/vrallev/android/cat/CatGlobal;->PACKAGE_CAT_LOGS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lnet/vrallev/android/cat/CatGlobal;->PACKAGE_CAT_LOG_KEYS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit v1

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
