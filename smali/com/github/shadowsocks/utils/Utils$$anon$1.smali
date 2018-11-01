.class public final Lcom/github/shadowsocks/utils/Utils$$anon$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Utils.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/utils/Utils$;->crossFade(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final from$1:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "from$1"    # Landroid/view/View;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/github/shadowsocks/utils/Utils$$anon$1;->from$1:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Utils$$anon$1;->from$1:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
