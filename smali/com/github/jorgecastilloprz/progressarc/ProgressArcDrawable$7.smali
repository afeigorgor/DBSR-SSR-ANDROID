.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupCompleteAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->cancelled:Z

    .line 201
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->cancelled:Z

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->stop()V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$700(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$1000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Lcom/github/jorgecastilloprz/progressarc/ArcListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/jorgecastilloprz/progressarc/ArcListener;->onArcAnimationComplete()V

    .line 197
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 204
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->cancelled:Z

    .line 185
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$202(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;Z)Z

    .line 186
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$900(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 187
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$7;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$900(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 188
    return-void
.end method
