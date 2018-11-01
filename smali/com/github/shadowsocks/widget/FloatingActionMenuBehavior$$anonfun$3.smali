.class public final Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$3;
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


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;

    .prologue
    .line 33
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/View;)F
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Landroid/view/View;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$3;->apply(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
