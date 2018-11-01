.class public Lcom/github/shadowsocks/Shadowsocks;
.super Landroid/support/v7/app/AppCompatActivity;
.source "Shadowsocks.scala"

# interfaces
.implements Lcom/github/shadowsocks/ServiceBoundContext;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private _isDestroyed:Z

.field private bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

.field private binder:Landroid/os/IBinder;

.field private volatile bitmap$0:B

.field private final callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

.field private com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

.field private com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

.field private com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

.field private com$github$shadowsocks$Shadowsocks$$connectionTestText:Landroid/widget/TextView;

.field private com$github$shadowsocks$Shadowsocks$$greenTint:Landroid/content/res/ColorStateList;

.field private com$github$shadowsocks$Shadowsocks$$greyTint:Landroid/content/res/ColorStateList;

.field private com$github$shadowsocks$Shadowsocks$$preferences:Lcom/github/shadowsocks/ShadowsocksSettings;

.field private com$github$shadowsocks$Shadowsocks$$stat:Landroid/view/View;

.field private com$github$shadowsocks$Shadowsocks$$testCount:I

.field private currentProfile:Lcom/github/shadowsocks/database/Profile;

.field private fab:Landroid/support/design/widget/FloatingActionButton;

.field private fabProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

.field private final handler:Landroid/os/Handler;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private rxRateText:Landroid/widget/TextView;

.field private rxText:Landroid/widget/TextView;

.field private serviceStarted:Z

.field private state:I

.field private txRateText:Landroid/widget/TextView;

.field private txText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->$init$(Lcom/github/shadowsocks/ServiceBoundContext;)V

    .line 107
    sget-object v0, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/State$;->STOPPED()I

    move-result v0

    iput v0, p0, Lcom/github/shadowsocks/Shadowsocks;->state:I

    .line 108
    new-instance v0, Lcom/github/shadowsocks/database/Profile;

    invoke-direct {v0}, Lcom/github/shadowsocks/database/Profile;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->currentProfile:Lcom/github/shadowsocks/database/Profile;

    .line 111
    new-instance v0, Lcom/github/shadowsocks/Shadowsocks$$anon$1;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/Shadowsocks$$anon$1;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    iput-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .line 215
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->handler:Landroid/os/Handler;

    return-void
.end method

.method private _isDestroyed()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/github/shadowsocks/Shadowsocks;->_isDestroyed:Z

    return v0
.end method

.method private _isDestroyed_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 443
    iput-boolean p1, p0, Lcom/github/shadowsocks/Shadowsocks;->_isDestroyed:Z

    return-void
.end method

.method private callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-object v0
.end method

