.class public final Lcom/github/shadowsocks/ProfileManagerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/github/shadowsocks/ServiceBoundContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;,
        Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;,
        Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubViewHolder;,
        Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final REQUEST_QRCODE:I

.field private bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

.field private binder:Landroid/os/IBinder;

.field private volatile bitmap$0:B

.field private com$github$shadowsocks$ProfileManagerActivity$$clipboard:Landroid/content/ClipboardManager;

.field private final com$github$shadowsocks$ProfileManagerActivity$$handler:Landroid/os/Handler;

.field private com$github$shadowsocks$ProfileManagerActivity$$isNfcAvailable:Z

.field private com$github$shadowsocks$ProfileManagerActivity$$isNfcBeamEnabled:Z

.field private com$github$shadowsocks$ProfileManagerActivity$$isTesting:Z

.field private com$github$shadowsocks$ProfileManagerActivity$$is_sort:Z

.field private com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter:Landroid/nfc/NfcAdapter;

.field private com$github$shadowsocks$ProfileManagerActivity$$nfcShareItem:[B

.field private com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

.field private com$github$shadowsocks$ProfileManagerActivity$$selectedItem:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

.field private com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess:Lcom/github/shadowsocks/GuardedProcess;

.field private com$github$shadowsocks$ProfileManagerActivity$$ssrsubAdapter:Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;

.field private com$github$shadowsocks$ProfileManagerActivity$$testAsyncJob:Ljava/lang/Thread;

.field private com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog:Landroid/app/ProgressDialog;

.field private com$github$shadowsocks$ProfileManagerActivity$$undoManager:Lcom/github/shadowsocks/widget/UndoSnackbarManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/github/shadowsocks/widget/UndoSnackbarManager",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

.field private com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

.field private com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

.field private isNfcEnabled:Z

.field private menu:Lcom/github/clans/fab/FloatingActionMenu;

.field private final showProgresshandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->$init$(Lcom/github/shadowsocks/ServiceBoundContext;)V

    .line 422
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$handler:Landroid/os/Handler;

    .line 440
    iput-boolean v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isTesting:Z

    .line 443
    iput v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->REQUEST_QRCODE:I

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$is_sort:Z

    .line 956
    new-instance v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$5;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$5;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    iput-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->showProgresshandler:Landroid/os/Handler;

    return-void
.end method

.method private com$github$shadowsocks$ProfileManagerActivity$$clipboard$lzycompute()Landroid/content/ClipboardManager;
    .locals 1

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$clipboard:Landroid/content/ClipboardManager;

    iget-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$clipboard:Landroid/content/ClipboardManager;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private com$github$shadowsocks$ProfileManagerActivity$$isNfcAvailable_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 434
    iput-boolean p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcAvailable:Z

    return-void
.end method

.method private com$github$shadowsocks$ProfileManagerActivity$$isNfcBeamEnabled_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcBeamEnabled:Z

    return-void
.end method

.method private com$github$shadowsocks$ProfileManagerActivity$$is_sort_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$is_sort:Z

    return-void
.end method

.method private com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter_$eq(Landroid/nfc/NfcAdapter;)V
    .locals 0
    .param p1, "x$1"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method private com$github$shadowsocks$ProfileManagerActivity$$nfcShareItem()[B
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcShareItem:[B

    return-object v0
.end method

.method private com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter$lzycompute()Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;
    .locals 1

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    iput-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    iget-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private com$github$shadowsocks$ProfileManagerActivity$$ssrsubAdapter$lzycompute()Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;
    .locals 1

    .prologue
    .line 427
    monitor-enter p0

    :try_start_0
    iget-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;

    invoke-direct {v0, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    iput-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssrsubAdapter:Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;

    iget-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    :cond_0
    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssrsubAdapter:Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private com$github$shadowsocks$ProfileManagerActivity$$testAsyncJob_$eq(Ljava/lang/Thread;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/Thread;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testAsyncJob:Ljava/lang/Thread;

    return-void
.end method

.method private com$github$shadowsocks$ProfileManagerActivity$$undoManager_$eq(Lcom/github/shadowsocks/widget/UndoSnackbarManager;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/widget/UndoSnackbarManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/shadowsocks/widget/UndoSnackbarManager",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$undoManager:Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    return-void
.end method

.method private isNfcEnabled_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->isNfcEnabled:Z

    return-void
.end method

.method private menu()Lcom/github/clans/fab/FloatingActionMenu;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->menu:Lcom/github/clans/fab/FloatingActionMenu;

    return-object v0
.end method

.method private menu_$eq(Lcom/github/clans/fab/FloatingActionMenu;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/clans/fab/FloatingActionMenu;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->menu:Lcom/github/clans/fab/FloatingActionMenu;

    return-void
.end method


# virtual methods
.method public attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "callback"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/github/shadowsocks/ServiceBoundContext$class;->attachService(Lcom/github/shadowsocks/ServiceBoundContext;Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    return-void
.end method

.method public bgService()Lcom/github/shadowsocks/aidl/IShadowsocksService;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-object v0
.end method

.method public bgService_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksService;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksService;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bgService:Lcom/github/shadowsocks/aidl/IShadowsocksService;

    return-void
.end method

.method public binder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public binderDied()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->binderDied(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public binder_$eq(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "x$1"    # Landroid/os/IBinder;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$clipboard()Landroid/content/ClipboardManager;
    .locals 1

    .prologue
    .line 430
    iget-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    and-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$clipboard$lzycompute()Landroid/content/ClipboardManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$clipboard:Landroid/content/ClipboardManager;

    goto :goto_0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$handler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$handler:Landroid/os/Handler;

    return-object v0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$isNfcAvailable()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcAvailable:Z

    return v0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$isNfcBeamEnabled()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcBeamEnabled:Z

    return v0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$isTesting()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isTesting:Z

    return v0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$isTesting_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isTesting:Z

    return-void
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$is_sort()Z
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$is_sort:Z

    return v0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$nfcShareItem_$eq([B)V
    .locals 0
    .param p1, "x$1"    # [B

    .prologue
    .line 433
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcShareItem:[B

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onCheckedChanged$body$1(Landroid/widget/CompoundButton;ZLandroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "x$28"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z
    .param p3, "prefs$1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 711
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 712
    .local v0, "prefs_edit":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_0

    .line 713
    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->ssrsub_autoupdate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 717
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 715
    :cond_0
    sget-object v1, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/utils/Key$;->ssrsub_autoupdate()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "x$29"    # Landroid/content/DialogInterface;
    .param p2, "x$30"    # I

    .prologue
    .line 723
    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$13$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/utils/Utils$;->ThrowableFuture(Lscala/Function0;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$14(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "x$32"    # Landroid/content/DialogInterface;
    .param p2, "x$33"    # I

    .prologue
    .line 793
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 794
    .local v0, "UrlAddEdit":Landroid/widget/EditText;
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 795
    const v2, 0x7f0900ad

    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 796
    const v2, 0x104000a

    new-instance v3, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$27;

    invoke-direct {v3, p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$27;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 838
    const v2, 0x1040009

    new-instance v3, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$33;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$33;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 841
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 842
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 843
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15(Landroid/content/DialogInterface;ILandroid/widget/EditText;)V
    .locals 2
    .param p1, "x$34"    # Landroid/content/DialogInterface;
    .param p2, "x$35"    # I
    .param p3, "UrlAddEdit$1"    # Landroid/widget/EditText;

    .prologue
    .line 797
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 798
    :cond_0
    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;

    invoke-direct {v1, p0, p3}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$15$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/utils/Utils$;->ThrowableFuture(Lscala/Function0;)V

    .line 797
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    :cond_2
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$handler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$32;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$32;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$16(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "x$36"    # Landroid/content/DialogInterface;
    .param p2, "x$37"    # I

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->ssrsubDialog()V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$17(Landroid/content/DialogInterface;ILscala/collection/immutable/List;)V
    .locals 2
    .param p1, "x$39"    # Landroid/content/DialogInterface;
    .param p2, "x$40"    # I
    .param p3, "profiles$2"    # Lscala/collection/immutable/List;

    .prologue
    .line 889
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$17$1;

    invoke-direct {v1, p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$17$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lcom/github/shadowsocks/database/ProfileManager;)V

    invoke-virtual {p3, v1}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$18(Landroid/content/DialogInterface;ILscala/collection/immutable/List;)V
    .locals 2
    .param p1, "x$41"    # Landroid/content/DialogInterface;
    .param p2, "x$42"    # I
    .param p3, "profiles$2"    # Lscala/collection/immutable/List;

    .prologue
    .line 891
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$18$1;

    invoke-direct {v1, p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$18$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lcom/github/shadowsocks/database/ProfileManager;)V

    invoke-virtual {p3, v1}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$19(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "x$43"    # Landroid/content/DialogInterface;
    .param p2, "x$44"    # I

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$20(Landroid/content/DialogInterface;ILscala/collection/immutable/List;)V
    .locals 2
    .param p1, "x$46"    # Landroid/content/DialogInterface;
    .param p2, "x$47"    # I
    .param p3, "profiles$3"    # Lscala/collection/immutable/List;

    .prologue
    .line 913
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$20$1;

    invoke-direct {v1, p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$20$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lcom/github/shadowsocks/database/ProfileManager;)V

    invoke-virtual {p3, v1}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$21(Landroid/content/DialogInterface;ILscala/collection/immutable/List;)V
    .locals 2
    .param p1, "x$48"    # Landroid/content/DialogInterface;
    .param p2, "x$49"    # I
    .param p3, "profiles$3"    # Lscala/collection/immutable/List;

    .prologue
    .line 915
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$21$1;

    invoke-direct {v1, p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$21$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lcom/github/shadowsocks/database/ProfileManager;)V

    invoke-virtual {p3, v1}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$22(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "x$50"    # Landroid/content/DialogInterface;
    .param p2, "x$51"    # I

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$5(Landroid/view/View;)V
    .locals 2
    .param p1, "x$12"    # Landroid/view/View;

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 482
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 483
    :cond_0
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 480
    :goto_0
    return-void

    .line 484
    :cond_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$6(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "x$13"    # Landroid/content/DialogInterface;
    .param p2, "x$14"    # I

    .prologue
    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NFC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$7(Landroid/content/DialogInterface;ILscala/collection/immutable/List;)V
    .locals 2
    .param p1, "x$16"    # Landroid/content/DialogInterface;
    .param p2, "x$17"    # I
    .param p3, "profiles$1"    # Lscala/collection/immutable/List;

    .prologue
    .line 634
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$7$1;

    invoke-direct {v1, p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$7$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lcom/github/shadowsocks/database/ProfileManager;)V

    invoke-virtual {p3, v1}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$8(Landroid/content/DialogInterface;ILscala/collection/immutable/List;)V
    .locals 2
    .param p1, "x$18"    # Landroid/content/DialogInterface;
    .param p2, "x$19"    # I
    .param p3, "profiles$1"    # Lscala/collection/immutable/List;

    .prologue
    .line 636
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    new-instance v1, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$8$1;

    invoke-direct {v1, p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$com$github$shadowsocks$ProfileManagerActivity$$onClick$body$8$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lcom/github/shadowsocks/database/ProfileManager;)V

    invoke-virtual {p3, v1}, Lscala/collection/immutable/List;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onClick$body$9(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "x$20"    # Landroid/content/DialogInterface;
    .param p2, "x$21"    # I

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$onMenuToggle$body$1(ZLcom/github/clans/fab/FloatingActionButton;)V
    .locals 2
    .param p1, "opened"    # Z
    .param p2, "qrcodeAddFAB$1"    # Lcom/github/clans/fab/FloatingActionButton;

    .prologue
    .line 551
    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 551
    :goto_0
    invoke-virtual {p2, v0}, Lcom/github/clans/fab/FloatingActionButton;->setVisibility(I)V

    :cond_0
    return-void

    .line 552
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;
    .locals 1

    .prologue
    .line 426
    iget-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter$lzycompute()Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter:Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$$run$body$9()V
    .locals 0

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->ssrsubDialog()V

    return-void
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$selectedItem()Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$selectedItem:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    return-object v0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$selectedItem_$eq(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$selectedItem:Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    return-void
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess()Lcom/github/shadowsocks/GuardedProcess;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-object v0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/GuardedProcess;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess:Lcom/github/shadowsocks/GuardedProcess;

    return-void
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$ssrsubAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;
    .locals 1

    .prologue
    .line 427
    iget-byte v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->bitmap$0:B

    and-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssrsubAdapter$lzycompute()Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssrsubAdapter:Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;

    goto :goto_0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$testAsyncJob()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testAsyncJob:Ljava/lang/Thread;

    return-object v0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog_$eq(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "x$1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 438
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public com$github$shadowsocks$ProfileManagerActivity$$undoManager()Lcom/github/shadowsocks/widget/UndoSnackbarManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/shadowsocks/widget/UndoSnackbarManager",
            "<",
            "Lcom/github/shadowsocks/database/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$undoManager:Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback()Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callbackRegistered_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ServiceBoundContext$$callbackRegistered:Z

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$callback_$eq(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ServiceBoundContext$$callback:Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;

    return-void
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection()Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-object v0
.end method

.method public com$github$shadowsocks$ServiceBoundContext$$connection_$eq(Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ServiceBoundContext$$connection:Lcom/github/shadowsocks/ServiceBoundContext$ShadowsocksServiceConnection;

    return-void
.end method

.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 9
    .param p1, "nfcEvent"    # Landroid/nfc/NfcEvent;

    .prologue
    .line 954
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/nfc/NdefRecord;

    const/4 v3, 0x0

    new-instance v4, Landroid/nfc/NdefRecord;

    const/4 v5, 0x3

    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcShareItem()[B

    move-result-object v6

    sget-object v0, Lscala/Array$;->MODULE$:Lscala/Array$;

    sget-object v7, Lscala/collection/immutable/Nil$;->MODULE$:Lscala/collection/immutable/Nil$;

    sget-object v8, Lscala/reflect/ClassTag$;->MODULE$:Lscala/reflect/ClassTag$;

    invoke-virtual {v8}, Lscala/reflect/ClassTag$;->Byte()Lscala/reflect/ClassTag;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lscala/Array$;->apply(Lscala/collection/Seq;Lscala/reflect/ClassTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcShareItem()[B

    move-result-object v7

    invoke-direct {v4, v5, v6, v0, v7}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    aput-object v4, v1, v3

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Landroid/nfc/NdefRecord;

    invoke-direct {v2, v0}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
.end method

.method public detachService()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->detachService(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public handleShareIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 868
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 869
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 878
    .local v5, "sharedStr":Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 895
    :goto_1
    return-void

    .line 870
    .end local v5    # "sharedStr":Ljava/lang/String;
    :cond_0
    const-string v8, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 871
    const-string v6, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 872
    .local v4, "rawMsgs":[Landroid/os/Parcelable;
    if-eqz v4, :cond_1

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    move-object v6, v4

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v8, v6}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v6

    invoke-interface {v6}, Lscala/collection/mutable/ArrayOps;->nonEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 873
    new-instance v7, Ljava/lang/String;

    aget-object v6, v4, v9

    check-cast v6, Landroid/nfc/NdefMessage;

    invoke-virtual {v6}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v6

    aget-object v6, v6, v9

    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    move-object v6, v7

    :goto_2
    move-object v5, v6

    .line 870
    goto :goto_0

    :cond_1
    move-object v6, v7

    .line 874
    goto :goto_2

    .end local v4    # "rawMsgs":[Landroid/os/Parcelable;
    :cond_2
    move-object v5, v7

    .line 875
    goto :goto_0

    .line 879
    .restart local v5    # "sharedStr":Ljava/lang/String;
    :cond_3
    sget-object v6, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v6, v5}, Lcom/github/shadowsocks/utils/Parser$;->findAll(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v6

    invoke-interface {v6}, Lscala/collection/Iterator;->toList()Lscala/collection/immutable/List;

    move-result-object v2

    .line 880
    .local v2, "profiles_normal":Lscala/collection/immutable/List;
    sget-object v6, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v6, v5}, Lcom/github/shadowsocks/utils/Parser$;->findAll_ssr(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v6

    invoke-interface {v6}, Lscala/collection/Iterator;->toList()Lscala/collection/immutable/List;

    move-result-object v3

    .line 881
    .local v3, "profiles_ssr":Lscala/collection/immutable/List;
    invoke-virtual {v2, v3}, Lscala/collection/immutable/List;->$colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object v1

    .line 882
    .local v1, "profiles":Lscala/collection/immutable/List;
    invoke-virtual {v1}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 883
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    goto :goto_1

    .line 886
    :cond_4
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    const v7, 0x7f0c00ad

    invoke-direct {v6, p0, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 887
    const v7, 0x7f09003a

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 888
    const v7, 0x1040013

    new-instance v8, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$34;

    invoke-direct {v8, p0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$34;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lscala/collection/immutable/List;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 890
    const v7, 0x7f090057

    new-instance v8, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$35;

    invoke-direct {v8, p0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$35;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lscala/collection/immutable/List;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 892
    const v7, 0x1040009

    new-instance v8, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$36;

    invoke-direct {v8, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$36;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 893
    const-string v7, "\n"

    invoke-virtual {v1, v7}, Lscala/collection/immutable/List;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 894
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 895
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_1
.end method

.method public initFab()V
    .locals 8

    .prologue
    .line 533
    const v6, 0x7f1100bd

    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/github/clans/fab/FloatingActionMenu;

    invoke-direct {p0, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->menu_$eq(Lcom/github/clans/fab/FloatingActionMenu;)V

    .line 534
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->menu()Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/github/clans/fab/FloatingActionMenu;->setClosedOnTouchOutside(Z)V

    .line 535
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    .line 536
    .local v0, "dm":Landroid/support/v7/widget/AppCompatDrawableManager;
    const v6, 0x7f1100bf

    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/clans/fab/FloatingActionButton;

    .line 537
    .local v2, "manualAddFAB":Lcom/github/clans/fab/FloatingActionButton;
    const v6, 0x7f020078

    invoke-virtual {v0, p0, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 538
    invoke-virtual {v2, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    const v6, 0x7f1100c0

    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/github/clans/fab/FloatingActionButton;

    .line 540
    .local v4, "qrcodeAddFAB":Lcom/github/clans/fab/FloatingActionButton;
    const v6, 0x7f02007d

    invoke-virtual {v0, p0, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    invoke-virtual {v4, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 542
    const v6, 0x7f1100c1

    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/github/clans/fab/FloatingActionButton;

    .line 543
    .local v3, "nfcAddFAB":Lcom/github/clans/fab/FloatingActionButton;
    const v6, 0x7f02007a

    invoke-virtual {v0, p0, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    invoke-virtual {v3, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    const v6, 0x7f1100c2

    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/github/clans/fab/FloatingActionButton;

    .line 546
    .local v1, "importAddFAB":Lcom/github/clans/fab/FloatingActionButton;
    const v6, 0x7f020079

    invoke-virtual {v0, p0, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    invoke-virtual {v1, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    const v6, 0x7f1100be

    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/github/clans/fab/FloatingActionButton;

    .line 549
    .local v5, "ssrsubAddFAB":Lcom/github/clans/fab/FloatingActionButton;
    const v6, 0x7f020081

    invoke-virtual {v0, p0, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/clans/fab/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 550
    invoke-virtual {v5, p0}, Lcom/github/clans/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->menu()Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v6

    new-instance v7, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$14;

    invoke-direct {v7, p0, v4}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$14;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lcom/github/clans/fab/FloatingActionButton;)V

    invoke-virtual {v6, v7}, Lcom/github/clans/fab/FloatingActionMenu;->setOnMenuToggleListener(Lcom/github/clans/fab/FloatingActionMenu$OnMenuToggleListener;)V

    return-void
.end method

.method public isPortAvailable(I)Z
    .locals 3
    .param p1, "port"    # I

    .prologue
    .line 449
    const/4 v0, 0x1

    .line 452
    .local v0, "result":Z
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    const-string v2, "127.0.0.1"

    invoke-direct {v1, v2, p1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 453
    const/4 v0, 0x0

    .line 451
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :goto_0
    return v0

    .line 455
    :catch_0
    move-exception v1

    sget-object v1, Lscala/Unit$;->MODULE$:Lscala/Unit$;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 899
    if-nez p1, :cond_0

    .line 900
    const/4 v5, -0x1

    if-ne p2, v5, :cond_3

    .line 901
    const-string v5, "SCAN_RESULT"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "contents":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 908
    .end local v0    # "contents":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 903
    .restart local v0    # "contents":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v5, v0}, Lcom/github/shadowsocks/utils/Parser$;->findAll(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v5

    invoke-interface {v5}, Lscala/collection/Iterator;->toList()Lscala/collection/immutable/List;

    move-result-object v3

    .line 904
    .local v3, "profiles_normal":Lscala/collection/immutable/List;
    sget-object v5, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v5, v0}, Lcom/github/shadowsocks/utils/Parser$;->findAll_ssr(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v5

    invoke-interface {v5}, Lscala/collection/Iterator;->toList()Lscala/collection/immutable/List;

    move-result-object v4

    .line 905
    .local v4, "profiles_ssr":Lscala/collection/immutable/List;
    invoke-virtual {v3, v4}, Lscala/collection/immutable/List;->$colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object v2

    .line 906
    .local v2, "profiles":Lscala/collection/immutable/List;
    invoke-virtual {v2}, Lscala/collection/immutable/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 907
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    goto :goto_0

    .line 910
    :cond_2
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    const v6, 0x7f0c00ad

    invoke-direct {v5, p0, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 911
    const v6, 0x7f09003a

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 912
    const v6, 0x1040013

    new-instance v7, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$37;

    invoke-direct {v7, p0, v2}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$37;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lscala/collection/immutable/List;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 914
    const v6, 0x7f090057

    new-instance v7, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$38;

    invoke-direct {v7, p0, v2}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$38;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lscala/collection/immutable/List;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 916
    const v6, 0x1040009

    new-instance v7, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$39;

    invoke-direct {v7, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$39;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 917
    const-string v6, "\n"

    invoke-virtual {v2, v6}, Lscala/collection/immutable/List;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 918
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 919
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 921
    .end local v0    # "contents":Ljava/lang/String;
    .end local v1    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "profiles":Lscala/collection/immutable/List;
    .end local v3    # "profiles_normal":Lscala/collection/immutable/List;
    .end local v4    # "profiles_ssr":Lscala/collection/immutable/List;
    :cond_3
    if-nez p2, :cond_0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 950
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->menu()Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/clans/fab/FloatingActionMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->menu()Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/github/clans/fab/FloatingActionMenu;->close(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v10, 0x7f0c00ad

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v8, Lscala/MatchError;

    invoke-static {v7}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v8, v7}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 646
    :pswitch_0
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->menu()Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/github/clans/fab/FloatingActionMenu;->toggle(Z)V

    .line 647
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->ssrsubDialog()V

    .line 641
    :goto_0
    return-void

    .line 625
    :pswitch_1
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->menu()Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/github/clans/fab/FloatingActionMenu;->toggle(Z)V

    .line 626
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$clipboard()Landroid/content/ClipboardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 627
    sget-object v7, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$clipboard()Landroid/content/ClipboardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/github/shadowsocks/utils/Parser$;->findAll(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v7

    invoke-interface {v7}, Lscala/collection/Iterator;->toList()Lscala/collection/immutable/List;

    move-result-object v3

    .line 628
    .local v3, "profiles_normal":Lscala/collection/immutable/List;
    sget-object v7, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$clipboard()Landroid/content/ClipboardManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/github/shadowsocks/utils/Parser$;->findAll_ssr(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v7

    invoke-interface {v7}, Lscala/collection/Iterator;->toList()Lscala/collection/immutable/List;

    move-result-object v4

    .line 629
    .local v4, "profiles_ssr":Lscala/collection/immutable/List;
    invoke-virtual {v4, v3}, Lscala/collection/immutable/List;->$colon$colon$colon(Lscala/collection/immutable/List;)Lscala/collection/immutable/List;

    move-result-object v2

    .line 630
    .local v2, "profiles":Lscala/collection/immutable/List;
    invoke-virtual {v2}, Lscala/collection/immutable/List;->nonEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 631
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v7, p0, v10}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 632
    const v8, 0x7f09003a

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 633
    const v8, 0x1040013

    new-instance v9, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$16;

    invoke-direct {v9, p0, v2}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$16;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lscala/collection/immutable/List;)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 635
    const v8, 0x7f090057

    new-instance v9, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$17;

    invoke-direct {v9, p0, v2}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$17;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lscala/collection/immutable/List;)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 637
    const v8, 0x1040009

    new-instance v9, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$18;

    invoke-direct {v9, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$18;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 638
    const-string v8, "\n"

    invoke-virtual {v2, v8}, Lscala/collection/immutable/List;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 639
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 640
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 644
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "profiles":Lscala/collection/immutable/List;
    .end local v3    # "profiles_normal":Lscala/collection/immutable/List;
    .end local v4    # "profiles_ssr":Lscala/collection/immutable/List;
    :cond_0
    const v7, 0x7f090036

    invoke-static {p0, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 609
    :pswitch_2
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->menu()Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/github/clans/fab/FloatingActionMenu;->toggle(Z)V

    .line 610
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v7, p0, v10}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 611
    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 612
    const v8, 0x7f090066

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 613
    const v8, 0x7f09003f

    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 614
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 615
    .restart local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcBeamEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 621
    const v7, 0x7f09003e

    invoke-virtual {p0, v7}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 623
    :goto_1
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 616
    :cond_1
    const v7, 0x7f0900aa

    invoke-virtual {p0, v7}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 617
    const/4 v7, -0x3

    const v8, 0x7f0900c8

    invoke-virtual {p0, v8}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$15;

    invoke-direct {v9, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$15;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v0, v7, v8, v9}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    .line 606
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    :pswitch_3
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->menu()Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/github/clans/fab/FloatingActionMenu;->toggle(Z)V

    .line 607
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->qrcodeScan()V

    goto/16 :goto_0

    .line 600
    :pswitch_4
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->menu()Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/github/clans/fab/FloatingActionMenu;->toggle(Z)V

    .line 601
    sget-object v7, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v7}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v5

    .local v5, "qual$3":Lcom/github/shadowsocks/database/ProfileManager;
    invoke-virtual {v5}, Lcom/github/shadowsocks/database/ProfileManager;->createProfile$default$1()Lcom/github/shadowsocks/database/Profile;

    move-result-object v6

    .local v6, "x$56":Lcom/github/shadowsocks/database/Profile;
    invoke-virtual {v5, v6}, Lcom/github/shadowsocks/database/ProfileManager;->createProfile(Lcom/github/shadowsocks/database/Profile;)Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    .line 602
    .local v1, "profile":Lcom/github/shadowsocks/database/Profile;
    sget-object v7, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v7}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/github/shadowsocks/database/ProfileManager;->updateProfile(Lcom/github/shadowsocks/database/Profile;)Z

    .line 603
    sget-object v7, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v7}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v7

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/github/shadowsocks/ShadowsocksApplication;->switchProfile(I)Lcom/github/shadowsocks/database/Profile;

    .line 604
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    goto/16 :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x7f1100be
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/16 v6, 0x2000

    .line 462
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 464
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v5, Lcom/github/shadowsocks/utils/Action$;->MODULE$:Lcom/github/shadowsocks/utils/Action$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/utils/Action$;->SCAN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->qrcodeScan()V

    .line 469
    :cond_0
    if-eqz v0, :cond_1

    sget-object v5, Lcom/github/shadowsocks/utils/Action$;->MODULE$:Lcom/github/shadowsocks/utils/Action$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/utils/Action$;->SORT()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 470
    invoke-direct {p0, v8}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$is_sort_$eq(Z)V

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 474
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 475
    const v5, 0x7f04002f

    invoke-virtual {p0, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->setContentView(I)V

    .line 477
    const v5, 0x7f1100b3

    invoke-virtual {p0, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/Toolbar;

    .line 478
    .local v4, "toolbar":Landroid/support/v7/widget/Toolbar;
    const v5, 0x7f09008b

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setTitle(I)V

    .line 479
    const v5, 0x7f02007e

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 480
    new-instance v5, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$13;

    invoke-direct {v5, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$13;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    const v5, 0x7f120001

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/Toolbar;->inflateMenu(I)V

    .line 487
    invoke-virtual {v4, p0}, Landroid/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;)V

    .line 489
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->initFab()V

    .line 491
    sget-object v5, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v5

    new-instance v6, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$3;

    invoke-direct {v6, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$3;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v5, v6}, Lcom/github/shadowsocks/database/ProfileManager;->setProfileAddedListener(Lscala/Function1;)V

    .line 492
    const v5, 0x7f1100bc

    invoke-virtual {p0, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    .line 493
    .local v3, "profilesList":Landroid/support/v7/widget/RecyclerView;
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 494
    .local v2, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 495
    new-instance v5, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v5}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 496
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 497
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->profiles()Lscala/collection/mutable/ArrayBuffer;

    move-result-object v5

    sget-object v6, Lscala/collection/mutable/ArrayBuffer$;->MODULE$:Lscala/collection/mutable/ArrayBuffer$;

    invoke-virtual {v6}, Lscala/collection/mutable/ArrayBuffer$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscala/collection/mutable/ArrayBuffer;->zipWithIndex(Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscala/collection/TraversableOnce;

    new-instance v6, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$2;

    invoke-direct {v6, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$2;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-interface {v5, v6}, Lscala/collection/TraversableOnce;->collectFirst(Lscala/PartialFunction;)Lscala/Option;

    move-result-object v5

    .line 499
    new-instance v6, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$1;

    invoke-direct {v6, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v5, v6}, Lscala/Option;->getOrElse(Lscala/Function0;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v5

    .line 497
    invoke-virtual {v2, v5}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 500
    new-instance v5, Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    new-instance v6, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$4;

    invoke-direct {v6, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$4;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    new-instance v7, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$5;

    invoke-direct {v7, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$onCreate$5;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-direct {v5, v3, v6, v7}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;-><init>(Landroid/view/View;Lscala/Function1;Lscala/Function1;)V

    invoke-direct {p0, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$undoManager_$eq(Lcom/github/shadowsocks/widget/UndoSnackbarManager;)V

    .line 501
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$is_sort()Z

    move-result v5

    if-nez v5, :cond_2

    .line 502
    new-instance v5, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v6, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$2;

    invoke-direct {v6, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$2;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-direct {v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 513
    invoke-virtual {v5, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 516
    :cond_2
    new-instance v5, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$1;

    invoke-direct {v5, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {p0, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->attachService(Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;)V

    .line 522
    sget-object v5, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication;->settings()Landroid/content/SharedPreferences;

    move-result-object v5

    sget-object v6, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/Key$;->profileTip()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 523
    sget-object v5, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication;->editor()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sget-object v6, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v6}, Lcom/github/shadowsocks/utils/Key$;->profileTip()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 524
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    const v6, 0x7f0c00ad

    invoke-direct {v5, p0, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v6, 0x7f090087

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 525
    const v6, 0x7f090088

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090066

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 528
    :cond_3
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 529
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->handleShareIntent(Landroid/content/Intent;)V

    .line 461
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 937
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->detachService()V

    .line 939
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess()Lcom/github/shadowsocks/GuardedProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/GuardedProcess;->destroy()V

    .line 941
    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssTestProcess_$eq(Lcom/github/shadowsocks/GuardedProcess;)V

    .line 944
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$undoManager()Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->flush()V

    .line 945
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/database/ProfileManager;->setProfileAddedListener(Lscala/Function1;)V

    .line 946
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v5, 0x7f0900c6

    const v2, 0x7f090032

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 965
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v4, v3

    :goto_0
    return v4

    .line 1167
    :pswitch_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    .line 1168
    new-instance v6, Landroid/content/Intent;

    sget-object v0, Lcom/github/shadowsocks/utils/Action$;->MODULE$:Lcom/github/shadowsocks/utils/Action$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/utils/Action$;->SORT()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 975
    .end local v6    # "intent":Landroid/content/Intent;
    :pswitch_2
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/ProfileManager;->getAllProfiles()Lscala/Option;

    move-result-object v0

    .line 976
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscala/collection/immutable/List;

    .line 978
    .local v7, "profiles":Lscala/collection/immutable/List;
    invoke-virtual {p0, v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isTesting_$eq(Z)V

    .line 980
    invoke-virtual {p0, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$7;

    invoke-direct {v5, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$7;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testProgressDialog_$eq(Landroid/app/ProgressDialog;)V

    .line 996
    new-instance v0, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;

    invoke-direct {v0, p0, v7}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$4;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Lscala/collection/immutable/List;)V

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testAsyncJob_$eq(Ljava/lang/Thread;)V

    .line 1161
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$testAsyncJob()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 1163
    .end local v7    # "profiles":Lscala/collection/immutable/List;
    :cond_0
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 967
    :pswitch_3
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/shadowsocks/database/ProfileManager;->getAllProfiles()Lscala/Option;

    move-result-object v0

    .line 968
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscala/collection/immutable/List;

    .line 969
    .restart local v7    # "profiles":Lscala/collection/immutable/List;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$clipboard()Landroid/content/ClipboardManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\n"

    invoke-virtual {v7, v2}, Lscala/collection/immutable/List;->mkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 970
    const v0, 0x7f090033

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 971
    .end local v7    # "profiles":Lscala/collection/immutable/List;
    :cond_1
    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto/16 :goto_0

    .line 965
    :pswitch_data_0
    .packed-switch 0x7f110104
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 562
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 563
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity;->handleShareIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 557
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 558
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->updateNfcState()V

    return-void
.end method

.method public onServiceConnected()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->onServiceConnected(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->onServiceDisconnected(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 928
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 929
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->registerCallback()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 932
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 933
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->unregisterCallback()V

    return-void
.end method

.method public qrcodeScan()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 568
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 569
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SCAN_MODE"

    const-string v2, "QR_CODE_MODE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 592
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->menu()Lcom/github/clans/fab/FloatingActionMenu;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/github/clans/fab/FloatingActionMenu;->toggle(Z)V

    .line 593
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/github/shadowsocks/ScannerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public registerCallback()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->registerCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public showProgresshandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity;->showProgresshandler:Landroid/os/Handler;

    return-object v0
.end method

.method public ssrsubDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 652
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 654
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const v5, 0x7f040033

    invoke-static {p0, v5, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 655
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f1100c7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    .line 657
    .local v3, "sw_ssr_sub_autoupdate_enable":Landroid/widget/Switch;
    sget-object v5, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/shadowsocks/ShadowsocksApplication;->ssrsubManager()Lcom/github/shadowsocks/database/SSRSubManager;

    move-result-object v5

    new-instance v6, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$ssrsubDialog$1;

    invoke-direct {v6, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$ssrsubDialog$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v5, v6}, Lcom/github/shadowsocks/database/SSRSubManager;->setSSRSubAddedListener(Lscala/Function1;)V

    .line 658
    const v5, 0x7f1100c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 659
    .local v2, "ssusubsList":Landroid/support/v7/widget/RecyclerView;
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 660
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 661
    new-instance v5, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v5}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 662
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$ssrsubAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$SSRSubAdapter;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 663
    new-instance v5, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v6, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;

    invoke-direct {v6, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anon$3;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-direct {v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 704
    invoke-virtual {v5, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 706
    sget-object v5, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v5}, Lcom/github/shadowsocks/utils/Key$;->ssrsub_autoupdate()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 707
    invoke-virtual {v3, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 710
    :cond_0
    new-instance v5, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$22;

    invoke-direct {v5, p0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$22;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 720
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 721
    const v6, 0x7f09003d

    invoke-virtual {p0, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 722
    const v6, 0x7f0900b1

    new-instance v7, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$23;

    invoke-direct {v7, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$23;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 791
    const v6, 0x1040009

    invoke-virtual {v5, v6, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 792
    const v6, 0x7f0900ad

    new-instance v7, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$26;

    invoke-direct {v7, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$$anonfun$26;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 845
    invoke-virtual {v5, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 846
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    .line 847
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method public unregisterCallback()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/github/shadowsocks/ServiceBoundContext$class;->unregisterCallback(Lcom/github/shadowsocks/ServiceBoundContext;)V

    return-void
.end method

.method public updateNfcState()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 851
    invoke-direct {p0, v2}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcAvailable_$eq(Z)V

    .line 852
    invoke-direct {p0, v2}, Lcom/github/shadowsocks/ProfileManagerActivity;->isNfcEnabled_$eq(Z)V

    .line 853
    invoke-direct {p0, v2}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcBeamEnabled_$eq(Z)V

    .line 854
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter_$eq(Landroid/nfc/NfcAdapter;)V

    .line 855
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    invoke-direct {p0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcAvailable_$eq(Z)V

    .line 857
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    invoke-direct {p0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->isNfcEnabled_$eq(Z)V

    .line 859
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    invoke-direct {p0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcBeamEnabled_$eq(Z)V

    .line 861
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 850
    :cond_0
    return-void
.end method
