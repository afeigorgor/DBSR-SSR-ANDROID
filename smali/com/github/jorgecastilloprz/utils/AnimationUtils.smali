.class public Lcom/github/jorgecastilloprz/utils/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public static getAnimatedFraction(Landroid/animation/ValueAnimator;)F
    .locals 4
    .param p0, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    long-to-float v1, v2

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 29
    .local v0, "fraction":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 30
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    .line 31
    return v0
.end method
