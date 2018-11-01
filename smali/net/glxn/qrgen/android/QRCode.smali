.class public Lnet/glxn/qrgen/android/QRCode;
.super Lnet/glxn/qrgen/core/AbstractQRCode;
.source "QRCode.java"


# instance fields
.field protected final text:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lnet/glxn/qrgen/core/AbstractQRCode;-><init>()V

    .line 19
    iput-object p1, p0, Lnet/glxn/qrgen/android/QRCode;->text:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {v0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    iput-object v0, p0, Lnet/glxn/qrgen/android/QRCode;->qrWriter:Lcom/google/zxing/Writer;

    .line 21
    return-void
.end method

.method public static from(Ljava/lang/String;)Lnet/glxn/qrgen/android/QRCode;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 48
    new-instance v0, Lnet/glxn/qrgen/android/QRCode;

    invoke-direct {v0, p0}, Lnet/glxn/qrgen/android/QRCode;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lnet/glxn/qrgen/android/QRCode;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/glxn/qrgen/android/QRCode;->createMatrix(Ljava/lang/String;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-static {v1}, Lnet/glxn/qrgen/android/MatrixToImageWriter;->toBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lcom/google/zxing/WriterException;
    new-instance v1, Lnet/glxn/qrgen/core/exception/QRGenerationException;

    const-string v2, "Failed to create QR image from text due to underlying exception"

    invoke-direct {v1, v2, v0}, Lnet/glxn/qrgen/core/exception/QRGenerationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
