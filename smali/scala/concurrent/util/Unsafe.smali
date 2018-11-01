.class public final Lscala/concurrent/util/Unsafe;
.super Ljava/lang/Object;
.source "Unsafe.java"


# static fields
.field public static final instance:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 21
    const/4 v3, 0x0

    .line 22
    .local v3, "found":Lsun/misc/Unsafe;
    :try_start_0
    const-class v7, Lsun/misc/Unsafe;

    invoke-virtual {v7}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 23
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lsun/misc/Unsafe;

    if-ne v7, v8, :cond_1

    .line 24
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lsun/misc/Unsafe;

    move-object v3, v0

    .line 29
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    if-nez v3, :cond_2

    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Can\'t find instance of sun.misc.Unsafe"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v1    # "arr$":[Ljava/lang/reflect/Field;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_0
    move-exception v6

    .line 32
    .local v6, "t":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v7, v6}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 22
    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v1    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_2
    :try_start_1
    sput-object v3, Lscala/concurrent/util/Unsafe;->instance:Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 34
    return-void
.end method
