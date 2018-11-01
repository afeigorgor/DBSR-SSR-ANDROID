.class public final Lcom/github/shadowsocks/utils/Utils$;
.super Ljava/lang/Object;
.source "Utils.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/Utils$;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile bitmap$0:Z

.field private final handleFailure:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Lscala/util/Try",
            "<*>;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field private isNumericMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/Utils$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/Utils$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    .line 67
    const-string v0, "Shadowsocks"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Utils$;->TAG:Ljava/lang/String;

    .line 258
    new-instance v0, Lcom/github/shadowsocks/utils/Utils$$anonfun$1;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/Utils$$anonfun$1;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Utils$;->handleFailure:Lscala/Function1;

    return-void
.end method

.method private TAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Utils$;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleFailure()Lscala/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/Function1",
            "<",
            "Lscala/util/Try",
            "<*>;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Utils$;->handleFailure:Lscala/Function1;

    return-object v0
.end method

.method private isNumericMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/github/shadowsocks/utils/Utils$;->bitmap$0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/utils/Utils$;->isNumericMethod:Ljava/lang/reflect/Method;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/utils/Utils$;->isNumericMethod$lzycompute()Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0
.end method

.method private isNumericMethod$lzycompute()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/github/shadowsocks/utils/Utils$;->bitmap$0:Z

    if-nez v0, :cond_0

    const-class v0, Ljava/net/InetAddress;

    const-string v1, "isNumeric"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Utils$;->isNumericMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/shadowsocks/utils/Utils$;->bitmap$0:Z

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/utils/Utils$;->isNumericMethod:Ljava/lang/reflect/Method;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final shortAnimTime$1(Landroid/content/Context;)I
    .locals 2
    .param p1, "context$1"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public ThrowableFuture(Lscala/Function0;)V
    .locals 3
    .param p1, "f"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function0",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 265
    sget-object v0, Lscala/concurrent/Future$;->MODULE$:Lscala/concurrent/Future$;

    sget-object v1, Lscala/concurrent/ExecutionContext$Implicits$;->MODULE$:Lscala/concurrent/ExecutionContext$Implicits$;

    invoke-virtual {v1}, Lscala/concurrent/ExecutionContext$Implicits$;->global()Lscala/concurrent/ExecutionContextExecutor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lscala/concurrent/Future$;->apply(Lscala/Function0;Lscala/concurrent/ExecutionContext;)Lscala/concurrent/Future;

    move-result-object v0

    invoke-direct {p0}, Lcom/github/shadowsocks/utils/Utils$;->handleFailure()Lscala/Function1;

    move-result-object v1

    sget-object v2, Lscala/concurrent/ExecutionContext$Implicits$;->MODULE$:Lscala/concurrent/ExecutionContext$Implicits$;

    invoke-virtual {v2}, Lscala/concurrent/ExecutionContext$Implicits$;->global()Lscala/concurrent/ExecutionContextExecutor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lscala/concurrent/Future;->onComplete(Lscala/Function1;Lscala/concurrent/ExecutionContext;)V

    return-void
.end method

