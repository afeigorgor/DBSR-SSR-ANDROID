.class public final Lcom/github/shadowsocks/utils/CloseUtils$;
.super Ljava/lang/Object;
.source "CloseUtils.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/CloseUtils$;

.field private static reflParams$Cache1:[Ljava/lang/Class;

.field private static volatile reflPoly$Cache1:Ljava/lang/ref/SoftReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/github/shadowsocks/utils/CloseUtils$;->reflParams$Cache1:[Ljava/lang/Class;

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Lscala/runtime/EmptyMethodCache;

    invoke-direct {v1}, Lscala/runtime/EmptyMethodCache;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/github/shadowsocks/utils/CloseUtils$;->reflPoly$Cache1:Ljava/lang/ref/SoftReference;

    new-instance v0, Lcom/github/shadowsocks/utils/CloseUtils$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/CloseUtils$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/CloseUtils$;->MODULE$:Lcom/github/shadowsocks/utils/CloseUtils$;

    return-void
.end method

.method public static reflMethod$Method1(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p0, "x$1"    # Ljava/lang/Class;

    .prologue
    .line 30
    sget-object v3, Lcom/github/shadowsocks/utils/CloseUtils$;->reflPoly$Cache1:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/runtime/MethodCache;

    .local v2, "methodCache1":Lscala/runtime/MethodCache;
    if-nez v2, :cond_0

    new-instance v2, Lscala/runtime/EmptyMethodCache;

    .end local v2    # "methodCache1":Lscala/runtime/MethodCache;
    invoke-direct {v2}, Lscala/runtime/EmptyMethodCache;-><init>()V

    .restart local v2    # "methodCache1":Lscala/runtime/MethodCache;
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/github/shadowsocks/utils/CloseUtils$;->reflPoly$Cache1:Ljava/lang/ref/SoftReference;

    :cond_0
    invoke-virtual {v2, p0}, Lscala/runtime/MethodCache;->find(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .local v0, "method1":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_1

    move-object v1, v0

    .end local v0    # "method1":Ljava/lang/reflect/Method;
    .local v1, "method1":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .end local v1    # "method1":Ljava/lang/reflect/Method;
    .restart local v0    # "method1":Ljava/lang/reflect/Method;
    :cond_1
    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    const-string v4, "disconnect"

    sget-object v5, Lcom/github/shadowsocks/utils/CloseUtils$;->reflParams$Cache1:[Ljava/lang/Class;

    invoke-virtual {p0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/runtime/ScalaRunTime$;->ensureAccessible(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2, p0, v0}, Lscala/runtime/MethodCache;->add(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lscala/runtime/MethodCache;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/github/shadowsocks/utils/CloseUtils$;->reflPoly$Cache1:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    .end local v0    # "method1":Ljava/lang/reflect/Method;
    .restart local v1    # "method1":Ljava/lang/reflect/Method;
    goto :goto_0
.end method


# virtual methods
.method public autoClose(Lscala/Function0;Lscala/Function1;)Ljava/lang/Object;
    .locals 5
    .param p1, "x"    # Lscala/Function0;
    .param p2, "block"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/AutoCloseable;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0",
            "<TA;>;",
            "Lscala/Function1",
            "<TA;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    .line 14
    .local v0, "a":Lscala/Option;
    :try_start_0
    new-instance v1, Lscala/Some;

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3}, Lscala/Some;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .end local v0    # "a":Lscala/Option;
    .local v1, "a":Lscala/Option;
    :try_start_1
    invoke-virtual {v1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 16
    invoke-virtual {v1}, Lscala/Option;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    :try_start_2
    invoke-virtual {v1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    .line 18
    .local v2, "v":Ljava/lang/AutoCloseable;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 20
    .end local v2    # "v":Ljava/lang/AutoCloseable;
    :cond_0
    :goto_0
    return-object v3

    .line 16
    .end local v1    # "a":Lscala/Option;
    .restart local v0    # "a":Lscala/Option;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-virtual {v0}, Lscala/Option;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 17
    :try_start_3
    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/AutoCloseable;

    .line 18
    .restart local v2    # "v":Ljava/lang/AutoCloseable;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 20
    .end local v2    # "v":Ljava/lang/AutoCloseable;
    :cond_1
    :goto_2
    throw v3

    .end local v0    # "a":Lscala/Option;
    .restart local v1    # "a":Lscala/Option;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v1    # "a":Lscala/Option;
    .restart local v0    # "a":Lscala/Option;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 16
    .end local v0    # "a":Lscala/Option;
    .restart local v1    # "a":Lscala/Option;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "a":Lscala/Option;
    .restart local v0    # "a":Lscala/Option;
    goto :goto_1
.end method

.method public autoDisconnect(Lscala/Function0;Lscala/Function1;)Ljava/lang/Object;
    .locals 7
    .param p1, "x"    # Lscala/Function0;
    .param p2, "block"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0",
            "<TA;>;",
            "Lscala/Function1",
            "<TA;TB;>;)TB;"
        }
    .end annotation

    .prologue
    .line 24
    sget-object v0, Lscala/None$;->MODULE$:Lscala/None$;

    .line 26
    .local v0, "a":Lscala/Option;
    :try_start_0
    new-instance v1, Lscala/Some;

    invoke-interface {p1}, Lscala/Function0;->apply()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v1, v4}, Lscala/Some;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .end local v0    # "a":Lscala/Option;
    .local v1, "a":Lscala/Option;
    :try_start_1
    invoke-virtual {v1}, Lscala/Option;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 28
    invoke-virtual {v1}, Lscala/Option;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    :try_start_2
    invoke-virtual {v1}, Lscala/Option;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v3

    .line 30
    .local v3, "v":Ljava/lang/Object;
    if-eqz v3, :cond_0

    move-object v2, v3

    .local v2, "qual1":Ljava/lang/Object;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/github/shadowsocks/utils/CloseUtils$;->reflMethod$Method1(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 32
    .end local v2    # "qual1":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v5

    .line 28
    .end local v1    # "a":Lscala/Option;
    .restart local v0    # "a":Lscala/Option;
    :catchall_0
    move-exception v4

    :goto_1
    invoke-virtual {v0}, Lscala/Option;->nonEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 29
    :try_start_5
    invoke-virtual {v0}, Lscala/Option;->get()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v3

    .line 30
    .restart local v3    # "v":Ljava/lang/Object;
    if-eqz v3, :cond_1

    move-object v2, v3

    .restart local v2    # "qual1":Ljava/lang/Object;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/github/shadowsocks/utils/CloseUtils$;->reflMethod$Method1(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    sget-object v5, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 32
    .end local v2    # "qual1":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_1
    :goto_2
    throw v4

    .line 30
    .restart local v2    # "qual1":Ljava/lang/Object;
    .restart local v3    # "v":Ljava/lang/Object;
    :catch_0
    move-exception v5

    :try_start_8
    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    throw v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 32
    .end local v2    # "qual1":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :catch_1
    move-exception v5

    goto :goto_2

    .line 30
    .end local v0    # "a":Lscala/Option;
    .restart local v1    # "a":Lscala/Option;
    .restart local v2    # "qual1":Ljava/lang/Object;
    .restart local v3    # "v":Ljava/lang/Object;
    :catch_2
    move-exception v4

    :try_start_9
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 32
    .end local v2    # "qual1":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :catch_3
    move-exception v4

    goto :goto_0

    .line 28
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "a":Lscala/Option;
    .restart local v0    # "a":Lscala/Option;
    goto :goto_1
.end method
