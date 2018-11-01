.class public Lcom/github/shadowsocks/AppManager;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AppManager.scala"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/shadowsocks/AppManager$ProxiedApp;,
        Lcom/github/shadowsocks/AppManager$AppsAdapter;,
        Lcom/github/shadowsocks/AppManager$AppViewHolder;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private bypassSwitch:Landroid/widget/Switch;

.field private com$github$shadowsocks$AppManager$$appListView:Landroid/support/v7/widget/RecyclerView;

.field private final com$github$shadowsocks$AppManager$$appsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private com$github$shadowsocks$AppManager$$handler:Landroid/os/Handler;

.field private com$github$shadowsocks$AppManager$$loadingView:Landroid/view/View;

.field private final com$github$shadowsocks$AppManager$$profile:Lcom/github/shadowsocks/database/Profile;

.field private com$github$shadowsocks$AppManager$$proxiedApps:Lscala/collection/mutable/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/mutable/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 146
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->currentProfile()Lscala/Option;

    move-result-object v0

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v1}, Lscala/Predef$;->$conforms()Lscala/Predef$$less$colon$less;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Option;->orNull(Lscala/Predef$$less$colon$less;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    iput-object v0, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile:Lcom/github/shadowsocks/database/Profile;

    return-void
.end method

.method private bypassSwitch()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager;->bypassSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private bypassSwitch_$eq(Landroid/widget/Switch;)V
    .locals 0
    .param p1, "x$1"    # Landroid/widget/Switch;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager;->bypassSwitch:Landroid/widget/Switch;

    return-void
.end method

.method private com$github$shadowsocks$AppManager$$appListView_$eq(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1, "x$1"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appListView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method private com$github$shadowsocks$AppManager$$handler_$eq(Landroid/os/Handler;)V
    .locals 0
    .param p1, "x$1"    # Landroid/os/Handler;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$handler:Landroid/os/Handler;

    return-void
.end method

.method private com$github$shadowsocks$AppManager$$loadingView_$eq(Landroid/view/View;)V
    .locals 0
    .param p1, "x$1"    # Landroid/view/View;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$loadingView:Landroid/view/View;

    return-void
.end method

.method private com$github$shadowsocks$AppManager$$proxiedApps_$eq(Lscala/collection/mutable/HashSet;)V
    .locals 0
    .param p1, "x$1"    # Lscala/collection/mutable/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/mutable/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$proxiedApps:Lscala/collection/mutable/HashSet;

    return-void
.end method

.method private initProxiedApps(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 148
    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-instance v0, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v2, p1}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lscala/collection/immutable/StringOps;->split(C)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v0

    sget-object v1, Lscala/collection/mutable/HashSet$;->MODULE$:Lscala/collection/mutable/HashSet$;

    invoke-virtual {v1}, Lscala/collection/mutable/HashSet$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {v0, v1}, Lscala/collection/mutable/ArrayOps;->to(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscala/collection/mutable/HashSet;

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$proxiedApps_$eq(Lscala/collection/mutable/HashSet;)V

    return-void
.end method

.method private initProxiedApps$default$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->individual()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toolbar()Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method private toolbar_$eq(Landroid/support/v7/widget/Toolbar;)V
    .locals 0
    .param p1, "x$1"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/github/shadowsocks/AppManager;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public com$github$shadowsocks$AppManager$$appListView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appListView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public com$github$shadowsocks$AppManager$$appsLoading()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public com$github$shadowsocks$AppManager$$handler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$handler:Landroid/os/Handler;

    return-object v0
.end method

.method public com$github$shadowsocks$AppManager$$loadingView()Landroid/view/View;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$loadingView:Landroid/view/View;

    return-object v0
.end method

.method public final com$github$shadowsocks$AppManager$$onCheckedChanged$body$1(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "x$3"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/shadowsocks/database/Profile;->proxyApps_$eq(Z)V

    .line 240
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    .line 241
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->finish()V

    return-void
.end method

.method public final com$github$shadowsocks$AppManager$$onCheckedChanged$body$2(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "x$4"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/shadowsocks/database/Profile;->bypass_$eq(Z)V

    .line 248
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    return-void
.end method

.method public final com$github$shadowsocks$AppManager$$onClick$body$1(Landroid/view/View;)V
    .locals 2
    .param p1, "x$2"    # Landroid/view/View;

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/AppManager;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    :cond_0
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 224
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->finish()V

    goto :goto_0
.end method

.method public com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile:Lcom/github/shadowsocks/database/Profile;

    return-object v0
.end method

.method public com$github$shadowsocks$AppManager$$proxiedApps()Lscala/collection/mutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$proxiedApps:Lscala/collection/mutable/HashSet;

    return-object v0
.end method

.method public loadAppsAsync()V
    .locals 3

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appsLoading()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v1, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/AppManager$$anonfun$loadAppsAsync$1;-><init>(Lcom/github/shadowsocks/AppManager;)V

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/utils/Utils$;->ThrowableFuture(Lscala/Function0;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->finish()V

    .line 218
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$handler_$eq(Landroid/os/Handler;)V

    .line 220
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/AppManager;->setContentView(I)V

    .line 221
    const v0, 0x7f1100b3

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/AppManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/AppManager;->toolbar_$eq(Landroid/support/v7/widget/Toolbar;)V

    .line 222
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->toolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 223
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->toolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 224
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->toolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/AppManager$$anonfun$3;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/AppManager$$anonfun$3;-><init>(Lcom/github/shadowsocks/AppManager;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->toolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/high16 v1, 0x7f120000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 231
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->toolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 233
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->proxyApps()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 237
    :goto_0
    const v0, 0x7f1100a6

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/AppManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 238
    new-instance v1, Lcom/github/shadowsocks/AppManager$$anonfun$4;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/AppManager$$anonfun$4;-><init>(Lcom/github/shadowsocks/AppManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 244
    const v0, 0x7f1100a7

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/AppManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/AppManager;->bypassSwitch_$eq(Landroid/widget/Switch;)V

    .line 245
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->bypassSwitch()Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->bypass()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 246
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->bypassSwitch()Landroid/widget/Switch;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/AppManager$$anonfun$5;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/AppManager$$anonfun$5;-><init>(Lcom/github/shadowsocks/AppManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 251
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->initProxiedApps$default$1()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/AppManager;->initProxiedApps(Ljava/lang/String;)V

    .line 252
    const v0, 0x7f1100a8

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/AppManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$loadingView_$eq(Landroid/view/View;)V

    .line 253
    const v0, 0x7f1100a9

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/AppManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appListView_$eq(Landroid/support/v7/widget/RecyclerView;)V

    .line 254
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 255
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 257
    sget-object v0, Lcom/github/shadowsocks/AppManager$;->MODULE$:Lcom/github/shadowsocks/AppManager$;

    invoke-virtual {v0, p0}, Lcom/github/shadowsocks/AppManager$;->com$github$shadowsocks$AppManager$$instance_$eq(Lcom/github/shadowsocks/AppManager;)V

    .line 258
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->loadAppsAsync()V

    return-void

    .line 234
    :cond_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/Profile;->proxyApps_$eq(Z)V

    .line 235
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    move-result v0

    .line 233
    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    sget-object v0, Lcom/github/shadowsocks/AppManager$;->MODULE$:Lcom/github/shadowsocks/AppManager$;

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/AppManager$;->com$github$shadowsocks$AppManager$$instance_$eq(Lcom/github/shadowsocks/AppManager;)V

    .line 152
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 153
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$handler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$handler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 155
    invoke-direct {p0, v1}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$handler_$eq(Landroid/os/Handler;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 277
    packed-switch p1, :pswitch_data_0

    .line 280
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 277
    :goto_0
    return v0

    .line 279
    :pswitch_0
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->toolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->toolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->hideOverflowMenu()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->toolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->showOverflowMenu()Z

    move-result v0

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 160
    const-string v9, "clipboard"

    invoke-virtual {p0, v9}, Lcom/github/shadowsocks/AppManager;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipboardManager;

    .line 161
    .local v3, "clipboard":Landroid/content/ClipboardManager;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    new-instance v10, Lscala/MatchError;

    invoke-static {v9}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v10, v9}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v10

    .line 182
    :pswitch_0
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 183
    invoke-virtual {v3}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 184
    .local v7, "proxiedAppSequence":Ljava/lang/CharSequence;
    if-eqz v7, :cond_1

    .line 185
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 186
    .local v8, "proxiedAppString":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 187
    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 189
    .local v5, "i":I
    if-gez v5, :cond_0

    :try_start_0
    new-instance v9, Lscala/Tuple2;

    const-string v10, ""

    invoke-direct {v9, v8, v10}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "enabled":Ljava/lang/String;
    invoke-virtual {v9}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "apps":Ljava/lang/String;
    new-instance v9, Lscala/Tuple2;

    invoke-direct {v9, v4, v0}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9}, Lscala/Tuple2;->_1()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "enabled":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "enabled":Ljava/lang/String;
    invoke-virtual {v9}, Lscala/Tuple2;->_2()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apps":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 191
    .restart local v0    # "apps":Ljava/lang/String;
    invoke-direct {p0}, Lcom/github/shadowsocks/AppManager;->bypassSwitch()Landroid/widget/Switch;

    move-result-object v9

    new-instance v10, Lscala/collection/immutable/StringOps;

    sget-object v11, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v11, v4}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lscala/collection/immutable/StringOps;->toBoolean()Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 192
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/github/shadowsocks/database/Profile;->individual_$eq(Ljava/lang/String;)V

    .line 193
    sget-object v9, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v9

    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    .line 194
    const v9, 0x7f090037

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 195
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 196
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$loadingView()Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 197
    invoke-direct {p0, v0}, Lcom/github/shadowsocks/AppManager;->initProxiedApps(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->reloadApps()V

    .line 199
    const/4 v9, 0x1

    .line 208
    .end local v0    # "apps":Ljava/lang/String;
    .end local v4    # "enabled":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v7    # "proxiedAppSequence":Ljava/lang/CharSequence;
    .end local v8    # "proxiedAppString":Ljava/lang/String;
    :goto_1
    return v9

    .line 190
    .restart local v5    # "i":I
    .restart local v7    # "proxiedAppSequence":Ljava/lang/CharSequence;
    .restart local v8    # "proxiedAppString":Ljava/lang/String;
    :cond_0
    new-instance v9, Lscala/Tuple2;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lscala/Tuple2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 202
    :catch_0
    move-exception v9

    const v9, 0x7f090036

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 207
    .end local v5    # "i":I
    .end local v7    # "proxiedAppSequence":Ljava/lang/CharSequence;
    .end local v8    # "proxiedAppString":Ljava/lang/String;
    :cond_1
    const v9, 0x7f090036

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 208
    const/4 v9, 0x0

    goto :goto_1

    .line 189
    .restart local v5    # "i":I
    .restart local v7    # "proxiedAppSequence":Ljava/lang/CharSequence;
    .restart local v8    # "proxiedAppString":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v10, Lscala/MatchError;

    invoke-direct {v10, v9}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    .end local v5    # "i":I
    .end local v7    # "proxiedAppSequence":Ljava/lang/CharSequence;
    .end local v8    # "proxiedAppString":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->bypass()Z

    move-result v1

    .line 176
    .local v1, "bypass":Z
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->individual()Ljava/lang/String;

    move-result-object v8

    .line 177
    .restart local v8    # "proxiedAppString":Ljava/lang/String;
    sget-object v9, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/utils/Key$;->individual()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v10}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v11, Lscala/Predef$any2stringadd$;->MODULE$:Lscala/Predef$any2stringadd$;

    sget-object v12, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Lscala/Predef$;->any2stringadd(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v11, v12, v13}, Lscala/Predef$any2stringadd$;->$plus$extension(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 178
    .local v2, "clip":Landroid/content/ClipData;
    invoke-virtual {v3, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 179
    const v9, 0x7f090033

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 180
    const/4 v9, 0x1

    goto :goto_1

    .line 163
    .end local v1    # "bypass":Z
    .end local v2    # "clip":Landroid/content/ClipData;
    .end local v8    # "proxiedAppString":Ljava/lang/String;
    :pswitch_2
    sget-object v9, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v9}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/ProfileManager;->getAllProfiles()Lscala/Option;

    move-result-object v9

    .line 164
    instance-of v10, v9, Lscala/Some;

    if-eqz v10, :cond_3

    check-cast v9, Lscala/Some;

    invoke-virtual {v9}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscala/collection/immutable/List;

    .line 165
    .local v6, "profiles":Lscala/collection/immutable/List;
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/github/shadowsocks/database/Profile;->individual()Ljava/lang/String;

    move-result-object v8

    .line 166
    .restart local v8    # "proxiedAppString":Ljava/lang/String;
    new-instance v9, Lcom/github/shadowsocks/AppManager$$anonfun$onMenuItemClick$1;

    invoke-direct {v9, p0, v8}, Lcom/github/shadowsocks/AppManager$$anonfun$onMenuItemClick$1;-><init>(Lcom/github/shadowsocks/AppManager;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    .line 170
    const v9, 0x7f090030

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    sget-object v9, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 173
    .end local v6    # "profiles":Lscala/collection/immutable/List;
    .end local v8    # "proxiedAppString":Ljava/lang/String;
    :goto_2
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 171
    :cond_3
    const v9, 0x7f090032

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    sget-object v9, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2

    .line 161
    :pswitch_data_0
    .packed-switch 0x7f110103
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reloadApps()V
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->com$github$shadowsocks$AppManager$$appsLoading()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/AppManager;->loadAppsAsync()V

    :cond_0
    return-void
.end method