.method public crossFade(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "from"    # Landroid/view/View;
    .param p3, "to"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 107
    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 108
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/github/shadowsocks/utils/Utils$;->shortAnimTime$1(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/github/shadowsocks/utils/Utils$;->shortAnimTime$1(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/utils/Utils$$anon$1;

    invoke-direct {v1, p2}, Lcom/github/shadowsocks/utils/Utils$$anon$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public dpToPx(Landroid/content/Context;I)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # I

    .prologue
    .line 81
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    const/16 v2, 0xa0

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 75
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 76
    .local v1, "mdg":Ljava/security/MessageDigest;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 77
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3, v5}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public isIPv6Support()Z
    .locals 4

    .prologue
    .line 232
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 234
    :try_start_0
    sget-object v0, Lscala/collection/JavaConversions$;->MODULE$:Lscala/collection/JavaConversions$;

    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/JavaConversions$;->enumerationAsScalaIterator(Ljava/util/Enumeration;)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v2, Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;

    invoke-direct {v2, v1}, Lcom/github/shadowsocks/utils/Utils$$anonfun$isIPv6Support$1;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :goto_0
    const/4 v0, 0x0

    .line 232
    :goto_1
    return v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    :try_start_1
    invoke-direct {p0}, Lcom/github/shadowsocks/utils/Utils$;->TAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to get interfaces\' addresses."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->track(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 232
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Lscala/runtime/NonLocalReturnControl;->value$mcZ$sp()Z

    move-result v0

    goto :goto_1

    :cond_0
    throw v0
.end method

.method public isLollipopOrAbove()Z
    .locals 2

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumeric(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/github/shadowsocks/utils/Utils$;->isNumericMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public positionToast(Landroid/widget/Toast;Landroid/view/View;Landroid/view/Window;II)Landroid/widget/Toast;
    .locals 8
    .param p1, "toast"    # Landroid/widget/Toast;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "window"    # Landroid/view/Window;
    .param p4, "offsetX"    # I
    .param p5, "offsetY"    # I

    .prologue
    const/4 v6, 0x0

    .line 90
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 92
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 93
    .local v3, "viewLocation":[I
    invoke-virtual {p2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 94
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 95
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p3}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 96
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, "toastView":Landroid/view/View;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 98
    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 97
    invoke-virtual {v2, v4, v5}, Landroid/view/View;->measure(II)V

    .line 99
    const/16 v4, 0x33

    .line 100
    aget v5, v3, v6

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v5, p4

    .line 101
    const/4 v6, 0x1

    aget v6, v3, v6

    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, p5

    .line 99
    invoke-virtual {p1, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 102
    return-object p1
.end method

.method public printToFile(Ljava/io/File;Lscala/Function1;)V
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .param p2, "op"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lscala/Function1",
            "<",
            "Ljava/io/PrintWriter;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 125
    .local v0, "p":Ljava/io/PrintWriter;
    :try_start_0
    invoke-interface {p2, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    throw v1
.end method

.method public readAllLines(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 116
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 118
    .local v0, "scanner":Ljava/util/Scanner;
    :try_start_0
    const-string v1, "\\Z"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 119
    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 120
    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    throw v1
.end method

.method public resolve(Ljava/lang/String;)Lscala/Option;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 199
    .local v0, "addr":Ljava/net/InetAddress;
    new-instance v1, Lscala/Some;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lscala/Some;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_0
    return-object v1

    .line 201
    :catch_0
    move-exception v1

    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0
.end method

.method public resolve(Ljava/lang/String;I)Lscala/Option;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "addrType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 175
    :try_start_0
    new-instance v0, Lorg/xbill/DNS/Lookup;

    invoke-direct {v0, p1, p2}, Lorg/xbill/DNS/Lookup;-><init>(Ljava/lang/String;I)V

    .line 176
    .local v0, "lookup":Lorg/xbill/DNS/Lookup;
    new-instance v2, Lorg/xbill/DNS/SimpleResolver;

    const-string v4, "114.114.114.114"

    invoke-direct {v2, v4}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 177
    .local v2, "resolver":Lorg/xbill/DNS/SimpleResolver;
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/SimpleResolver;->setTimeout(I)V

    .line 178
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Lookup;->setResolver(Lorg/xbill/DNS/Resolver;)V

    .line 179
    invoke-virtual {v0}, Lorg/xbill/DNS/Lookup;->run()[Lorg/xbill/DNS/Record;

    move-result-object v3

    .line 180
    .local v3, "result":[Lorg/xbill/DNS/Record;
    if-nez v3, :cond_0

    sget-object v4, Lscala/None$;->MODULE$:Lscala/None$;

    .end local v0    # "lookup":Lorg/xbill/DNS/Lookup;
    .end local v2    # "resolver":Lorg/xbill/DNS/SimpleResolver;
    .end local v3    # "result":[Lorg/xbill/DNS/Record;
    :goto_0
    return-object v4

    .line 181
    .restart local v0    # "lookup":Lorg/xbill/DNS/Lookup;
    .restart local v2    # "resolver":Lorg/xbill/DNS/SimpleResolver;
    .restart local v3    # "result":[Lorg/xbill/DNS/Record;
    :cond_0
    sget-object v4, Lscala/util/Random$;->MODULE$:Lscala/util/Random$;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "result":[Lorg/xbill/DNS/Record;
    invoke-virtual {v6, v3}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v6

    invoke-interface {v6}, Lscala/collection/mutable/ArrayOps;->toList()Lscala/collection/immutable/List;

    move-result-object v6

    sget-object v7, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v7}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lscala/util/Random$;->shuffle(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/TraversableOnce;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/List;

    .line 182
    .local v1, "records":Lscala/collection/immutable/List;
    new-instance v4, Lcom/github/shadowsocks/utils/Utils$$anonfun$resolve$1;

    invoke-direct {v4, p2, v5}, Lcom/github/shadowsocks/utils/Utils$$anonfun$resolve$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "lookup":Lorg/xbill/DNS/Lookup;
    .end local v1    # "records":Lscala/collection/immutable/List;
    .end local v2    # "resolver":Lorg/xbill/DNS/SimpleResolver;
    :goto_1
    :try_start_1
    sget-object v4, Lscala/None$;->MODULE$:Lscala/None$;
    :try_end_1
    .catch Lscala/runtime/NonLocalReturnControl; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lscala/runtime/NonLocalReturnControl;->key()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_1

    invoke-virtual {v4}, Lscala/runtime/NonLocalReturnControl;->value()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscala/Option;

    goto :goto_0

    :cond_1
    throw v4

    .line 191
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public resolve(Ljava/lang/String;Z)Lscala/Option;
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "enableIPv6"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lscala/Option",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/Utils$;->isIPv6Support()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const/16 v1, 0x1c

    invoke-virtual {p0, p1, v1}, Lcom/github/shadowsocks/utils/Utils$;->resolve(Ljava/lang/String;I)Lscala/Option;

    move-result-object v1

    .line 208
    instance-of v2, v1, Lscala/Some;

    if-eqz v2, :cond_0

    check-cast v1, Lscala/Some;

    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    .local v0, "addr":Ljava/lang/String;
    new-instance v1, Lscala/Some;

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    .line 223
    .end local v0    # "addr":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 210
    :cond_0
    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 213
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/github/shadowsocks/utils/Utils$;->resolve(Ljava/lang/String;I)Lscala/Option;

    move-result-object v1

    .line 214
    instance-of v2, v1, Lscala/Some;

    if-eqz v2, :cond_3

    check-cast v1, Lscala/Some;

    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    .restart local v0    # "addr":Ljava/lang/String;
    new-instance v1, Lscala/Some;

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    new-instance v2, Lscala/MatchError;

    invoke-direct {v2, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 216
    :cond_3
    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 218
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/utils/Utils$;->resolve(Ljava/lang/String;)Lscala/Option;

    move-result-object v1

    .line 219
    instance-of v2, v1, Lscala/Some;

    if-eqz v2, :cond_4

    check-cast v1, Lscala/Some;

    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 220
    .restart local v0    # "addr":Ljava/lang/String;
    new-instance v1, Lscala/Some;

    invoke-direct {v1, v0}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    .end local v0    # "addr":Ljava/lang/String;
    :cond_4
    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 223
    sget-object v1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    .line 218
    :cond_5
    new-instance v2, Lscala/MatchError;

    invoke-direct {v2, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 213
    :cond_6
    new-instance v2, Lscala/MatchError;

    invoke-direct {v2, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public startSsService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/github/shadowsocks/ShadowsocksRunnerService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public stopSsService(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/github/shadowsocks/utils/Action$;->MODULE$:Lcom/github/shadowsocks/utils/Action$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Action$;->CLOSE()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
