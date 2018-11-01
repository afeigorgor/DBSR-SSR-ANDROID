.class public Lme/dm7/barcodescanner/zxing/ZXingScannerView;
.super Lme/dm7/barcodescanner/core/BarcodeScannerView;
.source "ZXingScannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;
    }
.end annotation


# static fields
.field public static final ALL_FORMATS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    .line 45
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->initMultiFormatReader()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lme/dm7/barcodescanner/core/BarcodeScannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->initMultiFormatReader()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lme/dm7/barcodescanner/zxing/ZXingScannerView;)Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;
    .locals 1
    .param p0, "x0"    # Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .prologue
    .line 32
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    return-object v0
.end method

.method static synthetic access$002(Lme/dm7/barcodescanner/zxing/ZXingScannerView;Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;
    .locals 0
    .param p0, "x0"    # Lme/dm7/barcodescanner/zxing/ZXingScannerView;
    .param p1, "x1"    # Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    .prologue
    .line 32
    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    return-object p1
.end method

.method private initMultiFormatReader()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 92
    .local v0, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    sget-object v1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getFormats()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 94
    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 95
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 11
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 183
    invoke-virtual {p0, p2, p3}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getFramingRectInPreview(II)Landroid/graphics/Rect;

    move-result-object v9

    .line 184
    .local v9, "rect":Landroid/graphics/Rect;
    if-nez v9, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 196
    :goto_0
    return-object v0

    .line 188
    :cond_0
    const/4 v10, 0x0

    .line 191
    .local v10, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    :try_start_0
    new-instance v0, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget v4, v9, Landroid/graphics/Rect;->left:I

    iget v5, v9, Landroid/graphics/Rect;->top:I

    .line 192
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    .local v0, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    goto :goto_0

    .line 193
    .end local v0    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    .restart local v10    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    :catch_0
    move-exception v1

    move-object v0, v10

    .end local v10    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    .restart local v0    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    goto :goto_0
.end method

.method public getFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mFormats:Ljava/util/List;

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->ALL_FORMATS:Ljava/util/List;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mFormats:Ljava/util/List;

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 17
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 99
    move-object/from16 v0, p0

    iget-object v15, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    if-nez v15, :cond_0

    .line 175
    :goto_0
    return-void

    .line 104
    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 105
    .local v8, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 106
    .local v11, "size":Landroid/hardware/Camera$Size;
    iget v14, v11, Landroid/hardware/Camera$Size;->width:I

    .line 107
    .local v14, "width":I
    iget v6, v11, Landroid/hardware/Camera$Size;->height:I

    .line 109
    .local v6, "height":I
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 110
    invoke-virtual/range {p0 .. p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getRotationCount()I

    move-result v10

    .line 111
    .local v10, "rotationCount":I
    const/4 v15, 0x1

    if-eq v10, v15, :cond_1

    const/4 v15, 0x3

    if-ne v10, v15, :cond_2

    .line 112
    :cond_1
    move v13, v14

    .line 113
    .local v13, "tmp":I
    move v14, v6

    .line 114
    move v6, v13

    .line 116
    .end local v13    # "tmp":I
    :cond_2
    invoke-virtual/range {p0 .. p2}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->getRotatedData([BLandroid/hardware/Camera;)[B

    move-result-object p1

    .line 119
    .end local v10    # "rotationCount":I
    :cond_3
    const/4 v9, 0x0

    .line 120
    .local v9, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v6}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v12

    .line 122
    .local v12, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    if-eqz v12, :cond_4

    .line 123
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    new-instance v15, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v15, v12}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v15}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .local v2, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    .line 133
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 136
    :goto_1
    if-nez v9, :cond_4

    .line 137
    invoke-virtual {v12}, Lcom/google/zxing/PlanarYUVLuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object v7

    .line 138
    .local v7, "invertedSource":Lcom/google/zxing/LuminanceSource;
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    .end local v2    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    new-instance v15, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v15, v7}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v2, v15}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    .restart local v2    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15, v2}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_3
    .catch Lcom/google/zxing/NotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v9

    .line 144
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 149
    .end local v2    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v7    # "invertedSource":Lcom/google/zxing/LuminanceSource;
    :cond_4
    :goto_2
    move-object v4, v9

    .line 151
    .local v4, "finalRawResult":Lcom/google/zxing/Result;
    if-eqz v4, :cond_5

    .line 152
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v15

    invoke-direct {v5, v15}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 153
    .local v5, "handler":Landroid/os/Handler;
    new-instance v15, Lme/dm7/barcodescanner/zxing/ZXingScannerView$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v4}, Lme/dm7/barcodescanner/zxing/ZXingScannerView$1;-><init>(Lme/dm7/barcodescanner/zxing/ZXingScannerView;Lcom/google/zxing/Result;)V

    invoke-virtual {v5, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 171
    .end local v4    # "finalRawResult":Lcom/google/zxing/Result;
    .end local v5    # "handler":Landroid/os/Handler;
    .end local v6    # "height":I
    .end local v8    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v9    # "rawResult":Lcom/google/zxing/Result;
    .end local v11    # "size":Landroid/hardware/Camera$Size;
    .end local v12    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    .end local v14    # "width":I
    :catch_0
    move-exception v3

    .line 173
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v15, "ZXingScannerView"

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 126
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .restart local v6    # "height":I
    .restart local v8    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v9    # "rawResult":Lcom/google/zxing/Result;
    .restart local v11    # "size":Landroid/hardware/Camera$Size;
    .restart local v12    # "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    .restart local v14    # "width":I
    :catch_1
    move-exception v15

    .line 133
    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_1

    .line 128
    :catch_2
    move-exception v15

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_1

    .line 130
    :catch_3
    move-exception v15

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_1

    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v15

    .line 141
    .restart local v7    # "invertedSource":Lcom/google/zxing/LuminanceSource;
    :catch_4
    move-exception v15

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v15}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_2

    :catchall_1
    move-exception v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mMultiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v15

    .line 169
    .end local v2    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    .end local v7    # "invertedSource":Lcom/google/zxing/LuminanceSource;
    .restart local v4    # "finalRawResult":Lcom/google/zxing/Result;
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/BarcodeFormat;>;"
    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mFormats:Ljava/util/List;

    .line 76
    invoke-direct {p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->initMultiFormatReader()V

    .line 77
    return-void
.end method

.method public setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V
    .locals 0
    .param p1, "resultHandler"    # Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    .prologue
    .line 80
    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->mResultHandler:Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    .line 81
    return-void
.end method
