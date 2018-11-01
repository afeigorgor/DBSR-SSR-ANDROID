.class public Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TaskerActivity.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/TaskerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProfilesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lcom/github/shadowsocks/TaskerActivity;

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
.method public constructor <init>(Lcom/github/shadowsocks/TaskerActivity;)V
    .locals 3
    .param p1, "$outer"    # Lcom/github/shadowsocks/TaskerActivity;

    .prologue
    .line 85
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->$outer:Lcom/github/shadowsocks/TaskerActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 86
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/ProfileManager;->getAllProfiles()Lscala/Option;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter$$anonfun$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter$$anonfun$1;-><init>(Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;)V

    invoke-virtual {v0, v1}, Lscala/Option;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/List;

    iput-object v0, p0, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->profiles:Lscala/collection/immutable/List;

    .line 92
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

    iput-object v0, p0, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->name:Ljava/lang/String;

    return-void

    :cond_1
    const-string v0, "holo"

    goto :goto_0
.end method

.method private name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public synthetic com$github$shadowsocks$TaskerActivity$ProfilesAdapter$$$outer()Lcom/github/shadowsocks/TaskerActivity;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->$outer:Lcom/github/shadowsocks/TaskerActivity;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->profiles()Lscala/collection/immutable/List;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/List;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x$1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x$2"    # I

    .prologue
    .line 85
    check-cast p1, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;

    .end local p1    # "x$1":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->onBindViewHolder(Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;I)V
    .locals 2
    .param p1, "vh"    # Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 88
    packed-switch p2, :pswitch_data_0

    .line 90
    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->profiles()Lscala/collection/immutable/List;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/List;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    invoke-virtual {p1, v0}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->bind(Lcom/github/shadowsocks/database/Profile;)V

    .line 88
    :goto_0
    return-void

    .line 89
    :pswitch_0
    invoke-virtual {p1}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;->bindDefault()V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x$1"    # Landroid/view/ViewGroup;
    .param p2, "x$2"    # I

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;
    .locals 7
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 93
    new-instance v0, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;

    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->com$github$shadowsocks$TaskerActivity$ProfilesAdapter$$$outer()Lcom/github/shadowsocks/TaskerActivity;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 94
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->name()Ljava/lang/String;

    move-result-object v4

    const-string v5, "layout"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 93
    invoke-direct {v0, v1, v2}, Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;-><init>(Lcom/github/shadowsocks/TaskerActivity;Landroid/view/View;)V

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
    .line 86
    iget-object v0, p0, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->profiles:Lscala/collection/immutable/List;

    return-object v0
.end method
