.class public final Lcom/github/shadowsocks/AppManager$AppsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AppManager.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppsAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/github/shadowsocks/AppManager$AppViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/AppManager;

.field private final apps:[Lcom/github/shadowsocks/AppManager$ProxiedApp;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/AppManager;)V
    .locals 3
    .param p1, "$outer"    # Lcom/github/shadowsocks/AppManager;

    .prologue
    .line 127
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$AppsAdapter;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 128
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    sget-object v0, Lcom/github/shadowsocks/AppManager$;->MODULE$:Lcom/github/shadowsocks/AppManager$;

    invoke-virtual {p1}, Lcom/github/shadowsocks/AppManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/AppManager$;->com$github$shadowsocks$AppManager$$getApps(Landroid/content/pm/PackageManager;)[Lcom/github/shadowsocks/AppManager$ProxiedApp;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/AppManager$AppsAdapter$$anonfun$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/AppManager$AppsAdapter$$anonfun$1;-><init>(Lcom/github/shadowsocks/AppManager$AppsAdapter;)V

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->sortWith(Lscala/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/shadowsocks/AppManager$ProxiedApp;

    iput-object v0, p0, Lcom/github/shadowsocks/AppManager$AppsAdapter;->apps:[Lcom/github/shadowsocks/AppManager$ProxiedApp;

    return-void
.end method

.method private apps()[Lcom/github/shadowsocks/AppManager$ProxiedApp;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppsAdapter;->apps:[Lcom/github/shadowsocks/AppManager$ProxiedApp;

    return-object v0
.end method


# virtual methods
.method public synthetic com$github$shadowsocks$AppManager$AppsAdapter$$$outer()Lcom/github/shadowsocks/AppManager;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppsAdapter;->$outer:Lcom/github/shadowsocks/AppManager;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppsAdapter;->apps()[Lcom/github/shadowsocks/AppManager$ProxiedApp;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1, "x$1"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "x$2"    # I

    .prologue
    .line 127
    check-cast p1, Lcom/github/shadowsocks/AppManager$AppViewHolder;

    .end local p1    # "x$1":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/AppManager$AppsAdapter;->onBindViewHolder(Lcom/github/shadowsocks/AppManager$AppViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/github/shadowsocks/AppManager$AppViewHolder;I)V
    .locals 1
    .param p1, "vh"    # Lcom/github/shadowsocks/AppManager$AppViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppsAdapter;->apps()[Lcom/github/shadowsocks/AppManager$ProxiedApp;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->bind(Lcom/github/shadowsocks/AppManager$ProxiedApp;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "x$1"    # Landroid/view/ViewGroup;
    .param p2, "x$2"    # I

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/AppManager$AppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/shadowsocks/AppManager$AppViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/github/shadowsocks/AppManager$AppViewHolder;
    .locals 5
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    .line 136
    new-instance v0, Lcom/github/shadowsocks/AppManager$AppViewHolder;

    iget-object v1, p0, Lcom/github/shadowsocks/AppManager$AppsAdapter;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/shadowsocks/AppManager$AppViewHolder;-><init>(Lcom/github/shadowsocks/AppManager;Landroid/view/View;)V

    return-object v0
.end method
