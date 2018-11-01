.class public Lcom/github/shadowsocks/TaskerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TaskerActivity.scala"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;,
        Lcom/github/shadowsocks/TaskerActivity$ProfileViewHolder;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private com$github$shadowsocks$TaskerActivity$$switch:Landroid/widget/Switch;

.field private com$github$shadowsocks$TaskerActivity$$taskerOption:Lcom/github/shadowsocks/utils/TaskerSettings;

.field private final profilesAdapter:Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 99
    new-instance v0, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;-><init>(Lcom/github/shadowsocks/TaskerActivity;)V

    iput-object v0, p0, Lcom/github/shadowsocks/TaskerActivity;->profilesAdapter:Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;

    return-void
.end method

.method private com$github$shadowsocks$TaskerActivity$$switch_$eq(Landroid/widget/Switch;)V
    .locals 0
    .param p1, "x$1"    # Landroid/widget/Switch;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$switch:Landroid/widget/Switch;

    return-void
.end method

.method private com$github$shadowsocks$TaskerActivity$$taskerOption_$eq(Lcom/github/shadowsocks/utils/TaskerSettings;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/utils/TaskerSettings;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption:Lcom/github/shadowsocks/utils/TaskerSettings;

    return-void
.end method

.method private profilesAdapter()Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/github/shadowsocks/TaskerActivity;->profilesAdapter:Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;

    return-object v0
.end method


# virtual methods
.method public final com$github$shadowsocks$TaskerActivity$$onClick$body$1(Landroid/view/View;)V
    .locals 0
    .param p1, "x$1"    # Landroid/view/View;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity;->finish()V

    return-void
.end method

.method public com$github$shadowsocks$TaskerActivity$$switch()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$switch:Landroid/widget/Switch;

    return-object v0
.end method

.method public com$github$shadowsocks$TaskerActivity$$taskerOption()Lcom/github/shadowsocks/utils/TaskerSettings;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption:Lcom/github/shadowsocks/utils/TaskerSettings;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v3, 0x7f040035

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/TaskerActivity;->setContentView(I)V

    .line 105
    const v3, 0x7f1100b3

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/TaskerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    .line 106
    .local v2, "toolbar":Landroid/support/v7/widget/Toolbar;
    const v3, 0x7f090041

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 107
    const v3, 0x7f02007e

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 108
    new-instance v3, Lcom/github/shadowsocks/TaskerActivity$$anonfun$2;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/TaskerActivity$$anonfun$2;-><init>(Lcom/github/shadowsocks/TaskerActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget-object v3, Lcom/github/shadowsocks/utils/TaskerSettings$;->MODULE$:Lcom/github/shadowsocks/utils/TaskerSettings$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/shadowsocks/utils/TaskerSettings$;->fromIntent(Landroid/content/Intent;)Lcom/github/shadowsocks/utils/TaskerSettings;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption_$eq(Lcom/github/shadowsocks/utils/TaskerSettings;)V

    .line 111
    const v3, 0x7f1100c9

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/TaskerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    invoke-direct {p0, v3}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$switch_$eq(Landroid/widget/Switch;)V

    .line 112
    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$switch()Landroid/widget/Switch;

    move-result-object v3

    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption()Lcom/github/shadowsocks/utils/TaskerSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/utils/TaskerSettings;->switchOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 113
    const v3, 0x7f1100bc

    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/TaskerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 114
    .local v1, "profilesList":Landroid/support/v7/widget/RecyclerView;
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "lm":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 116
    new-instance v3, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 117
    invoke-direct {p0}, Lcom/github/shadowsocks/TaskerActivity;->profilesAdapter()Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 118
    invoke-virtual {p0}, Lcom/github/shadowsocks/TaskerActivity;->com$github$shadowsocks$TaskerActivity$$taskerOption()Lcom/github/shadowsocks/utils/TaskerSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/utils/TaskerSettings;->profileId()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/TaskerActivity;->profilesAdapter()Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/TaskerActivity$ProfilesAdapter;->profiles()Lscala/collection/immutable/List;

    move-result-object v3

    sget-object v4, Lscala/collection/immutable/List$;->MODULE$:Lscala/collection/immutable/List$;

    invoke-virtual {v4}, Lscala/collection/immutable/List$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscala/collection/immutable/List;->zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/TraversableOnce;

    new-instance v4, Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$2;

    invoke-direct {v4, p0}, Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$2;-><init>(Lcom/github/shadowsocks/TaskerActivity;)V

    invoke-interface {v3, v4}, Lscala/collection/TraversableOnce;->collectFirst(Lscala/PartialFunction;)Lscala/Option;

    move-result-object v3

    .line 120
    new-instance v4, Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$1;

    invoke-direct {v4, p0}, Lcom/github/shadowsocks/TaskerActivity$$anonfun$onCreate$1;-><init>(Lcom/github/shadowsocks/TaskerActivity;)V

    invoke-virtual {v3, v4}, Lscala/Option;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v3

    .line 118
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 101
    :cond_0
    return-void
.end method
