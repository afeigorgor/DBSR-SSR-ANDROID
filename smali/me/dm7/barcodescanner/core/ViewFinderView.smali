.class public Lme/dm7/barcodescanner/core/ViewFinderView;
.super Landroid/view/View;
.source "ViewFinderView.java"

# interfaces
.implements Lme/dm7/barcodescanner/core/IViewFinder;


# static fields
.field private static final SCANNER_ALPHA:[I


# instance fields
.field protected mBorderLineLength:I

.field protected mBorderPaint:Landroid/graphics/Paint;

.field private mBordersAlpha:F

.field private final mDefaultBorderColor:I

.field private final mDefaultBorderLineLength:I

.field private final mDefaultBorderStrokeWidth:I

.field private final mDefaultLaserColor:I

.field private final mDefaultMaskColor:I

.field protected mFinderMaskPaint:Landroid/graphics/Paint;

.field private mFramingRect:Landroid/graphics/Rect;

.field private mIsLaserEnabled:Z

.field protected mLaserPaint:Landroid/graphics/Paint;

.field protected mSquareViewFinder:Z

.field private mViewFinderOffset:I

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lme/dm7/barcodescanner/core/ViewFinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_laser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultLaserColor:I

    .line 34
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_mask:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultMaskColor:I

    .line 35
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$color;->viewfinder_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderColor:I

    .line 36
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderStrokeWidth:I

    .line 37
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/dm7/barcodescanner/core/R$integer;->viewfinder_border_length:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderLineLength:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mViewFinderOffset:I

    .line 50
    invoke-direct {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->init()V

    .line 51
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultLaserColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultMaskColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mDefaultBorderLineLength:I

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    .line 76
    return-void
.end method


# virtual methods
.method public drawLaser(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 202
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 205
    .local v8, "framingRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    sget-object v1, Lme/dm7/barcodescanner/core/ViewFinderView;->SCANNER_ALPHA:[I

    iget v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->scannerAlpha:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 206
    iget v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->scannerAlpha:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lme/dm7/barcodescanner/core/ViewFinderView;->SCANNER_ALPHA:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->scannerAlpha:I

    .line 207
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, v8, Landroid/graphics/Rect;->top:I

    add-int v9, v0, v1

    .line 208
    .local v9, "middle":I
    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    add-int/lit8 v0, v9, -0x1

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    add-int/lit8 v0, v9, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 210
    const-wide/16 v2, 0x50

    iget v0, v8, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v0, -0xa

    iget v0, v8, Landroid/graphics/Rect;->top:I

    add-int/lit8 v5, v0, -0xa

    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v0, 0xa

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v7, v0, 0xa

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lme/dm7/barcodescanner/core/ViewFinderView;->postInvalidateDelayed(JIIII)V

    .line 215
    return-void
.end method

.method public drawViewFinderBorder(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 173
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 176
    .local v0, "framingRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 177
    .local v1, "path":Landroid/graphics/Path;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 178
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 179
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    iget-object v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 184
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 185
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 186
    iget-object v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 189
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 190
    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 191
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    iget-object v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 195
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 196
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 197
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 198
    iget-object v2, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 199
    return-void
.end method

.method public drawViewFinderMask(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    .line 163
    .local v10, "width":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    .line 164
    .local v9, "height":I
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 166
    .local v8, "framingRect":Landroid/graphics/Rect;
    int-to-float v3, v10

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 167
    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v4, v0

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 168
    iget v0, v8, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v3, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    int-to-float v5, v10

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v6, v0

    iget-object v7, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-float v2, v0

    int-to-float v3, v10

    int-to-float v4, v9

    iget-object v5, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 170
    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFramingRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 149
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawViewFinderMask(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawViewFinderBorder(Landroid/graphics/Canvas;)V

    .line 156
    iget-boolean v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mIsLaserEnabled:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lme/dm7/barcodescanner/core/ViewFinderView;->drawLaser(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "xNew"    # I
    .param p2, "yNew"    # I
    .param p3, "xOld"    # I
    .param p4, "yOld"    # I

    .prologue
    .line 219
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->updateFramingRect()V

    .line 220
    return-void
.end method

.method public setBorderAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 117
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 118
    .local v0, "colorAlpha":I
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBordersAlpha:F

    .line 119
    iget-object v1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 120
    return-void
.end method

.method public setBorderColor(I)V
    .locals 1
    .param p1, "borderColor"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    return-void
.end method

.method public setBorderCornerRadius(I)V
    .locals 3
    .param p1, "borderCornersRadius"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    int-to-float v2, p1

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 125
    return-void
.end method

.method public setBorderCornerRounded(Z)V
    .locals 2
    .param p1, "isBorderCornersRounded"    # Z

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    goto :goto_0
.end method

.method public setBorderLineLength(I)V
    .locals 0
    .param p1, "borderLineLength"    # I

    .prologue
    .line 100
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderLineLength:I

    .line 101
    return-void
.end method

.method public setBorderStrokeWidth(I)V
    .locals 2
    .param p1, "borderStrokeWidth"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mBorderPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    return-void
.end method

.method public setLaserColor(I)V
    .locals 1
    .param p1, "laserColor"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mLaserPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    return-void
.end method

.method public setLaserEnabled(Z)V
    .locals 0
    .param p1, "isLaserEnabled"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mIsLaserEnabled:Z

    return-void
.end method

.method public setMaskColor(I)V
    .locals 1
    .param p1, "maskColor"    # I

    .prologue
    .line 85
    iget-object v0, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFinderMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    return-void
.end method

.method public setSquareViewFinder(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mSquareViewFinder:Z

    .line 136
    return-void
.end method

.method public setViewFinderOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 129
    iput p1, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mViewFinderOffset:I

    .line 130
    return-void
.end method

.method public setupViewFinder()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->updateFramingRect()V

    .line 140
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->invalidate()V

    .line 141
    return-void
.end method

.method public declared-synchronized updateFramingRect()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f400000    # 0.75f

    const/high16 v8, 0x3f200000    # 0.625f

    .line 223
    monitor-enter p0

    :try_start_0
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v7

    invoke-direct {v4, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    .line 226
    .local v4, "viewResolution":Landroid/graphics/Point;
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lme/dm7/barcodescanner/core/DisplayUtils;->getScreenOrientation(Landroid/content/Context;)I

    move-result v2

    .line 228
    .local v2, "orientation":I
    iget-boolean v6, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mSquareViewFinder:Z

    if-eqz v6, :cond_3

    .line 229
    if-eq v2, v10, :cond_2

    .line 230
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v0, v6

    .line 231
    .local v0, "height":I
    move v5, v0

    .line 246
    .local v5, "width":I
    :goto_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 247
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v6

    add-int/lit8 v5, v6, -0x32

    .line 250
    :cond_0
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v6

    if-le v0, v6, :cond_1

    .line 251
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v6

    add-int/lit8 v0, v6, -0x32

    .line 254
    :cond_1
    iget v6, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v5

    div-int/lit8 v1, v6, 0x2

    .line 255
    .local v1, "leftOffset":I
    iget v6, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v0

    div-int/lit8 v3, v6, 0x2

    .line 256
    .local v3, "topOffset":I
    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mViewFinderOffset:I

    add-int/2addr v7, v1

    iget v8, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mViewFinderOffset:I

    add-int/2addr v8, v3

    add-int v9, v1, v5

    iget v10, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mViewFinderOffset:I

    sub-int/2addr v9, v10

    add-int v10, v3, v0

    iget v11, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mViewFinderOffset:I

    sub-int/2addr v10, v11

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lme/dm7/barcodescanner/core/ViewFinderView;->mFramingRect:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 233
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v3    # "topOffset":I
    .end local v5    # "width":I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v5, v6

    .line 234
    .restart local v5    # "width":I
    move v0, v5

    .restart local v0    # "height":I
    goto :goto_0

    .line 237
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_3
    if-eq v2, v10, :cond_4

    .line 238
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    float-to-int v0, v6

    .line 239
    .restart local v0    # "height":I
    const v6, 0x3fb33333    # 1.4f

    int-to-float v7, v0

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .restart local v5    # "width":I
    goto :goto_0

    .line 241
    .end local v0    # "height":I
    .end local v5    # "width":I
    :cond_4
    invoke-virtual {p0}, Lme/dm7/barcodescanner/core/ViewFinderView;->getWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    float-to-int v5, v6

    .line 242
    .restart local v5    # "width":I
    int-to-float v6, v5

    mul-float/2addr v6, v9

    float-to-int v0, v6

    .restart local v0    # "height":I
    goto :goto_0

    .line 223
    .end local v0    # "height":I
    .end local v2    # "orientation":I
    .end local v4    # "viewResolution":Landroid/graphics/Point;
    .end local v5    # "width":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
