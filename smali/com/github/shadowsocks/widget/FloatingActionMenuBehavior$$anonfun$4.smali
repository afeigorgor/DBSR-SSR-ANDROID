.class public final Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$4;
.super Lscala/runtime/AbstractFunction2;
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
        "Lscala/runtime/AbstractFunction2",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
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
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(FF)F
    .locals 2
    .param p1, "x$1"    # F
    .param p2, "x$2"    # F

    .prologue
    sget-object v0, Lscala/runtime/RichFloat$;->MODULE$:Lscala/runtime/RichFloat$;

    .line 33
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1, p1}, Lscala/Predef$;->floatWrapper(F)F

    move-result v1

    invoke-virtual {v0, v1, p2}, Lscala/runtime/RichFloat$;->min$extension(FF)F

    move-result v0

    return v0
.end method

.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "v1"    # Ljava/lang/Object;
    .param p2, "v2"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v0

    invoke-static {p2}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/widget/FloatingActionMenuBehavior$$anonfun$4;->apply(FF)F

    move-result v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToFloat(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
