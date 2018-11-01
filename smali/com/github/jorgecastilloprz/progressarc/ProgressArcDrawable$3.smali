.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;
.super Ljava/lang/Object;
.source "ProgressArcDrawable.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->setupGrowAnimation()V
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
    .line 111
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->cancelled:Z

    .line 128
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->cancelled:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$300(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)V

    .line 122
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$400(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 124
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 131
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->cancelled:Z

    .line 116
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable$3;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->access$202(Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;Z)Z

    .line 117
    return-void
.end method
