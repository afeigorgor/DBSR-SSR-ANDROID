.class public final Lnet/vrallev/android/cat/CatUtil;
.super Ljava/lang/Object;
.source "CatUtil.java"


# static fields
.field private static final IGNORED_CLASS_NAMES:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const-class v1, Lnet/vrallev/android/cat/Cat;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 14
    .local v0, "catPackage":Ljava/lang/Package;
    if-nez v0, :cond_0

    .line 16
    const/4 v1, 0x0

    sput-object v1, Lnet/vrallev/android/cat/CatUtil;->PACKAGE:Ljava/lang/String;

    .line 22
    :goto_0
    new-instance v1, Lnet/vrallev/android/cat/CatUtil$1;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lnet/vrallev/android/cat/CatUtil$1;-><init>(I)V

    sput-object v1, Lnet/vrallev/android/cat/CatUtil;->IGNORED_CLASS_NAMES:Landroid/util/LruCache;

    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lnet/vrallev/android/cat/CatUtil;->PACKAGE:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCallingClassName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 78
    .local v2, "stackTrace":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 79
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lnet/vrallev/android/cat/CatUtil;->isValidClass(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lnet/vrallev/android/cat/CatUtil;->isClassNameIgnored(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    .end local v0    # "className":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 78
    .restart local v0    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "className":Ljava/lang/String;
    :cond_1
    const-string v0, "Cat"

    goto :goto_1
.end method

.method public static getCallingClassNameSimple()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lnet/vrallev/android/cat/CatUtil;->getCallingClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/vrallev/android/cat/CatUtil;->simpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCallingPackage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 111
    invoke-static {}, Lnet/vrallev/android/cat/CatUtil;->getCallingClassName()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "className":Ljava/lang/String;
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 117
    .end local v0    # "className":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "className":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isClassNameIgnored(Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lnet/vrallev/android/cat/CatUtil;->IGNORED_CLASS_NAMES:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isValidClass(Ljava/lang/String;)Z
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, Lnet/vrallev/android/cat/CatUtil;->PACKAGE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/vrallev/android/cat/CatUtil;->PACKAGE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static simpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 97
    .end local p0    # "className":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "className":Ljava/lang/String;
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, v0, v1

    goto :goto_0
.end method
