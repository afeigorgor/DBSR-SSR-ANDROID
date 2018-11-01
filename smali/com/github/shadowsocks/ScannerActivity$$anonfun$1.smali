.class public final Lcom/github/shadowsocks/ScannerActivity$$anonfun$1;
.super Ljava/lang/Object;
.source "ScannerActivity.scala"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ScannerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ScannerActivity;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ScannerActivity;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ScannerActivity;

    .prologue
    .line 58
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ScannerActivity$$anonfun$1;->$outer:Lcom/github/shadowsocks/ScannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "x$1"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/github/shadowsocks/ScannerActivity$$anonfun$1;->$outer:Lcom/github/shadowsocks/ScannerActivity;

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/ScannerActivity;->com$github$shadowsocks$ScannerActivity$$onClick$body$1(Landroid/view/View;)V

    return-void
.end method
