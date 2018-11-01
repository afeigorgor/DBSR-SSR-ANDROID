.class final Lnet/vrallev/android/cat/CatUtil$1;
.super Landroid/util/LruCache;
.source "CatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/vrallev/android/cat/CatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method

.method private hasInvalidInterfaces(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 48
    if-nez p1, :cond_1

    .line 63
    :cond_0
    :goto_0
    return v2

    .line 52
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 53
    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    array-length v3, v1

    if-eqz v3, :cond_0

    .line 57
    array-length v4, v1

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 58
    .local v0, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/vrallev/android/cat/CatUtil;->isValidClass(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 59
    const/4 v2, 0x1

    goto :goto_0

    .line 57
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected create(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 26
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 28
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lnet/vrallev/android/cat/CatUtil$1;->hasInvalidInterfaces(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 43
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 32
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 33
    .local v2, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/vrallev/android/cat/CatUtil;->isValidClass(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lnet/vrallev/android/cat/CatUtil$1;->hasInvalidInterfaces(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    :cond_1
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 37
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 40
    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 42
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/vrallev/android/cat/CatUtil$1;->create(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
