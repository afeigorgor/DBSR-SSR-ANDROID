.class public abstract Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public onDismissed(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    .local p1, "transientBottomBar":Ljava/lang/Object;, "TB;"
    return-void
.end method

.method public onShown(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback;, "Landroid/support/design/widget/BaseTransientBottomBar$BaseCallback<TB;>;"
    .local p1, "transientBottomBar":Ljava/lang/Object;, "TB;"
    return-void
.end method
