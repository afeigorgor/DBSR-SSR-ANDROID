.class public final Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;
.super Landroid/widget/ProgressBar;
.source "ProgressArcView.java"


# instance fields
.field private arcColor:I

.field private arcWidth:I

.field private internalListener:Lcom/github/jorgecastilloprz/progressarc/ArcListener;

.field private roundedStroke:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arcColor"    # I
    .param p3, "arcWidth"    # I
    .param p4, "roundedStroke"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 44
    iput p2, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->arcColor:I

    .line 45
    iput p3, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->arcWidth:I

    .line 46
    iput-boolean p4, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->roundedStroke:Z

    .line 47
    invoke-virtual {p0, p2, p3, p4}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->init(IIZ)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getDrawable()Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->setupInitialAlpha()V

    return-void
.end method

.method private getDrawable()Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    .local v0, "ret":Landroid/graphics/drawable/Drawable;
    check-cast v0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    .end local v0    # "ret":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private setupInitialAlpha()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->setAlpha(F)V

    .line 58
    return-void
.end method


# virtual methods
.method public getScaleDownAnimator()Landroid/animation/AnimatorSet;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 101
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->arcWidth:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 103
    .local v2, "scalePercent":F
    const-string v4, "scaleX"

    new-array v5, v8, [F

    aput v2, v5, v7

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 104
    .local v0, "arcScaleX":Landroid/animation/ValueAnimator;
    const-string v4, "scaleY"

    new-array v5, v8, [F

    aput v2, v5, v7

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 106
    .local v1, "arcScaleY":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 107
    .local v3, "set":Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 109
    new-instance v4, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$2;

    invoke-direct {v4, p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$2;-><init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 124
    return-object v3
.end method

.method public init(IIZ)V
    .locals 2
    .param p1, "arcColor"    # I
    .param p2, "arcWidth"    # I
    .param p3, "roundedStroke"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->setupInitialAlpha()V

    .line 52
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    int-to-float v1, p2

    invoke-direct {v0, v1, p1, p3}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;-><init>(FIZ)V

    .line 53
    .local v0, "arcDrawable":Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;
    invoke-virtual {p0, v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method

.method public requestCompleteAnimation()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getDrawable()Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->internalListener:Lcom/github/jorgecastilloprz/progressarc/ArcListener;

    invoke-virtual {v0, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->requestCompleteAnimation(Lcom/github/jorgecastilloprz/progressarc/ArcListener;)V

    .line 93
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getDrawable()Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->reset()V

    .line 82
    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 83
    .local v0, "arcScaleX":Landroid/animation/ValueAnimator;
    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 85
    .local v1, "arcScaleY":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 86
    .local v2, "set":Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 88
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 89
    return-void
.end method

.method public setInternalListener(Lcom/github/jorgecastilloprz/progressarc/ArcListener;)V
    .locals 0
    .param p1, "internalListener"    # Lcom/github/jorgecastilloprz/progressarc/ArcListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->internalListener:Lcom/github/jorgecastilloprz/progressarc/ArcListener;

    .line 62
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;

    invoke-direct {v0, p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;-><init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)V

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 71
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->getDrawable()Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->stop()V

    .line 75
    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 76
    .local v0, "fadeOutAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 77
    return-void

    .line 75
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
