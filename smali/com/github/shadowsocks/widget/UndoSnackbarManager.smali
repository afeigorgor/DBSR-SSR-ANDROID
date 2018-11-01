.class public Lcom/github/shadowsocks/widget/UndoSnackbarManager;
.super Ljava/lang/Object;
.source "UndoSnackbarManager.scala"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field public final com$github$shadowsocks$widget$UndoSnackbarManager$$commit:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "TT;>;>;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field private com$github$shadowsocks$widget$UndoSnackbarManager$$last:Landroid/support/design/widget/Snackbar;

.field private final com$github$shadowsocks$widget$UndoSnackbarManager$$recycleBin:Lscala/collection/mutable/ArrayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/ArrayBuffer",
            "<",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final removedCallback:Landroid/support/design/widget/Snackbar$Callback;

.field private final undo:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "TT;>;>;",
            "Lscala/runtime/BoxedUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lscala/Function1;Lscala/Function1;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "undo"    # Lscala/Function1;
    .param p3, "commit"    # Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lscala/Function1",
            "<",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "TT;>;>;",
            "Lscala/runtime/BoxedUnit;",
            ">;",
            "Lscala/Function1",
            "<",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "TT;>;>;",
            "Lscala/runtime/BoxedUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    iput-object p1, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->undo:Lscala/Function1;

    .line 17
    iput-object p3, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$commit:Lscala/Function1;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$recycleBin:Lscala/collection/mutable/ArrayBuffer;

    .line 19
    new-instance v0, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anon$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anon$1;-><init>(Lcom/github/shadowsocks/widget/UndoSnackbarManager;)V

    iput-object v0, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->removedCallback:Landroid/support/design/widget/Snackbar$Callback;

    return-void
.end method

.method private com$github$shadowsocks$widget$UndoSnackbarManager$$last()Landroid/support/design/widget/Snackbar;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$last:Landroid/support/design/widget/Snackbar;

    return-object v0
.end method

.method private removedCallback()Landroid/support/design/widget/Snackbar$Callback;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->removedCallback:Landroid/support/design/widget/Snackbar$Callback;

    return-object v0
.end method


# virtual methods
.method public com$github$shadowsocks$widget$UndoSnackbarManager$$last_$eq(Landroid/support/design/widget/Snackbar;)V
    .locals 0
    .param p1, "x$1"    # Landroid/support/design/widget/Snackbar;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$last:Landroid/support/design/widget/Snackbar;

    return-void
.end method

.method public final com$github$shadowsocks$widget$UndoSnackbarManager$$onClick$body$1(Landroid/view/View;)V
    .locals 2
    .param p1, "x$1"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->undo:Lscala/Function1;

    invoke-virtual {p0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$recycleBin()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/ArrayBuffer;->reverseIterator()Lscala/collection/Iterator;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$recycleBin()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->clear()V

    return-void
.end method

.method public com$github$shadowsocks$widget$UndoSnackbarManager$$recycleBin()Lscala/collection/mutable/ArrayBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuffer",
            "<",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "TT;>;>;"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$recycleBin:Lscala/collection/mutable/ArrayBuffer;

    return-object v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$last()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$last()Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->dismiss()V

    :cond_0
    return-void
.end method

.method public remove(ILjava/lang/Object;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$recycleBin()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v2

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v1, v7, [Lscala/Tuple2;

    new-instance v4, Lscala/Tuple2;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5, p2}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v6

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lscala/Predef$;->wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Lscala/collection/mutable/ArrayBuffer;->append(Lscala/collection/Seq;)V

    .line 35
    invoke-virtual {p0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$recycleBin()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/ArrayBuffer;->length()I

    move-result v0

    .line 37
    .local v0, "count":I
    iget-object v1, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0e0000

    new-array v4, v7, [Ljava/lang/Object;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v5, v0}, Lscala/Predef$;->int2Integer(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 38
    invoke-direct {p0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->removedCallback()Landroid/support/design/widget/Snackbar$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/Snackbar;->setCallback(Landroid/support/design/widget/Snackbar$Callback;)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    const v2, 0x7f0900cb

    new-instance v3, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anonfun$1;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager$$anonfun$1;-><init>(Lcom/github/shadowsocks/widget/UndoSnackbarManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v1

    .line 36
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$last_$eq(Landroid/support/design/widget/Snackbar;)V

    .line 42
    invoke-direct {p0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->com$github$shadowsocks$widget$UndoSnackbarManager$$last()Landroid/support/design/widget/Snackbar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method
