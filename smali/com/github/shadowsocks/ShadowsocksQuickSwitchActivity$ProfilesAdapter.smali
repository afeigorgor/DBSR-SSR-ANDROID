.class public Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ShadowsocksQuickSwitchActivity.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfilesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;

.field private final name:Ljava/lang/String;

.field private final profiles:Lscala/collection/immutable/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/List",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;)V
    .locals 3
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;

    .prologue
    .line 42
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->$outer:Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/ProfileManager;->getAllProfiles()Lscala/Option;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter$$anonfun$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter$$anonfun$1;-><init>(Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;)V

    invoke-virtual {v0, v1}, Lscala/Option;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->profiles:Lscala/collection/immutable/List;

    .line 51
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "select_dialog_singlechoice_"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const-string v0, "material"

    :goto_0
    invoke-virtual {v1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->name:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "holo"

    goto :goto_0
.end method

.method private name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public synthetic com$github$shadowsocks$ShadowsocksQuickSwitchActivity$ProfilesAdapter$$$outer()Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->$outer:Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->profiles()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->length()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x$1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x$2"    # I

    .prologue
    .line 42
    check-cast p1, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;

    .end local p1    # "x$1":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->onBindViewHolder(Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;I)V
    .locals 1
    .param p1, "vh"    # Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->profiles()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0, p2}, Lscala/collection/immutable/List;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {p1, v0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;->bind(Lcom/github/shadowsocks/database/Profile;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 47
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x$1"    # Landroid/view/ViewGroup;
    .param p2, "x$2"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;
    .locals 7
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 53
    new-instance v0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->com$github$shadowsocks$ShadowsocksQuickSwitchActivity$ProfilesAdapter$$$outer()Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 54
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "layout"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 53
    invoke-direct {v0, v1, v2}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;-><init>(Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;Landroid/view/View;)V

    return-object v0
.end method

.method public profiles()Lscala/collection/immutable/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/List",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->profiles:Lscala/collection/immutable/List;

    return-object v0
.end method
