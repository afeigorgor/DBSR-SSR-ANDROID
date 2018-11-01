.class public final Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$2;
.super Lscala/runtime/AbstractFunction1;
.source "FloatingActionMenuBehavior.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Landroid/view/View;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final child$1:Lcom/github/clans/fab/FloatingActionMenu;

.field private final parent$1:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;
    .param p2, "parent$1"    # Landroid/support/design/widget/CoordinatorLayout;
    .param p3, "child$1"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 32
    iput-object p2, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$2;->parent$1:Landroid/support/design/widget/CoordinatorLayout;

    iput-object p3, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$2;->child$1:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Landroid/view/View;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$2;->apply(Landroid/view/View;)Z

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final apply(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 32
    instance-of v0, p1, Landroid/support/design/widget/Snackbar$SnackbarLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$2;->parent$1:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$2;->child$1:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout;->doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
