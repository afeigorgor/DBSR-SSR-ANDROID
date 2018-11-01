.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupShrinkAnimation()V
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
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->cancelled:Z

    .line 164
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->cancelled:Z

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$500(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V

    .line 153
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$600(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$602(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;Z)Z

    .line 155
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$700(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$800(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 167
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$5;->cancelled:Z

    .line 148
    return-void
.end method
