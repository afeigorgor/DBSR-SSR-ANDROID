.class public final Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$5;
.super Ljava/lang/Object;
.source "FloatingActionMenuBehavior.scala"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Lcom/github/clans/fab/FloatingActionMenu;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;

.field private final child$1:Lcom/github/clans/fab/FloatingActionMenu;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;Lcom/github/clans/fab/FloatingActionMenu;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;
    .param p2, "child$1"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 42
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$5;->$outer:Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;

    iput-object p2, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$5;->child$1:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$5;->$outer:Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;

    iget-object v1, p0, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$5;->child$1:Lcom/github/clans/fab/FloatingActionMenu;

    invoke-virtual {v0, p1, v1}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;->com$github$shadowsocks$widget$FloatingActionMenuBehavior$$onAnimationUpdate$body$1(Landroid/animation/ValueAnimator;Lcom/github/clans/fab/FloatingActionMenu;)V

    return-void
.end method
