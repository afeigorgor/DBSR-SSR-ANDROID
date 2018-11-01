.class public Lcom/github/jorgecastilloprz/completefab/CompleteFABView;
.super Landroid/widget/FrameLayout;
.source "CompleteFABView.java"


# instance fields
.field private final RESET_DELAY:I

.field private arcColor:I

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private listener:Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

.field private viewsAdded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "arcColor"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->RESET_DELAY:I

    .line 50
    iput-object p2, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    iput p3, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->arcColor:I

    .line 52
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->init()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;
    .locals 1
    .param p0, "x0"    # Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->listener:Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

    return-object v0
.end method

.method private animate(Landroid/animation/AnimatorSet;Z)V
    .locals 11
    .param p1, "progressArcAnimator"    # Landroid/animation/AnimatorSet;
    .param p2, "inverse"    # Z

    .prologue
    .line 96
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "alpha"

    const/4 v6, 0x1

    new-array v9, v6, [F

    const/4 v10, 0x0

    if-eqz p2, :cond_1

    const/4 v6, 0x0

    :goto_0
    aput v6, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 97
    .local v1, "completeFabAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v6, 0x12c

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    sget v6, Lcom/github/jorgecastilloprz/library/R$id;->completeFabIcon:I

    invoke-virtual {p0, v6}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "icon":Landroid/view/View;
    const-string v6, "scaleX"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 102
    .local v4, "iconScaleAnimX":Landroid/animation/ValueAnimator;
    const-string v6, "scaleY"

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_1

    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 104
    .local v5, "iconScaleAnimY":Landroid/animation/ValueAnimator;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 105
    .local v3, "iconAnimInterpolator":Landroid/view/animation/Interpolator;
    const-wide/16 v6, 0xfa

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 106
    const-wide/16 v6, 0xfa

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 109
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    if-eqz p2, :cond_2

    .line 110
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 116
    :goto_1
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getInverseAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    :goto_2
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    if-eqz p2, :cond_0

    .line 118
    const-wide/16 v6, 0xbb8

    invoke-virtual {v0, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 120
    :cond_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 121
    return-void

    .line 96
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v1    # "completeFabAnim":Landroid/animation/ValueAnimator;
    .end local v2    # "icon":Landroid/view/View;
    .end local v3    # "iconAnimInterpolator":Landroid/view/animation/Interpolator;
    .end local v4    # "iconScaleAnimX":Landroid/animation/ValueAnimator;
    .end local v5    # "iconScaleAnimY":Landroid/animation/ValueAnimator;
    :cond_1
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_0

    .line 112
    .restart local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .restart local v1    # "completeFabAnim":Landroid/animation/ValueAnimator;
    .restart local v2    # "icon":Landroid/view/View;
    .restart local v3    # "iconAnimInterpolator":Landroid/view/animation/Interpolator;
    .restart local v4    # "iconScaleAnimX":Landroid/animation/ValueAnimator;
    .restart local v5    # "iconScaleAnimY":Landroid/animation/ValueAnimator;
    :cond_2
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 116
    :cond_3
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;

    move-result-object v6

    goto :goto_2

    .line 101
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 102
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;

    invoke-direct {v0, p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;-><init>(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)V

    return-object v0
.end method

.method private getInverseAnimatorListener()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$2;

    invoke-direct {v0, p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$2;-><init>(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)V

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/github/jorgecastilloprz/library/R$layout;->complete_fab:I

    invoke-static {v0, v1, p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    return-void
.end method

.method private setIcon()V
    .locals 3

    .prologue
    .line 70
    sget v1, Lcom/github/jorgecastilloprz/library/R$id;->completeFabIcon:I

    invoke-virtual {p0, v1}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 71
    .local v0, "iconView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/github/jorgecastilloprz/library/R$drawable;->ic_done:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private setupContentSize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/github/jorgecastilloprz/library/R$dimen;->fab_content_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 87
    .local v0, "contentSize":I
    invoke-virtual {p0, v4}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v1, v2, 0x2

    .line 88
    .local v1, "mContentPadding":I
    invoke-virtual {p0, v4}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    return-void
.end method

.method private tintCompleteFabWithArcColor()V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/github/jorgecastilloprz/library/R$drawable;->oval_complete:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->arcColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    sget v1, Lcom/github/jorgecastilloprz/library/R$id;->completeFabRoot:I

    invoke-virtual {p0, v1}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    return-void
.end method


# virtual methods
.method public animate(Landroid/animation/AnimatorSet;)V
    .locals 1
    .param p1, "progressArcAnimator"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->animate(Landroid/animation/AnimatorSet;Z)V

    .line 93
    return-void
.end method

.method public attachListener(Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->listener:Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

    .line 57
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 77
    iget-boolean v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->viewsAdded:Z

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->setupContentSize()V

    .line 79
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->tintCompleteFabWithArcColor()V

    .line 80
    invoke-direct {p0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->setIcon()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->viewsAdded:Z

    .line 83
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->animate(Landroid/animation/AnimatorSet;Z)V

    .line 162
    return-void
.end method
