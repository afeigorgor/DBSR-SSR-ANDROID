.class public abstract Lnet/glxn/qrgen/core/AbstractQRCode;
.super Ljava/lang/Object;
.source "AbstractQRCode.java"


# instance fields
.field protected height:I

.field protected final hints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected imageType:Lnet/glxn/qrgen/core/image/ImageType;

.field protected qrWriter:Lcom/google/zxing/Writer;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x7d

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/glxn/qrgen/core/AbstractQRCode;->hints:Ljava/util/HashMap;

    .line 33
    iput v1, p0, Lnet/glxn/qrgen/core/AbstractQRCode;->width:I

    .line 35
    iput v1, p0, Lnet/glxn/qrgen/core/AbstractQRCode;->height:I

    .line 37
    sget-object v0, Lnet/glxn/qrgen/core/image/ImageType;->PNG:Lnet/glxn/qrgen/core/image/ImageType;

    iput-object v0, p0, Lnet/glxn/qrgen/core/AbstractQRCode;->imageType:Lnet/glxn/qrgen/core/image/ImageType;

    return-void
.end method


# virtual methods
.method protected createMatrix(Ljava/lang/String;)Lcom/google/zxing/common/BitMatrix;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lnet/glxn/qrgen/core/AbstractQRCode;->qrWriter:Lcom/google/zxing/Writer;

    sget-object v2, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    iget v3, p0, Lnet/glxn/qrgen/core/AbstractQRCode;->width:I

    iget v4, p0, Lnet/glxn/qrgen/core/AbstractQRCode;->height:I

    iget-object v5, p0, Lnet/glxn/qrgen/core/AbstractQRCode;->hints:Ljava/util/HashMap;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/zxing/Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    return-object v0
.end method

.method public withSize(II)Lnet/glxn/qrgen/core/AbstractQRCode;
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 58
    iput p1, p0, Lnet/glxn/qrgen/core/AbstractQRCode;->width:I

    .line 59
    iput p2, p0, Lnet/glxn/qrgen/core/AbstractQRCode;->height:I

    .line 60
    return-object p0
.end method
