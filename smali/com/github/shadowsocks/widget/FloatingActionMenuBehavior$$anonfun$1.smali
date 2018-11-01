.class public final Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$1;
.super Lscala/runtime/AbstractFunction0$mcF$sp;
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


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior;

    .prologue
    .line 33
    invoke-direct {p0}, Lscala/runtime/AbstractFunction0$mcF$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply()F
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$1;->apply$mcF$sp()F

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$1;->apply()F

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public apply$mcF$sp()F
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
