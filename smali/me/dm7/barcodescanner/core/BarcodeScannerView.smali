.class public abstract Lme/dm7/barcodescanner/core/BarcodeScannerView;
.super Landroid/widget/FrameLayout;
.source "BarcodeScannerView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field private mAspectTolerance:F

.field private mAutofocusState:Z

.field private mBorderAlpha:F

.field private mBorderColor:I

.field private mBorderLength:I

.field private mBorderWidth:I

.field private mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

.field private mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

.field private mCornerRadius:I

.field private mFlashState:Ljava/lang/Boolean;

.field private mFramingRectInPreview:Landroid/graphics/Rect;

.field private mIsLaserEnabled:Z

.field private mLaserColor:I

.field private mMaskColor:I

.field private mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

.field private mRoundedCorner:Z

.field private mShouldScaleToFill:Z

.field private mSquaredFinder:Z

.field private mViewFinderOffset:I

.field private mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    .line 26
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    .line 28
    iput-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    .line 29
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_laser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    .line 30
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    .line 31
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_mask:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    .line 32
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    .line 33
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    .line 34
    iput-boolean v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    .line 35
    iput v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    .line 36
    iput-boolean v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    .line 38
    iput v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderOffset:I

    .line 39
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAspectTolerance:F

    .line 43
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    .line 26
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    .line 28
    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    .line 29
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/dm7/barcodescanner/core/R$color;->viewfinder_laser:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    .line 30
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/dm7/barcodescanner/core/R$color;->viewfinder_border:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    .line 31
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/dm7/barcodescanner/core/R$color;->viewfinder_mask:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    .line 32
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    .line 33
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_length:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    .line 34
    iput-boolean v3, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    .line 35
    iput v3, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    .line 36
    iput-boolean v3, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    .line 38
    iput v3, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderOffset:I

    .line 39
    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAspectTolerance:F

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_shouldScaleToFill:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setShouldScaleToFill(Z)V

    .line 56
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_laserEnabled:I

    iget-boolean v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    .line 57
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_laserColor:I

    iget v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    .line 58
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_borderColor:I

    iget v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    .line 59
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_maskColor:I

    iget v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    .line 60
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_borderWidth:I

    iget v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    .line 61
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_borderLength:I

    iget v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    .line 63
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_roundedCorner:I

    iget-boolean v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    .line 64
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_cornerRadius:I

    iget v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    .line 65
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_squaredFinder:I

    iget-boolean v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    .line 66
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_borderAlpha:I

    iget v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    .line 67
    sget v1, Lme/dm7/barcodescanner/core/R$styleable;->BarcodeScannerView_finderOffset:I

    iget v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->init()V

    .line 73
    return-void

    .line 69
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->createViewFinderView(Landroid/content/Context;)Lme/dm7/barcodescanner/core/IViewFinder;

    move-result-object v0

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    .line 77
    return-void
.end method


