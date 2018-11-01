.class public Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ProfileManagerActivity.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfilesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;",
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
            "Lcom/github/shadowsocks/database/Profile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V
    .locals 3
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;

    .prologue
    .line 309
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 310
    new-instance v0, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v0}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles:Lscala/collection/mutable/ArrayBuffer;

    .line 311
    invoke-virtual {p1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$is_sort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/ProfileManager;->getAllProfilesByElapsed()Lscala/Option;

    move-result-object v0

    new-instance v2, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$1;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;)V

    invoke-virtual {v0, v2}, Lscala/Option;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    invoke-virtual {v1, v0}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    .line 311
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/ProfileManager;->getAllProfiles()Lscala/Option;

    move-result-object v0

    new-instance v2, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$2;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$2;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;)V

    invoke-virtual {v0, v2}, Lscala/Option;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/TraversableOnce;

    invoke-virtual {v1, v0}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/github/shadowsocks/database/Profile;)V
    .locals 2
    .param p1, "item"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->com$github$shadowsocks$ProfileManagerActivity$ProfilesAdapter$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$undoManager()Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->flush()V

    .line 326
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->getItemCount()I

    move-result v0

    .line 327
    .local v0, "pos":I
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$eq(Ljava/lang/Object;)Lscala/collection/mutable/ArrayBuffer;

    .line 328
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public synthetic com$github$shadowsocks$ProfileManagerActivity$ProfilesAdapter$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    return-object v0
.end method

.method public commit(Lscala/collection/Iterator;)V
    .locals 2
    .param p1, "actions"    # Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 358
    new-instance v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$commit$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$commit$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->withFilter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$commit$2;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$commit$2;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->length()I

    move-result v0

    return v0
.end method

.method public move(II)V
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->com$github$shadowsocks$ProfileManagerActivity$ProfilesAdapter$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$undoManager()Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->flush()V

    .line 333
    if-ge p1, p2, :cond_0

    const/4 v2, 0x1

    .line 334
    .local v2, "step":I
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    .line 335
    .local v0, "first":Lcom/github/shadowsocks/database/Profile;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->userOrder()J

    move-result-wide v4

    invoke-static {v4, v5}, Lscala/runtime/LongRef;->create(J)Lscala/runtime/LongRef;

    move-result-object v1

    .local v1, "previousOrder":Lscala/runtime/LongRef;
    sget-object v3, Lscala/runtime/RichInt$;->MODULE$:Lscala/runtime/RichInt$;

    .line 336
    sget-object v4, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v4, p1}, Lscala/Predef$;->intWrapper(I)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Lscala/runtime/RichInt$;->until$extension0(II)Lscala/collection/immutable/Range;

    move-result-object v3

    invoke-virtual {v3, v2}, Lscala/collection/immutable/Range;->by(I)Lscala/collection/immutable/Range;

    move-result-object v3

    new-instance v4, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$move$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;ILscala/runtime/LongRef;)V

    invoke-virtual {v3, v4}, Lscala/collection/immutable/Range;->foreach(Lscala/Function1;)V

    .line 344
    iget-wide v4, v1, Lscala/runtime/LongRef;->elem:J

    invoke-virtual {v0, v4, v5}, Lcom/github/shadowsocks/database/Profile;->userOrder_$eq(J)V

    .line 345
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lscala/collection/mutable/ArrayBuffer;->update(ILjava/lang/Object;)V

    .line 346
    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->notifyItemMoved(II)V

    return-void

    .line 333
    .end local v0    # "first":Lcom/github/shadowsocks/database/Profile;
    .end local v1    # "previousOrder":Lscala/runtime/LongRef;
    .end local v2    # "step":I
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x$1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x$2"    # I

    .prologue
    .line 309
    check-cast p1, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    .end local p1    # "x$1":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->onBindViewHolder(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;I)V
    .locals 1
    .param p1, "vh"    # Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {p1, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->bind(Lcom/github/shadowsocks/database/Profile;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x$1"    # Landroid/view/ViewGroup;
    .param p2, "x$2"    # I

    .prologue
    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
    .locals 5
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 322
    new-instance v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->com$github$shadowsocks$ProfileManagerActivity$ProfilesAdapter$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040030

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Landroid/view/View;)V

    return-object v0
.end method

.method public profiles()Lscala/collection/mutable/ArrayBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/ArrayBuffer",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles:Lscala/collection/mutable/ArrayBuffer;

    return-object v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/mutable/ArrayBuffer;->remove(I)Ljava/lang/Object;

    .line 352
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public undo(Lscala/collection/Iterator;)V
    .locals 2
    .param p1, "actions"    # Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Iterator",
            "<",
            "Lscala/Tuple2",
            "<",
            "Ljava/lang/Object;",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$undo$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$undo$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;)V

    invoke-interface {p1, v0}, Lscala/collection/Iterator;->withFilter(Lscala/Function1;)Lscala/collection/Iterator;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$undo$2;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter$$anonfun$undo$2;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;)V

    invoke-interface {v0, v1}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    return-void
.end method
