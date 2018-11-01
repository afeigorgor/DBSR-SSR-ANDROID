.class public Lnet/glxn/qrgen/android/MatrixToImageWriter;
.super Ljava/lang/Object;
.source "MatrixToImageWriter.java"


# static fields
.field private static final DEFAULT_CONFIG:Lnet/glxn/qrgen/android/MatrixToImageConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lnet/glxn/qrgen/android/MatrixToImageConfig;

    invoke-direct {v0}, Lnet/glxn/qrgen/android/MatrixToImageConfig;-><init>()V

    sput-object v0, Lnet/glxn/qrgen/android/MatrixToImageWriter;->DEFAULT_CONFIG:Lnet/glxn/qrgen/android/MatrixToImageConfig;

    return-void
.end method

.method public static toBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    .line 26
    sget-object v0, Lnet/glxn/qrgen/android/MatrixToImageWriter;->DEFAULT_CONFIG:Lnet/glxn/qrgen/android/MatrixToImageConfig;

    invoke-static {p0, v0}, Lnet/glxn/qrgen/android/MatrixToImageWriter;->toBitmap(Lcom/google/zxing/common/BitMatrix;Lnet/glxn/qrgen/android/MatrixToImageConfig;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static toBitmap(Lcom/google/zxing/common/BitMatrix;Lnet/glxn/qrgen/android/MatrixToImageConfig;)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;
    .param p1, "config"    # Lnet/glxn/qrgen/android/MatrixToImageConfig;

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1}, Lnet/glxn/qrgen/android/MatrixToImageConfig;->getPixelOnColor()I

    move-result v10

    .line 38
    .local v10, "onColor":I
    invoke-virtual {p1}, Lnet/glxn/qrgen/android/MatrixToImageConfig;->getPixelOffColor()I

    move-result v8

    .line 39
    .local v8, "offColor":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    .line 40
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    .line 41
    .local v7, "height":I
    mul-int v4, v3, v7

    new-array v1, v4, [I

    .line 43
    .local v1, "pixels":[I
    const/4 v12, 0x0

    .local v12, "y":I
    :goto_0
    if-ge v12, v7, :cond_2

    .line 44
    mul-int v9, v12, v3

    .line 45
    .local v9, "offset":I
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_1
    if-ge v11, v3, :cond_1

    .line 46
    add-int v5, v9, v11

    invoke-virtual {p0, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v10

    :goto_2
    aput v4, v1, v5

    .line 45
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    move v4, v8

    .line 46
    goto :goto_2

    .line 43
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 50
    .end local v9    # "offset":I
    .end local v11    # "x":I
    :cond_2
    invoke-virtual {p1}, Lnet/glxn/qrgen/android/MatrixToImageConfig;->getBufferedImageColorModel()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v3, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "image":Landroid/graphics/Bitmap;
    move v4, v2

    move v5, v2

    move v6, v3

    .line 51
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 52
    return-object v0
.end method
