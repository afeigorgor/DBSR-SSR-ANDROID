.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$1;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupRotateAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$1;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 97
    invoke-static {p1}, Lcom/github/jorgecastilloprz/utils/AnimationUtils;->getAnimatedFraction(Landroid/animation/ValueAnimator;)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float v0, v1, v2

    .line 98
    .local v0, "angle":F
    iget-object v1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$1;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-virtual {v1, v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->updateCurrentRotationAngle(F)V

    .line 99
    return-void
.end method
