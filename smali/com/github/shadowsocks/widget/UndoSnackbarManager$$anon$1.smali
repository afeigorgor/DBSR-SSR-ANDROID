.class public final Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anon$1;
.super Landroid/support/design/widget/Snackbar$Callback;
.source "UndoSnackbarManager.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/widget/UndoSnackbarManager;
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
    .line 19
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anon$1;->$outer:Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    invoke-direct {p0}, Landroid/support/design/widget/Snackbar$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Landroid/support/design/widget/Snackbar;I)V
    .locals 2
    .param p1, "snackbar"    # Landroid/support/design/widget/Snackbar;
    .param p2, "event"    # I

    .prologue
    .line 21
    packed-switch p2, :pswitch_data_0

    .line 28
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anon$1;->$outer:Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$last_$eq(Landroid/support/design/widget/Snackbar;)V

    return-void

    .line 24
    :pswitch_1
    iget-object v0, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anon$1;->$outer:Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    iget-object v0, v0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$commit:Lscala/Function1;

    if-nez v0, :cond_0

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 25
    :goto_1
    iget-object v0, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anon$1;->$outer:Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    invoke-virtual {v0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$recycleBin()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->clear()V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anon$1;->$outer:Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    iget-object v0, v0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$commit:Lscala/Function1;

    iget-object v1, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anon$1;->$outer:Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    invoke-virtual {v1}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$recycleBin()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/ArrayBuffer;->iterator()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/Object;
    .param p2, "x$2"    # I

    .prologue
    .line 19
    check-cast p1, Landroid/support/design/widget/Snackbar;

    .end local p1    # "x$1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anon$1;->onDismissed(Landroid/support/design/widget/Snackbar;I)V

    return-void
.end method
