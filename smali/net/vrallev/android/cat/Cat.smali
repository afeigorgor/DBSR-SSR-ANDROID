.class public final Lnet/vrallev/android/cat/Cat;
.super Ljava/lang/Object;
.source "Cat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/vrallev/android/cat/CatLog;->e(Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/vrallev/android/cat/CatLog;->i(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 30
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lnet/vrallev/android/cat/CatLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    invoke-static {}, Lnet/vrallev/android/cat/CatGlobal;->getDefaultCatLog()Lnet/vrallev/android/cat/CatLog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/vrallev/android/cat/CatLog;->w(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method
