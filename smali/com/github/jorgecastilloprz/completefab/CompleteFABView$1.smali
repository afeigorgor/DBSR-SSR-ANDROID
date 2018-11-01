.class Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;
.super Ljava/lang/Object;
.source "CompleteFABView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getAnimatorListener()Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 136
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->access$000(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->access$000(Lcom/github/jorgecastilloprz/completefab/CompleteFABView;)Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/jorgecastilloprz/completefab/CompleteFABListener;->onCompleteFABAnimationEnd()V

    .line 133
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 139
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$1;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->setVisibility(I)V

    .line 127
    return-void
.end method
