.class public Lnet/glxn/qrgen/android/MatrixToImageConfig;
.super Ljava/lang/Object;
.source "MatrixToImageConfig.java"


# instance fields
.field private final offColor:I

.field private final onColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    const/high16 v0, -0x1000000

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lnet/glxn/qrgen/android/MatrixToImageConfig;-><init>(II)V

    .line 21
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "onColor"    # I
    .param p2, "offColor"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lnet/glxn/qrgen/android/MatrixToImageConfig;->onColor:I

    .line 29
    iput p2, p0, Lnet/glxn/qrgen/android/MatrixToImageConfig;->offColor:I

    .line 30
    return-void
.end method


# virtual methods
.method getBufferedImageColorModel()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getPixelOffColor()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lnet/glxn/qrgen/android/MatrixToImageConfig;->offColor:I

    return v0
.end method

.method public getPixelOnColor()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lnet/glxn/qrgen/android/MatrixToImageConfig;->onColor:I

    return v0
.end method
