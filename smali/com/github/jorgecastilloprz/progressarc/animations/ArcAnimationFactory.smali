.class public Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory;
.super Ljava/lang/Object;
.source "ArcAnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$1;,
        Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public buildAnimation(Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .locals 3
    .param p1, "type"    # Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;
    .param p2, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "animatorListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 43
    sget-object v1, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$1;->$SwitchMap$com$github$jorgecastilloprz$progressarc$animations$ArcAnimationFactory$Type:[I

    invoke-virtual {p1}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimationFactory$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 54
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/CompleteArcAnimation;

    invoke-direct {v0, p2, p3}, Lcom/github/jorgecastilloprz/progressarc/animations/CompleteArcAnimation;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 57
    .local v0, "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    :goto_0
    invoke-interface {v0}, Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v1

    return-object v1

    .line 45
    .end local v0    # "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    :pswitch_0
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;

    invoke-direct {v0, p2}, Lcom/github/jorgecastilloprz/progressarc/animations/RotateArcAnimation;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 46
    .restart local v0    # "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    goto :goto_0

    .line 48
    .end local v0    # "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    :pswitch_1
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/GrowArcAnimation;

    invoke-direct {v0, p2, p3}, Lcom/github/jorgecastilloprz/progressarc/animations/GrowArcAnimation;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 49
    .restart local v0    # "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    goto :goto_0

    .line 51
    .end local v0    # "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    :pswitch_2
    new-instance v0, Lcom/github/jorgecastilloprz/progressarc/animations/ShrinkArcAnimation;

    invoke-direct {v0, p2, p3}, Lcom/github/jorgecastilloprz/progressarc/animations/ShrinkArcAnimation;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    .restart local v0    # "arcAnimation":Lcom/github/jorgecastilloprz/progressarc/animations/ArcAnimation;
    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
