.class public Lcom/github/shadowsocks/System;
.super Ljava/lang/Object;
.source "System.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "system"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native exec(Ljava/lang/String;)I
.end method

.method public static native getABI()Ljava/lang/String;
.end method

.method public static native jniclose(I)V
.end method

.method public static native sendfd(ILjava/lang/String;)I
.end method
