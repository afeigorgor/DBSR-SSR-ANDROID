.class Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;
.super Ljava/lang/Object;
.source "ScrimInsetsFrameLayout.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;


# direct methods
.method constructor <init>(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;->this$0:Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;->this$0:Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    invoke-static {v0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->access$000(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;->this$0:Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->access$002(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;->this$0:Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    invoke-static {v0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->access$000(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    .line 81
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 82
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    .line 83
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    .line 80
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 84
    iget-object v1, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;->this$0:Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;->this$0:Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    invoke-static {v0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->access$100(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 85
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;->this$0:Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 86
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;->this$0:Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    invoke-static {v0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->access$200(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;)Lcom/mikepenz/materialize/view/OnInsetsCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout$1;->this$0:Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;

    invoke-static {v0}, Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;->access$200(Lcom/mikepenz/materialize/view/ScrimInsetsFrameLayout;)Lcom/mikepenz/materialize/view/OnInsetsCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/mikepenz/materialize/view/OnInsetsCallback;->onInsetsChanged(Landroid/support/v4/view/WindowInsetsCompat;)V

    .line 89
    :cond_1
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0

    .line 84
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
