.class public final Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anonfun$1;
.super Ljava/lang/Object;
.source "UndoSnackbarManager.scala"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/widget/UndoSnackbarManager;->remove(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/widget/UndoSnackbarManager;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/widget/UndoSnackbarManager;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/widget/UndoSnackbarManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/shadowsocks/widget/UndoSnackbarManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anonfun$1;->$outer:Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "x$1"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anonfun$1;->$outer:Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$onClick$body$1(Landroid/view/View;)V

    return-void
.end method
