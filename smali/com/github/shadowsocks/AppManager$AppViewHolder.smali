.class public final Lcom/github/shadowsocks/AppManager$AppViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AppManager.scala"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/AppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppViewHolder"
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/AppManager;

.field private final check:Landroid/widget/Switch;

.field private final icon:Landroid/widget/ImageView;

.field private item:Lcom/github/shadowsocks/AppManager$ProxiedApp;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/AppManager;Landroid/view/View;)V
    .locals 2
    .param p1, "$outer"    # Lcom/github/shadowsocks/AppManager;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 97
    iput-object p2, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->view:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1100aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->icon:Landroid/widget/ImageView;

    .line 99
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f1100ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->check:Landroid/widget/Switch;

    .line 101
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private check()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->check:Landroid/widget/Switch;

    return-object v0
.end method

.method private icon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private item()Lcom/github/shadowsocks/AppManager$ProxiedApp;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->item:Lcom/github/shadowsocks/AppManager$ProxiedApp;

    return-object v0
.end method

.method private item_$eq(Lcom/github/shadowsocks/AppManager$ProxiedApp;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/AppManager$ProxiedApp;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->item:Lcom/github/shadowsocks/AppManager$ProxiedApp;

    return-void
.end method

.method private proxied()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$proxiedApps()Lscala/collection/mutable/HashSet;

    move-result-object v0

    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->item()Lcom/github/shadowsocks/AppManager$ProxiedApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->packageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bind(Lcom/github/shadowsocks/AppManager$ProxiedApp;)V
    .locals 2
    .param p1, "app"    # Lcom/github/shadowsocks/AppManager$ProxiedApp;

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->item_$eq(Lcom/github/shadowsocks/AppManager$ProxiedApp;)V

    .line 107
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->icon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->icon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->check()Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->check()Landroid/widget/Switch;

    move-result-object v0

    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->proxied()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->proxied()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$proxiedApps()Lscala/collection/mutable/HashSet;

    move-result-object v0

    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->item()Lcom/github/shadowsocks/AppManager$ProxiedApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->packageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/HashSet;->remove(Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->check()Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appsLoading()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    iget-object v1, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$proxiedApps()Lscala/collection/mutable/HashSet;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/HashSet;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/Profile;->individual_$eq(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    .line 112
    :cond_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager$AppViewHolder;->$outer:Lcom/github/shadowsocks/AppManager;

    invoke-virtual {v0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$proxiedApps()Lscala/collection/mutable/HashSet;

    move-result-object v0

    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->item()Lcom/github/shadowsocks/AppManager$ProxiedApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/AppManager$ProxiedApp;->packageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager$AppViewHolder;->check()Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
