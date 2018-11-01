.class public abstract Lnet/vrallev/android/cat/CatLog;
.super Ljava/lang/Object;
.source "CatLog.java"


# instance fields
.field private final mPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/vrallev/android/cat/print/CatPrinter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/vrallev/android/cat/CatLog;->mPrinters:Ljava/util/List;

    .line 23
    iget-object v0, p0, Lnet/vrallev/android/cat/CatLog;->mPrinters:Ljava/util/List;

    new-instance v1, Lnet/vrallev/android/cat/print/AndroidLog;

    invoke-direct {v1}, Lnet/vrallev/android/cat/print/AndroidLog;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method private static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 119
    if-nez p0, :cond_0

    .line 120
    const-string v0, "null"

    .line 122
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 41
    const/4 v0, 0x3

    invoke-static {p1, p2}, Lnet/vrallev/android/cat/CatLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lnet/vrallev/android/cat/CatLog;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/vrallev/android/cat/CatLog;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 91
    const/4 v0, 0x6

    invoke-static {p1, p2}, Lnet/vrallev/android/cat/CatLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lnet/vrallev/android/cat/CatLog;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance p1, Ljava/lang/Exception;

    .end local p1    # "t":Ljava/lang/Throwable;
    const-string v0, "null exception logged"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lnet/vrallev/android/cat/CatLog;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 95
    const/4 v0, 0x6

    invoke-static {p2, p3}, Lnet/vrallev/android/cat/CatLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lnet/vrallev/android/cat/CatLog;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method

.method protected declared-synchronized getPrinters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lnet/vrallev/android/cat/print/CatPrinter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/vrallev/android/cat/CatLog;->mPrinters:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public i(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/vrallev/android/cat/CatLog;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 53
    const/4 v0, 0x4

    invoke-static {p1, p2}, Lnet/vrallev/android/cat/CatLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lnet/vrallev/android/cat/CatLog;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method protected println(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 111
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string p2, "empty message"

    .line 115
    :cond_0
    invoke-virtual {p0}, Lnet/vrallev/android/cat/CatLog;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/vrallev/android/cat/CatLog;->getPrinters()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v0, p2, p3, v1}, Lnet/vrallev/android/cat/CatGlobal;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/List;)V

    .line 116
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lnet/vrallev/android/cat/CatLog;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 65
    const/4 v0, 0x5

    invoke-static {p1, p2}, Lnet/vrallev/android/cat/CatLog;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lnet/vrallev/android/cat/CatLog;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public w(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance p1, Ljava/lang/Exception;

    .end local p1    # "t":Ljava/lang/Throwable;
    const-string v0, "null exception logged"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 76
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lnet/vrallev/android/cat/CatLog;->println(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    return-void
.end method