.method private com$github$shadowsocks$Shadowsocks$$connectionTestText_$eq(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "x$1"    # Landroid/widget/TextView;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText:Landroid/widget/TextView;

    return-void
.end method

.method private com$github$shadowsocks$Shadowsocks$$greenTint$lzycompute()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const v0, 0x7f10005e

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greenTint:Landroid/content/res/ColorStateList;

    iget-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greenTint:Landroid/content/res/ColorStateList;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private com$github$shadowsocks$Shadowsocks$$greyTint$lzycompute()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const v0, 0x7f100040

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greyTint:Landroid/content/res/ColorStateList;

    iget-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greyTint:Landroid/content/res/ColorStateList;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private com$github$shadowsocks$Shadowsocks$$preferences$lzycompute()Lcom/github/shadowsocks/ShadowsocksSettings;
    .locals 2

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/ShadowsocksSettings;

    .line 212
    iput-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences:Lcom/github/shadowsocks/ShadowsocksSettings;

    iget-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences:Lcom/github/shadowsocks/ShadowsocksSettings;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private com$github$shadowsocks$Shadowsocks$$stat_$eq(Landroid/view/View;)V
    .locals 0
    .param p1, "x$1"    # Landroid/view/View;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat:Landroid/view/View;

    return-void
.end method

.method private com$github$shadowsocks$Shadowsocks$$testCount_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$testCount:I

    return-void
.end method

.method private rxRateText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->rxRateText:Landroid/widget/TextView;

    return-object v0
.end method

.method private rxRateText_$eq(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "x$1"    # Landroid/widget/TextView;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->rxRateText:Landroid/widget/TextView;

    return-void
.end method

.method private rxText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->rxText:Landroid/widget/TextView;

    return-object v0
.end method

.method private rxText_$eq(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "x$1"    # Landroid/widget/TextView;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->rxText:Landroid/widget/TextView;

    return-void
.end method

.method private showProgress(I)Landroid/os/Handler;
    .locals 4
    .param p1, "msg"    # I

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->clearDialog()V

    .line 228
    const-string v0, ""

    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/Shadowsocks;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/Shadowsocks;->progressDialog_$eq(Landroid/app/ProgressDialog;)V

    .line 229
    new-instance v0, Lcom/github/shadowsocks/Shadowsocks$$anon$2;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/Shadowsocks$$anon$2;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    return-object v0
.end method

.method private txRateText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->txRateText:Landroid/widget/TextView;

    return-object v0
.end method

.method private txRateText_$eq(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "x$1"    # Landroid/widget/TextView;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->txRateText:Landroid/widget/TextView;

    return-void
.end method

.method private txText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->txText:Landroid/widget/TextView;

    return-object v0
.end method

.method private txText_$eq(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "x$1"    # Landroid/widget/TextView;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->txText:Landroid/widget/TextView;

    return-void
.end method

.method private updateCurrentProfile()Z
    .locals 5

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId()I

    move-result v2

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/ShadowsocksSettings;->profile()Lcom/github/shadowsocks/database/Profile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v3

    if-eq v2, v3, :cond_6

    .line 402
    :cond_0
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->currentProfile()Lscala/Option;

    move-result-object v2

    .line 403
    instance-of v3, v2, Lscala/Some;

    if-eqz v3, :cond_2

    check-cast v2, Lscala/Some;

    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/shadowsocks/database/Profile;

    .line 402
    :goto_0
    invoke-direct {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->updatePreferenceScreen(Lcom/github/shadowsocks/database/Profile;)V

    .line 411
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->serviceStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->serviceLoad()V

    .line 413
    :cond_1
    const/4 v2, 0x1

    .line 401
    :goto_1
    return v2

    .line 404
    :cond_2
    sget-object v3, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 405
    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v3

    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/ProfileManager;->getFirstProfile()Lscala/Option;

    move-result-object v2

    .line 406
    instance-of v4, v2, Lscala/Some;

    if-eqz v4, :cond_3

    check-cast v2, Lscala/Some;

    invoke-virtual {v2}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/shadowsocks/database/Profile;

    .line 408
    :goto_2
    invoke-virtual {v0}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v2

    .line 405
    invoke-virtual {v3, v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->switchProfile(I)Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    goto :goto_0

    .line 407
    :cond_3
    sget-object v4, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/database/ProfileManager;->createDefault()Lcom/github/shadowsocks/database/Profile;

    move-result-object v0

    goto :goto_2

    .line 405
    :cond_4
    new-instance v3, Lscala/MatchError;

    invoke-direct {v3, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 402
    :cond_5
    new-instance v3, Lscala/MatchError;

    invoke-direct {v3, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 415
    :cond_6
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->refreshProfile()V

    .line 416
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updatePreferenceScreen(Lcom/github/shadowsocks/database/Profile;)V
    .locals 1
    .param p1, "profile"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/shadowsocks/ShadowsocksSettings;->setProfile(Lcom/github/shadowsocks/database/Profile;)V

    return-void
.end method

.method private updateState(Z)V
    .locals 8
    .param p1, "resetConnectionTest"    # Z

    .prologue
    const-wide/16 v6, 0x64

    const v5, 0x7f020083

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->getState()I

    move-result v0

    .line 360
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->CONNECTING()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 361
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greyTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 362
    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/Shadowsocks;->serviceStarted_$eq(Z)V

    .line 363
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 364
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->setEnabled(Z)V

    .line 365
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle()Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->show()V

    .line 366
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 395
    :goto_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/Shadowsocks;->state_$eq(I)V

    .line 358
    :cond_0
    return-void

    .line 367
    :cond_1
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->CONNECTED()I

    move-result v1

    if-ne v1, v0, :cond_5

    .line 368
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greenTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 369
    invoke-virtual {p0, v4}, Lcom/github/shadowsocks/Shadowsocks;->serviceStarted_$eq(Z)V

    .line 370
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const v1, 0x7f020084

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 371
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->setEnabled(Z)V

    .line 372
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle()Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/Shadowsocks$$anonfun$16;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$16;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    invoke-virtual {v0, v1, v6, v7}, Lcom/github/jorgecastilloprz/FABProgressCircle;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 374
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->state()I

    move-result v0

    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->CONNECTED()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 375
    :cond_2
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->isNatEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 377
    :cond_3
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 374
    :cond_4
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 380
    :cond_5
    sget-object v1, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/State$;->STOPPING()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 381
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greyTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 382
    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/Shadowsocks;->serviceStarted_$eq(Z)V

    .line 383
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 384
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->setEnabled(Z)V

    .line 385
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle()Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->show()V

    .line 386
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 388
    :cond_6
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greyTint()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 389
    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/Shadowsocks;->serviceStarted_$eq(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const v1, 0x7f020085

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 391
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/github/shadowsocks/ShadowsocksSettings;->setEnabled(Z)V

    .line 392
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle()Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/Shadowsocks$$anonfun$17;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$17;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    invoke-virtual {v0, v1, v6, v7}, Lcom/github/jorgecastilloprz/FABProgressCircle;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 393
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0
.end method

.method private updateState$default$1()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public attachService()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/github/shadowsocks/Shadowsocks;->callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/Shadowsocks;->attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    return-void
.end method

.method public attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "callback"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 98
    invoke-static {p0, p1}, Lcom/github/shadowsocks/ServiceBoundContext$class;->attachService(Lcom/github/shadowsocks/ServiceBoundContext;Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    return-void
.end method

.method public bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-object v0
.end method

.method public bgService_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksService;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-void
.end method

.method public binder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public binderDied()V
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->detachService()V

    .line 197
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->crashRecovery()V

    .line 198
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->attachService()V

    return-void
.end method

.method public binder_$eq(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "x$1"    # Landroid/os/IBinder;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public cancelStart()V
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->clearDialog()V

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$changeSwitch(Z)V

    return-void
.end method

.method public clearDialog()V
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->progressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->progressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->progressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 531
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/Shadowsocks;->progressDialog_$eq(Landroid/app/ProgressDialog;)V

    .line 529
    :cond_1
    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection()Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection_$eq(Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-void
.end method

.method public com$github$shadowsocks$Shadowsocks$$changeSwitch(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/Shadowsocks;->serviceStarted_$eq(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    if-eqz p1, :cond_1

    const v0, 0x7f020084

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    .line 220
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 222
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/Shadowsocks$$anonfun$7;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$7;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    :cond_0
    return-void

    .line 219
    :cond_1
    const v0, 0x7f020085

    goto :goto_0
.end method

.method public com$github$shadowsocks$Shadowsocks$$connectionTestText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText:Landroid/widget/TextView;

    return-object v0
.end method

.method public com$github$shadowsocks$Shadowsocks$$greenTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 210
    iget-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greenTint$lzycompute()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greenTint:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public com$github$shadowsocks$Shadowsocks$$greyTint()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 209
    iget-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greyTint$lzycompute()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$greyTint:Landroid/content/res/ColorStateList;

    goto :goto_0
.end method

.method public com$github$shadowsocks$Shadowsocks$$hideCircle()V
    .locals 1

    .prologue
    .line 351
    :try_start_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle()Lcom/github/jorgecastilloprz/FABProgressCircle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/jorgecastilloprz/FABProgressCircle;->hide()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final com$github$shadowsocks$Shadowsocks$$onClick$body$2(Landroid/view/View;)V
    .locals 2
    .param p1, "x$2"    # Landroid/view/View;

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksSettings;->natSwitch()Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public final com$github$shadowsocks$Shadowsocks$$onClick$body$3(Landroid/view/View;)V
    .locals 2
    .param p1, "x$3"    # Landroid/view/View;

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/Shadowsocks;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final com$github$shadowsocks$Shadowsocks$$onClick$body$4(Landroid/view/View;)V
    .locals 3
    .param p1, "x$4"    # Landroid/view/View;

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$testCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$testCount_$eq(I)V

    .line 287
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->handler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/Shadowsocks$$anonfun$11;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$11;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$testCount()I

    move-result v1

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 285
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    .line 290
    .local v0, "id":I
    sget-object v1, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    .line 293
    new-instance v2, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;

    invoke-direct {v2, p0, v0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$com$github$shadowsocks$Shadowsocks$$onClick$body$4$1;-><init>(Lcom/github/shadowsocks/Shadowsocks;I)V

    .line 290
    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/utils/Utils$;->ThrowableFuture(Lscala/Function0;)V

    return-void

    .line 285
    .end local v0    # "id":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final com$github$shadowsocks$Shadowsocks$$onClick$body$5(Landroid/view/View;)V
    .locals 1
    .param p1, "x$5"    # Landroid/view/View;

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->serviceStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->serviceStop()V

    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 329
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$changeSwitch(Z)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->prepareStartService()V

    goto :goto_0
.end method

.method public final com$github$shadowsocks$Shadowsocks$$onLongClick$body$1(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 331
    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->serviceStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0900bf

    :goto_0
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 332
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget-object v5, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    const/16 v6, 0x8

    invoke-virtual {v5, p0, v6}, Lcom/github/shadowsocks/utils/Utils$;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    .line 331
    invoke-virtual/range {v0 .. v5}, Lcom/github/shadowsocks/utils/Utils$;->positionToast(Landroid/widget/Toast;Landroid/view/View;Landroid/view/Window;II)Landroid/widget/Toast;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 333
    const/4 v0, 0x1

    return v0

    .line 331
    :cond_0
    const v1, 0x7f09004b

    goto :goto_0
.end method

.method public com$github$shadowsocks$Shadowsocks$$preferences()Lcom/github/shadowsocks/ShadowsocksSettings;
    .locals 1

    .prologue
    .line 212
    iget-byte v0, p0, Lcom/github/shadowsocks/Shadowsocks;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences$lzycompute()Lcom/github/shadowsocks/ShadowsocksSettings;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$preferences:Lcom/github/shadowsocks/ShadowsocksSettings;

    goto :goto_0
.end method

.method public final com$github$shadowsocks$Shadowsocks$$run$body$10()V
    .locals 0

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$hideCircle()V

    return-void
.end method

.method public final com$github$shadowsocks$Shadowsocks$$run$body$11()V
    .locals 0

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$hideCircle()V

    return-void
.end method

.method public final com$github$shadowsocks$Shadowsocks$$run$body$5()V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    return-void
.end method

.method public final com$github$shadowsocks$Shadowsocks$$run$body$7()V
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final com$github$shadowsocks$Shadowsocks$$run$body$9()V
    .locals 0

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->attachService()V

    return-void
.end method

.method public com$github$shadowsocks$Shadowsocks$$stat()Landroid/view/View;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat:Landroid/view/View;

    return-object v0
.end method

.method public com$github$shadowsocks$Shadowsocks$$testCount()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$testCount:I

    return v0
.end method

.method public detachService()V
    .locals 0

    .prologue
    .line 98
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->detachService(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public fab()Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->fab:Landroid/support/design/widget/FloatingActionButton;

    return-object v0
.end method

.method public fabProgressCircle()Lcom/github/jorgecastilloprz/FABProgressCircle;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

    return-object v0
.end method

.method public fabProgressCircle_$eq(Lcom/github/jorgecastilloprz/FABProgressCircle;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/jorgecastilloprz/FABProgressCircle;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle:Lcom/github/jorgecastilloprz/FABProgressCircle;

    return-void
.end method

.method public fab_$eq(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0
    .param p1, "x$1"    # Landroid/support/design/widget/FloatingActionButton;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->fab:Landroid/support/design/widget/FloatingActionButton;

    return-void
.end method

.method public handler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public ignoreBatteryOptimization()V
    .locals 8

    .prologue
    .line 468
    const/4 v1, 0x0

    .line 470
    .local v1, "exception":Z
    :try_start_0
    const-string v6, "power"

    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/Shadowsocks;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 471
    .local v5, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v2

    .line 473
    .local v2, "hasIgnored":Z
    if-nez v2, :cond_0

    .line 474
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 475
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    new-instance v6, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v6}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v7, "package:"

    invoke-virtual {v6, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 477
    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/Shadowsocks;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    .line 485
    .end local v2    # "hasIgnored":Z
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    if-eqz v1, :cond_1

    .line 487
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    new-instance v0, Landroid/content/ComponentName;

    .line 491
    const-string v6, "com.android.settings"

    .line 492
    const-string v7, "com.android.com.settings.Settings@HighPowerApplicationsActivity"

    .line 490
    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0, v3}, Lcom/github/shadowsocks/Shadowsocks;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 498
    const/4 v1, 0x0

    .line 464
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 482
    :catchall_0
    move-exception v6

    const/4 v1, 0x1

    goto :goto_0

    .line 501
    :catchall_1
    move-exception v6

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isDestroyed()Z
    .locals 2

    .prologue
    .line 445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/Shadowsocks;->_isDestroyed()Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 507
    packed-switch p2, :pswitch_data_0

    .line 511
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->cancelStart()V

    .line 512
    const-string v0, "Shadowsocks"

    const-string v1, "Failed to start VpnService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-void

    .line 509
    :pswitch_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->serviceLoad()V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x2000

    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    .line 256
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 258
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 259
    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->setContentView(I)V

    .line 261
    const v1, 0x7f1100b3

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/Toolbar;

    .line 262
    .local v12, "toolbar":Landroid/support/v7/widget/Toolbar;
    const-string v1, "菠萝云"

    invoke-virtual {v12, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v12}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0c0182

    invoke-virtual {v12, v1, v4}, Landroid/support/v7/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 264
    const-class v1, Landroid/support/v7/widget/Toolbar;

    const-string v4, "mTitleTextView"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 265
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 266
    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 267
    .local v11, "title":Landroid/widget/TextView;
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 268
    const/16 v1, 0x10

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 269
    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v4, -0x1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 270
    new-instance v1, Lcom/github/shadowsocks/Shadowsocks$$anonfun$9;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$9;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    new-array v1, v6, [I

    const v4, 0x7f010065

    aput v4, v1, v5

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 272
    .local v13, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v13, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 273
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    sget-object v1, Lcom/github/shadowsocks/Typefaces$;->MODULE$:Lcom/github/shadowsocks/Typefaces$;

    const-string v4, "fonts/Iceland.ttf"

    invoke-virtual {v1, p0, v4}, Lcom/github/shadowsocks/Typefaces$;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    .line 275
    .local v10, "tf":Landroid/graphics/Typeface;
    if-eqz v10, :cond_0

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    :cond_0
    const v1, 0x7f020073

    invoke-virtual {v11, v5, v5, v1, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 278
    const v1, 0x7f1100b4

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat_$eq(Landroid/view/View;)V

    .line 279
    const v1, 0x7f1100b6

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$connectionTestText_$eq(Landroid/widget/TextView;)V

    .line 280
    const v1, 0x7f1100b7

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->txText_$eq(Landroid/widget/TextView;)V

    .line 281
    const v1, 0x7f1100b8

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->txRateText_$eq(Landroid/widget/TextView;)V

    .line 282
    const v1, 0x7f1100b9

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->rxText_$eq(Landroid/widget/TextView;)V

    .line 283
    const v1, 0x7f1100ba

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->rxRateText_$eq(Landroid/widget/TextView;)V

    .line 284
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$stat()Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/github/shadowsocks/Shadowsocks$$anonfun$10;

    invoke-direct {v4, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$10;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    const v1, 0x7f1100b5

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->fab_$eq(Landroid/support/design/widget/FloatingActionButton;)V

    .line 326
    const v1, 0x7f1100bb

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/jorgecastilloprz/FABProgressCircle;

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->fabProgressCircle_$eq(Lcom/github/jorgecastilloprz/FABProgressCircle;)V

    .line 327
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    new-instance v4, Lcom/github/shadowsocks/Shadowsocks$$anonfun$13;

    invoke-direct {v4, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$13;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    invoke-virtual {v1, v4}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    new-instance v4, Lcom/github/shadowsocks/Shadowsocks$$anonfun$14;

    invoke-direct {v4, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$14;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    invoke-virtual {v1, v4}, Landroid/support/design/widget/FloatingActionButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object v1, p0

    move-wide v4, v2

    move-wide v6, v2

    move-wide v8, v2

    .line 335
    invoke-virtual/range {v1 .. v9}, Lcom/github/shadowsocks/Shadowsocks;->updateTraffic(JJJJ)V

    .line 337
    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager()Lcom/github/shadowsocks/database/SSRSubManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/SSRSubManager;->getFirstSSRSub()Lscala/Option;

    move-result-object v1

    .line 338
    instance-of v2, v1, Lscala/Some;

    if-eqz v2, :cond_1

    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 344
    :goto_0
    sget-object v1, Lcom/github/shadowsocks/job/SSRSubUpdateJob$;->MODULE$:Lcom/github/shadowsocks/job/SSRSubUpdateJob$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/job/SSRSubUpdateJob$;->schedule()I

    .line 346
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->handler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/github/shadowsocks/Shadowsocks$$anonfun$15;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$15;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 341
    :cond_1
    sget-object v2, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager()Lcom/github/shadowsocks/database/SSRSubManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/SSRSubManager;->createDefault()Lcom/github/shadowsocks/database/SSRSub;

    goto :goto_0

    .line 337
    :cond_2
    new-instance v2, Lscala/MatchError;

    invoke-direct {v2, v1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 449
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/Shadowsocks;->_isDestroyed_$eq(Z)V

    .line 450
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->detachService()V

    .line 451
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 452
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->handler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 423
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->refreshContainerHolder()V

    .line 425
    invoke-direct {p0}, Lcom/github/shadowsocks/Shadowsocks;->updateCurrentProfile()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/Shadowsocks;->updateState(Z)V

    return-void
.end method

.method public onServiceConnected()V
    .locals 4

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/github/shadowsocks/Shadowsocks;->updateState$default$1()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->updateState(Z)V

    .line 183
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->isNatEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090078

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    .line 185
    .local v0, "snackbar":Landroid/support/design/widget/Snackbar;
    const v1, 0x7f0900c2

    new-instance v2, Lcom/github/shadowsocks/Shadowsocks$$anonfun$6;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$6;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    .line 186
    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 179
    .end local v0    # "snackbar":Landroid/support/design/widget/Snackbar;
    :cond_1
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->fab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 433
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 434
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->registerCallback()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 438
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 439
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->unregisterCallback()V

    .line 440
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->clearDialog()V

    return-void
.end method

.method public prepareStartService()V
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    .line 243
    new-instance v1, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$prepareStartService$1;-><init>(Lcom/github/shadowsocks/Shadowsocks;)V

    .line 242
    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/utils/Utils$;->ThrowableFuture(Lscala/Function0;)V

    return-void
.end method

.method public progressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/github/shadowsocks/Shadowsocks;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public progressDialog_$eq(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "x$1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/github/shadowsocks/Shadowsocks;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public recovery()V
    .locals 3

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->serviceStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->serviceStop()V

    .line 457
    :cond_0
    const v1, 0x7f090099

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/Shadowsocks;->showProgress(I)Landroid/os/Handler;

    move-result-object v0

    .line 458
    .local v0, "h":Landroid/os/Handler;
    sget-object v1, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v2, Lcom/github/shadowsocks/Shadowsocks$$anonfun$recovery$1;

    invoke-direct {v2, p0, v0}, Lcom/github/shadowsocks/Shadowsocks$$anonfun$recovery$1;-><init>(Lcom/github/shadowsocks/Shadowsocks;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/utils/Utils$;->ThrowableFuture(Lscala/Function0;)V

    return-void
.end method

.method public registerCallback()V
    .locals 0

    .prologue
    .line 98
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->registerCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public serviceLoad()V
    .locals 2

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->use(I)V

    .line 523
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/Shadowsocks;->com$github$shadowsocks$Shadowsocks$$changeSwitch(Z)V

    .line 520
    :cond_0
    return-void
.end method

.method public serviceStarted()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/github/shadowsocks/Shadowsocks;->serviceStarted:Z

    return v0
.end method

.method public serviceStarted_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/github/shadowsocks/Shadowsocks;->serviceStarted:Z

    return-void
.end method

.method public serviceStop()V
    .locals 2

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/Shadowsocks;->bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/github/shadowsocks/aidl/IShadowsocksService;->use(I)V

    :cond_0
    return-void
.end method

.method public state()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/github/shadowsocks/Shadowsocks;->state:I

    return v0
.end method

.method public state_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/github/shadowsocks/Shadowsocks;->state:I

    return-void
.end method

.method public unregisterCallback()V
    .locals 0

    .prologue
    .line 98
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->unregisterCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public updateTraffic(JJJJ)V
    .locals 3
    .param p1, "txRate"    # J
    .param p3, "rxRate"    # J
    .param p5, "txTotal"    # J
    .param p7, "rxTotal"    # J

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/github/shadowsocks/Shadowsocks;->txText()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v1, p5, p6}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->formatTraffic(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-direct {p0}, Lcom/github/shadowsocks/Shadowsocks;->rxText()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v1, p7, p8}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->formatTraffic(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-direct {p0}, Lcom/github/shadowsocks/Shadowsocks;->txRateText()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v2, p1, p2}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->formatTraffic(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, "/s"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    invoke-direct {p0}, Lcom/github/shadowsocks/Shadowsocks;->rxRateText()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v2, p3, p4}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->formatTraffic(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v2, "/s"

    invoke-virtual {v1, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
