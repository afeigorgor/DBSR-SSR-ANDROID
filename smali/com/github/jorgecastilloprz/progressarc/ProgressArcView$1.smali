.class Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;
.super Ljava/lang/Object;
.source "ProgressArcView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;


# direct methods
.method constructor <init>(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->setAlpha(F)V

    .line 68
    iget-object v0, p0, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView$1;->this$0:Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;

    invoke-static {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;->access$000(Lcom/github/jorgecastilloprz/progressarc/ProgressArcView;)Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/progressarc/ProgressArcDrawable;->reset()V

    .line 69
    return-void
.end method
