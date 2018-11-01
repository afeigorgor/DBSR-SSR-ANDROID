.class public final Lcom/google/zxing/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 2
    .param p1, "yuvData"    # [B
    .param p2, "dataWidth"    # I
    .param p3, "dataHeight"    # I
    .param p4, "left"    # I
    .param p5, "top"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "reverseHorizontal"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 49
    add-int v0, p4, p6

    if-gt v0, p2, :cond_0

    add-int v0, p5, p7

    if-le v0, p3, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Crop rectangle does not fit within image data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    iput-object p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 54
    iput p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 55
    iput p3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 56
    iput p4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 57
    iput p5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    .line 58
    if-eqz p8, :cond_2

    .line 59
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/PlanarYUVLuminanceSource;->reverseHorizontal(II)V

    .line 61
    :cond_2
    return-void
.end method

.method private reverseHorizontal(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 157
    iget-object v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 158
    .local v6, "yuvData":[B
    const/4 v5, 0x0

    .local v5, "y":I
    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v1, v7, v8

    .local v1, "rowStart":I
    :goto_0
    if-ge v5, p2, :cond_1

    .line 159
    div-int/lit8 v7, p1, 0x2

    add-int v0, v1, v7

    .line 160
    .local v0, "middle":I
    move v3, v1

    .local v3, "x1":I
    add-int v7, v1, p1

    add-int/lit8 v4, v7, -0x1

    .local v4, "x2":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 161
    aget-byte v2, v6, v3

    .line 162
    .local v2, "temp":B
    aget-byte v7, v6, v4

    aput-byte v7, v6, v3

    .line 163
    aput-byte v2, v6, v4

    .line 160
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 158
    .end local v2    # "temp":B
    :cond_0
    add-int/lit8 v5, v5, 0x1

    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v1, v7

    goto :goto_0

    .line 166
    .end local v0    # "middle":I
    .end local v3    # "x1":I
    .end local v4    # "x2":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getMatrix()[B
    .locals 9

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    .line 80
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    .line 84
    .local v1, "height":I
    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v5, v7, :cond_1

    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v7, :cond_1

    .line 85
    iget-object v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 104
    :cond_0
    :goto_0
    return-object v3

    .line 88
    :cond_1
    mul-int v0, v5, v1

    .line 89
    .local v0, "area":I
    new-array v3, v0, [B

    .line 90
    .local v3, "matrix":[B
    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v7, v8

    iget v8, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v2, v7, v8

    .line 93
    .local v2, "inputOffset":I
    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v5, v7, :cond_2

    .line 94
    iget-object v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v8, 0x0

    invoke-static {v7, v2, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 99
    :cond_2
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 100
    mul-int v4, v6, v5

    .line 101
    .local v4, "outputOffset":I
    iget-object v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    invoke-static {v7, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v2, v7

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public getRow(I[B)[B
    .locals 5
    .param p1, "y"    # I
    .param p2, "row"    # [B

    .prologue
    .line 65
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 66
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Requested row is outside the image: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v1

    .line 69
    .local v1, "width":I
    if-eqz p2, :cond_2

    array-length v2, p2

    if-ge v2, v1, :cond_3

    .line 70
    :cond_2
    new-array p2, v1, [B

    .line 72
    :cond_3
    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v0, v2, v3

    .line 73
    .local v0, "offset":I
    iget-object v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v3, 0x0

    invoke-static {v2, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-object p2
.end method
