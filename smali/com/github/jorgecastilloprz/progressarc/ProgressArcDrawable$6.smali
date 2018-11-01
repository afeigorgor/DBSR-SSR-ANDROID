.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$6;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupCompleteAnimation()V
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
    .line 173
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$6;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 176
    invoke-static {p1}, Lcom/github/jorgecastilloprz/utils/AnimationUtils;->getAnimatedFraction(Landroid/animation/ValueAnimator;)F

    move-result v1

    .line 177
    .local v1, "animatedFraction":F
    iget-object v2, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$6;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v2}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v3, v1

    add-float v0, v2, v3

    .line 178
    .local v0, "angle":F
    iget-object v2, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$6;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-virtual {v2, v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->updateCurrentSweepAngle(F)V

    .line 179
    return-void
.end method