# virtual methods
.method protected createViewFinderView(Landroid/content/Context;)Lme/dm7/barcodescanner/core/IViewFinder;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    new-instance v0, Lme/dm7/barcodescanner/core/ViewFinderView;

    invoke-direct {v0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "viewFinderView":Lme/dm7/barcodescanner/core/ViewFinderView;
    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderColor(I)V

    .line 113
    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setLaserColor(I)V

    .line 114
    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setLaserEnabled(Z)V

    .line 115
    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderStrokeWidth(I)V

    .line 116
    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderLineLength(I)V

    .line 117
    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setMaskColor(I)V

    .line 119
    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderCornerRounded(Z)V

    .line 120
    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setBorderCornerRadius(I)V

    .line 121
    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setSquareViewFinder(Z)V

    .line 122
    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderOffset:I

    invoke-virtual {v0, v1}, Lme/dm7/barcodescanner/core/ViewFinderView;->setViewFinderOffset(I)V

    .line 123
    return-object v0
.end method

.method public getFlash()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v2, v2, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-static {v2}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 273
    iget-object v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v2, v2, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 274
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "torch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    const/4 v1, 0x1

    .line 280
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    return v1
.end method

.method public declared-synchronized getFramingRectInPreview(II)Landroid/graphics/Rect;
    .locals 5
    .param p1, "previewWidth"    # I
    .param p2, "previewHeight"    # I

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;

    if-nez v4, :cond_4

    .line 227
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v4}, Lme/dm7/barcodescanner/core/IViewFinder;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 228
    .local v0, "framingRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v4}, Lme/dm7/barcodescanner/core/IViewFinder;->getWidth()I

    move-result v3

    .line 229
    .local v3, "viewFinderViewWidth":I
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v4}, Lme/dm7/barcodescanner/core/IViewFinder;->getHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 230
    .local v2, "viewFinderViewHeight":I
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 231
    :cond_0
    const/4 v4, 0x0

    .line 248
    .end local v0    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "viewFinderViewHeight":I
    .end local v3    # "viewFinderViewWidth":I
    :goto_0
    monitor-exit p0

    return-object v4

    .line 234
    .restart local v0    # "framingRect":Landroid/graphics/Rect;
    .restart local v2    # "viewFinderViewHeight":I
    .restart local v3    # "viewFinderViewWidth":I
    :cond_1
    :try_start_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 236
    .local v1, "rect":Landroid/graphics/Rect;
    if-ge p1, v3, :cond_2

    .line 237
    iget v4, v1, Landroid/graphics/Rect;->left:I

    mul-int/2addr v4, p1

    div-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 238
    iget v4, v1, Landroid/graphics/Rect;->right:I

    mul-int/2addr v4, p1

    div-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 241
    :cond_2
    if-ge p2, v2, :cond_3

    .line 242
    iget v4, v1, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, p2

    div-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 243
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/2addr v4, p2

    div-int/2addr v4, v2

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 246
    :cond_3
    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;

    .line 248
    .end local v0    # "framingRect":Landroid/graphics/Rect;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "viewFinderViewHeight":I
    .end local v3    # "viewFinderViewWidth":I
    :cond_4
    iget-object v4, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFramingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getRotatedData([BLandroid/hardware/Camera;)[B
    .locals 12
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 311
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 312
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 313
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    .line 314
    .local v7, "width":I
    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    .line 316
    .local v0, "height":I
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getRotationCount()I

    move-result v4

    .line 318
    .local v4, "rotationCount":I
    const/4 v10, 0x1

    if-eq v4, v10, :cond_0

    const/4 v10, 0x3

    if-ne v4, v10, :cond_3

    .line 319
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 320
    array-length v10, p1

    new-array v3, v10, [B

    .line 321
    .local v3, "rotatedData":[B
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_1
    if-ge v9, v0, :cond_2

    .line 322
    const/4 v8, 0x0

    .local v8, "x":I
    :goto_2
    if-ge v8, v7, :cond_1

    .line 323
    mul-int v10, v8, v0

    add-int/2addr v10, v0

    sub-int/2addr v10, v9

    add-int/lit8 v10, v10, -0x1

    mul-int v11, v9, v7

    add-int/2addr v11, v8

    aget-byte v11, p1, v11

    aput-byte v11, v3, v10

    .line 322
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 321
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 325
    .end local v8    # "x":I
    :cond_2
    move-object p1, v3

    .line 326
    move v6, v7

    .line 327
    .local v6, "tmp":I
    move v7, v0

    .line 328
    move v0, v6

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    .end local v1    # "i":I
    .end local v3    # "rotatedData":[B
    .end local v6    # "tmp":I
    .end local v9    # "y":I
    :cond_3
    return-object p1
.end method

.method public getRotationCount()I
    .locals 2

    .prologue
    .line 336
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v1}, Lme/dm7/barcodescanner/core/CameraPreview;->getDisplayOrientation()I

    move-result v0

    .line 337
    .local v0, "displayOrientation":I
    div-int/lit8 v1, v0, 0x5a

    return v1
.end method

.method public setAspectTolerance(F)V
    .locals 0
    .param p1, "aspectTolerance"    # F

    .prologue
    .line 307
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAspectTolerance:F

    .line 308
    return-void
.end method

.method public setAutoFocus(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    .line 297
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/CameraPreview;->setAutoFocus(Z)V

    .line 300
    :cond_0
    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 2
    .param p1, "borderAlpha"    # F

    .prologue
    .line 172
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    .line 173
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderAlpha:F

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderAlpha(F)V

    .line 174
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 175
    return-void
.end method

.method public setBorderColor(I)V
    .locals 2
    .param p1, "borderColor"    # I

    .prologue
    .line 137
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    .line 138
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderColor:I

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderColor(I)V

    .line 139
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 140
    return-void
.end method

.method public setBorderCornerRadius(I)V
    .locals 2
    .param p1, "borderCornerRadius"    # I

    .prologue
    .line 162
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    .line 163
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCornerRadius:I

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderCornerRadius(I)V

    .line 164
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 165
    return-void
.end method

.method public setBorderLineLength(I)V
    .locals 2
    .param p1, "borderLineLength"    # I

    .prologue
    .line 147
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    .line 148
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderLength:I

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderLineLength(I)V

    .line 149
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 150
    return-void
.end method

.method public setBorderStrokeWidth(I)V
    .locals 2
    .param p1, "borderStrokeWidth"    # I

    .prologue
    .line 142
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    .line 143
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mBorderWidth:I

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderStrokeWidth(I)V

    .line 144
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 145
    return-void
.end method

.method public setFlash(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 252
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFlashState:Ljava/lang/Boolean;

    .line 253
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1}, Lme/dm7/barcodescanner/core/CameraUtils;->isFlashSupported(Landroid/hardware/Camera;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 256
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_2

    .line 257
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 260
    .restart local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 267
    :goto_1
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v1, v1, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setIsBorderCornerRounded(Z)V
    .locals 2
    .param p1, "isBorderCornerRounded"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    .line 158
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mRoundedCorner:Z

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/core/IViewFinder;->setBorderCornerRounded(Z)V

    .line 159
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 160
    return-void
.end method

.method public setLaserColor(I)V
    .locals 2
    .param p1, "laserColor"    # I

    .prologue
    .line 127
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    .line 128
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mLaserColor:I

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/core/IViewFinder;->setLaserColor(I)V

    .line 129
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 130
    return-void
.end method

.method public setLaserEnabled(Z)V
    .locals 2
    .param p1, "isLaserEnabled"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    .line 153
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mIsLaserEnabled:Z

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/core/IViewFinder;->setLaserEnabled(Z)V

    .line 154
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 155
    return-void
.end method

.method public setMaskColor(I)V
    .locals 2
    .param p1, "maskColor"    # I

    .prologue
    .line 132
    iput p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    .line 133
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mMaskColor:I

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/core/IViewFinder;->setMaskColor(I)V

    .line 134
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 135
    return-void
.end method

.method public setShouldScaleToFill(Z)V
    .locals 0
    .param p1, "shouldScaleToFill"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    .line 304
    return-void
.end method

.method public setSquareViewFinder(Z)V
    .locals 2
    .param p1, "isSquareViewFinder"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    .line 168
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mSquaredFinder:Z

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/core/IViewFinder;->setSquareViewFinder(Z)V

    .line 169
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 170
    return-void
.end method

.method public setupCameraPreview(Lme/dm7/barcodescanner/core/CameraWrapper;)V
    .locals 1
    .param p1, "cameraWrapper"    # Lme/dm7/barcodescanner/core/CameraWrapper;

    .prologue
    .line 185
    iput-object p1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    .line 186
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setupLayout(Lme/dm7/barcodescanner/core/CameraWrapper;)V

    .line 188
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    invoke-interface {v0}, Lme/dm7/barcodescanner/core/IViewFinder;->setupViewFinder()V

    .line 189
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFlashState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mFlashState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setFlash(Z)V

    .line 192
    :cond_0
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAutofocusState:Z

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->setAutoFocus(Z)V

    .line 194
    :cond_1
    return-void
.end method

.method public final setupLayout(Lme/dm7/barcodescanner/core/CameraWrapper;)V
    .locals 3
    .param p1, "cameraWrapper"    # Lme/dm7/barcodescanner/core/CameraWrapper;

    .prologue
    .line 80
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->removeAllViews()V

    .line 82
    new-instance v1, Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p0}, Lme/dm7/barcodescanner/core/CameraPreview;-><init>(Landroid/content/Context;Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V

    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    .line 83
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    iget v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mAspectTolerance:F

    invoke-virtual {v1, v2}, Lme/dm7/barcodescanner/core/CameraPreview;->setAspectTolerance(F)V

    .line 84
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    iget-boolean v2, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    invoke-virtual {v1, v2}, Lme/dm7/barcodescanner/core/CameraPreview;->setShouldScaleToFill(Z)V

    .line 85
    iget-boolean v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mShouldScaleToFill:Z

    if-nez v1, :cond_0

    .line 86
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 87
    .local v0, "relativeLayout":Landroid/widget/RelativeLayout;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 88
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 89
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    .line 95
    .end local v0    # "relativeLayout":Landroid/widget/RelativeLayout;
    :goto_0
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mViewFinderView:Lme/dm7/barcodescanner/core/IViewFinder;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    .line 101
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {p0, v1}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IViewFinder object returned by \'createViewFinderView()\' should be instance of android.view.View"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startCamera()V
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lme/dm7/barcodescanner/core/CameraUtils;->getDefaultCameraId()I

    move-result v0

    invoke-virtual {p0, v0}, Lme/dm7/barcodescanner/core/BarcodeScannerView;->startCamera(I)V

    .line 198
    return-void
.end method

.method public startCamera(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lme/dm7/barcodescanner/core/CameraHandlerThread;

    invoke-direct {v0, p0}, Lme/dm7/barcodescanner/core/CameraHandlerThread;-><init>(Lme/dm7/barcodescanner/core/BarcodeScannerView;)V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    .line 181
    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    invoke-virtual {v0, p1}, Lme/dm7/barcodescanner/core/CameraHandlerThread;->startCamera(I)V

    .line 182
    return-void
.end method

.method public stopCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 203
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0, v1, v1}, Lme/dm7/barcodescanner/core/CameraPreview;->setCamera(Lme/dm7/barcodescanner/core/CameraWrapper;Landroid/hardware/Camera$PreviewCallback;)V

    .line 204
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    iget-object v0, v0, Lme/dm7/barcodescanner/core/CameraWrapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 205
    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraWrapper:Lme/dm7/barcodescanner/core/CameraWrapper;

    .line 207
    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraHandlerThread;->quit()Z

    .line 209
    iput-object v1, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mCameraHandlerThread:Lme/dm7/barcodescanner/core/CameraHandlerThread;

    .line 211
    :cond_1
    return-void
.end method

.method public stopCameraPreview()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lme/dm7/barcodescanner/core/BarcodeScannerView;->mPreview:Lme/dm7/barcodescanner/core/CameraPreview;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/core/CameraPreview;->stopCameraPreview()V

    .line 217
    :cond_0
    return-void
.end method
