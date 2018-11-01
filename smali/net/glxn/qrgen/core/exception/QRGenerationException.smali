.class public Lnet/glxn/qrgen/core/exception/QRGenerationException;
.super Ljava/lang/RuntimeException;
.source "QRGenerationException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "underlyingException"    # Ljava/lang/Throwable;

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    return-void
.end method
