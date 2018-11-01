.class public Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ProfileManagerActivity.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSRSubAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity;

.field private profiles:Lscala/collection/mutable/ArrayBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/ArrayBuffer",
            "<",
            "Lcom/github/shadowsocks/database/SSRSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V
    .locals 3
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;

    .prologue
    .line 397
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 398
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->profiles:Lscala/collection/mutable/ArrayBuffer;

    .line 399
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager()Lcom/github/shadowsocks/database/SSRSubManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/SSRSubManager;->getAllSSRSubs()Lscala/Option;

    move-result-object v0

    new-instance v2, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter$$anonfun$3;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter$$anonfun$3;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;)V

    invoke-virtual {v0, v2}, Lscala/Option;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    invoke-virtual {v1, v0}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    return-void
.end method


# virtual methods
.method public add(Lcom/github/shadowsocks/database/SSRSub;)V
    .locals 2
    .param p1, "item"    # Lcom/github/shadowsocks/database/SSRSub;

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->com$github$shadowsocks$ProfileManagerActivity$SSRSubAdapter$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$undoManager()Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->flush()V

    .line 410
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->getItemCount()I

    move-result v0

    .line 411
    .local v0, "pos":I
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 412
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public synthetic com$github$shadowsocks$ProfileManagerActivity$SSRSubAdapter$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->length()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x$1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x$2"    # I

    .prologue
    .line 397
    check-cast p1, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;

    .end local p1    # "x$1":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->onBindViewHolder(Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;I)V
    .locals 1
    .param p1, "vh"    # Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/SSRSub;

    invoke-virtual {p1, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;->bind(Lcom/github/shadowsocks/database/SSRSub;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x$1"    # Landroid/view/ViewGroup;
    .param p2, "x$2"    # I

    .prologue
    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;
    .locals 5
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 406
    new-instance v0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->com$github$shadowsocks$ProfileManagerActivity$SSRSubAdapter$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040034

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Landroid/view/View;)V

    return-object v0
.end method

.method public profiles()Lscala/collection/mutable/ArrayBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuffer",
            "<",
            "Lcom/github/shadowsocks/database/SSRSub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->profiles:Lscala/collection/mutable/ArrayBuffer;

    return-object v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ArrayBuffer;->remove(I)Ljava/lang/Object;

    .line 417
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;->notifyItemRemoved(I)V

    return-void
.end method
