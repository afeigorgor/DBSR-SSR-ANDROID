.class Lcom/github/jorgecastilloprz/completefab/CompleteFABView$2;
.super Ljava/lang/Object;
.source "CompleteFABView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->getInverseAnimatorListener()Landroid/animation/Animator$AnimatorListener;
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
    .line 144
    iput-object p1, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$2;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 153
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/github/jorgecastilloprz/completefab/CompleteFABView$2;->this$0:Lcom/github/jorgecastilloprz/completefab/CompleteFABView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/github/jorgecastilloprz/completefab/CompleteFABView;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 156
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 146
    return-void
.end method
