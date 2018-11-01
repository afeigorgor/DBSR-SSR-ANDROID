.class public Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ShadowsocksQuickSwitchActivity.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;,
        Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfileViewHolder;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final profilesAdapter:Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 57
    new-instance v0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;-><init>(Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;)V

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;->profilesAdapter:Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;

    return-void
.end method

.method private profilesAdapter()Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;->profilesAdapter:Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v3, 0x7f040031

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;->setContentView(I)V

    .line 63
    const v3, 0x7f1100b3

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 64
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    const v3, 0x7f090095

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 66
    const v3, 0x7f1100bc

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 67
    .local v1, "profilesList":Landroid/support/v7/widget/RecyclerView;
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, "lm":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 69
    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 70
    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;->profilesAdapter()Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 71
    sget-object v3, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;->profilesAdapter()Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$ProfilesAdapter;->profiles()Lscala/collection/immutable/List;

    move-result-object v3

    sget-object v4, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v4}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/collection/immutable/List;->zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/TraversableOnce;

    new-instance v4, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$$anonfun$onCreate$2;

    invoke-direct {v4, p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$$anonfun$onCreate$2;-><init>(Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;)V

    invoke-interface {v3, v4}, Lscala/collection/TraversableOnce;->collectFirst(Lscala/PartialFunction;)Lscala/Option;

    move-result-object v3

    .line 73
    new-instance v4, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$$anonfun$onCreate$1;

    invoke-direct {v4, p0}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity$$anonfun$onCreate$1;-><init>(Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;)V

    invoke-virtual {v3, v4}, Lscala/Option;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v3

    .line 71
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 74
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_1

    const-class v3, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/ShadowsocksQuickSwitchActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutManager;

    const-string v4, "switch"

    invoke-virtual {v3, v4}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 59
    :cond_1
    return-void
.end method
