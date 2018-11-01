.class public Lcom/github/jorgecastilloprz/progressarc/animations/GrowArcAnimation;
.super Ljava/lang/Object;
.source "GrowArcAnimation.java"

# interfaces
.implements Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;


# instance fields
.field private growAnim:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V
    .locals 4
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/GrowArcAnimation;->growAnim:Landroid/animation/ValueAnimator;

    .line 33
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/GrowArcAnimation;->growAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 34
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/GrowArcAnimation;->growAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 35
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/GrowArcAnimation;->growAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 36
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/GrowArcAnimation;->growAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 37
    return-void

    .line 31
    nop

    :array_0
    .array-data 4
        0x41a00000    # 20.0f
        0x43960000    # 300.0f
    .end array-data
.end method


# virtual methods
.method public getAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/animations/GrowArcAnimation;->growAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method
