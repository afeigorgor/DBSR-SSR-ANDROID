.class public Lnet/vrallev/android/cat/instance/CatLazy;
.super Lnet/vrallev/android/cat/CatLog;
.source "CatLazy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lnet/vrallev/android/cat/CatLog;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lnet/vrallev/android/cat/CatUtil;->getCallingClassNameSimple()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
