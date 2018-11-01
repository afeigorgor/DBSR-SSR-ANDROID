.class public Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "FloatingActionMenuBehavior.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Lcom/github/clans/fab/FloatingActionMenu;",
        ">;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private fabTranslationY:F

.field private fabTranslationYAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private fabTranslationY()F
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationY:F

    return v0
.end method

.method private fabTranslationYAnimator()Landroid/animation/ValueAnimator;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationYAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private fabTranslationYAnimator_$eq(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "x$1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationYAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private fabTranslationY_$eq(F)V
    .locals 0
    .param p1, "x$1"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationY:F

    return-void
.end method


# virtual methods
.method public final com$github$shadowsocks$widget$FloatingActionMenuBehavior$$onAnimationUpdate$body$1(Landroid/animation/ValueAnimator;Lcom/github/clans/fab/FloatingActionMenu;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;
    .param p2, "child$1"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/github/clans/fab/FloatingActionMenu;->setTranslationY(F)V

    return-void
.end method

.method public bridge synthetic layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "x$1"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "x$2"    # Landroid/view/View;
    .param p3, "x$3"    # Landroid/view/View;

    .prologue
    .line 20
    check-cast p2, Lcom/github/clans/fab/FloatingActionMenu;

    .end local p2    # "x$2":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;Landroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/github/clans/fab/FloatingActionMenu;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    .line 26
    instance-of v0, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    return v0
.end method

.method public bridge synthetic onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p1, "x$1"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "x$2"    # Landroid/view/View;
    .param p3, "x$3"    # Landroid/view/View;

    .prologue
    .line 20
    check-cast p2, Lcom/github/clans/fab/FloatingActionMenu;

    .end local p2    # "x$2":Landroid/view/View;
    invoke-virtual {p0, p1, p2, p3}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;Landroid/view/View;)Z
    .locals 6
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/github/clans/fab/FloatingActionMenu;
    .param p3, "dependency"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 29
    .line 30
    instance-of v2, p3, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v2, :cond_5

    .line 31
    sget-object v2, Lscala/collection/JavaConverters$;->MODULE$:Lscala/collection/JavaConverters$;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/collection/JavaConverters$;->asScalaBufferConverter(Ljava/util/List;)Lscala/collection/convert/Decorators$AsScala;

    move-result-object v2

    invoke-virtual {v2}, Lscala/collection/convert/Decorators$AsScala;->asScala()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/TraversableLike;

    .line 32
    new-instance v3, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$2;-><init>(Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;)V

    invoke-interface {v2, v3}, Lscala/collection/TraversableLike;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/TraversableLike;

    .line 33
    new-instance v3, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$3;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$3;-><init>(Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;)V

    sget-object v4, Lscala/collection/mutable/Buffer$;->MODULE$:Lscala/collection/mutable/Buffer$;

    invoke-virtual {v4}, Lscala/collection/mutable/Buffer$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lscala/collection/TraversableLike;->map(Lscala/Function1;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscala/collection/TraversableOnce;

    new-instance v3, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$4;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$4;-><init>(Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;)V

    invoke-interface {v2, v3}, Lscala/collection/TraversableOnce;->reduceOption(Lscala/Function2;)Lscala/Option;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$1;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$1;-><init>(Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;)V

    invoke-virtual {v2, v3}, Lscala/Option;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v1

    .line 34
    .local v1, "targetTransY":F
    int-to-float v2, v5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/4 v1, 0x0

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationY()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_4

    .line 36
    invoke-virtual {p2}, Lcom/github/clans/fab/FloatingActionMenu;->getTranslationY()F

    move-result v0

    .line 37
    .local v0, "currentTransY":F
    invoke-direct {p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationYAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationYAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationYAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 38
    :cond_1
    invoke-virtual {p2}, Lcom/github/clans/fab/FloatingActionMenu;->isShown()Z

    move-result v2

    if-eqz v2, :cond_3

    sub-float v2, v0, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {p2}, Lcom/github/clans/fab/FloatingActionMenu;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f2ac083    # 0.667f

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 39
    invoke-direct {p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationYAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    if-nez v2, :cond_2

    .line 40
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-direct {p0, v2}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationYAnimator_$eq(Landroid/animation/ValueAnimator;)V

    .line 41
    invoke-direct {p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationYAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v3}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 42
    invoke-direct {p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationYAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$5;

    invoke-direct {v3, p0, p2}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$5;-><init>(Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;Lcom/github/clans/fab/FloatingActionMenu;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 45
    :cond_2
    invoke-direct {p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationYAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v0, v3, v5

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 46
    invoke-direct {p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationYAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 48
    :goto_0
    invoke-direct {p0, v1}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->fabTranslationY_$eq(F)V

    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 51
    .end local v0    # "currentTransY":F
    :goto_1
    return v5

    .line 47
    .restart local v0    # "currentTransY":F
    :cond_3
    invoke-virtual {p2, v1}, Lcom/github/clans/fab/FloatingActionMenu;->setTranslationY(F)V

    goto :goto_0

    .line 35
    .end local v0    # "currentTransY":F
    :cond_4
    sget-object v2, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 29
    .end local v1    # "targetTransY":F
    :cond_5
    new-instance v2, Lscala/MatchError;

    invoke-direct {v2, p3}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8
    .param p1, "x$1"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "x$2"    # Landroid/view/View;
    .param p3, "x$3"    # Landroid/view/View;
    .param p4, "x$4"    # I
    .param p5, "x$5"    # I
    .param p6, "x$6"    # I
    .param p7, "x$7"    # I

    .prologue
    .line 20
    move-object v2, p2

    check-cast v2, Lcom/github/clans/fab/FloatingActionMenu;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;Landroid/view/View;IIII)V
    .locals 3
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/github/clans/fab/FloatingActionMenu;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I

    .prologue
    const/4 v2, 0x1

    .line 58
    invoke-super/range {p0 .. p7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 59
    add-int v0, p5, p7

    .line 60
    .local v0, "dy":I
    invoke-virtual {p2}, Lcom/github/clans/fab/FloatingActionMenu;->isMenuButtonHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    if-gez v0, :cond_0

    invoke-virtual {p2, v2}, Lcom/github/clans/fab/FloatingActionMenu;->showMenuButton(Z)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    if-lez v0, :cond_0

    invoke-virtual {p2, v2}, Lcom/github/clans/fab/FloatingActionMenu;->hideMenuButton(Z)V

    goto :goto_0
.end method

.method public bridge synthetic onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6
    .param p1, "x$1"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "x$2"    # Landroid/view/View;
    .param p3, "x$3"    # Landroid/view/View;
    .param p4, "x$4"    # Landroid/view/View;
    .param p5, "x$5"    # I

    .prologue
    .line 20
    move-object v2, p2

    check-cast v2, Lcom/github/clans/fab/FloatingActionMenu;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p2, "child"    # Lcom/github/clans/fab/FloatingActionMenu;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "nestedScrollAxes"    # I

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
