.class public Lcom/github/shadowsocks/ScannerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ScannerActivity.scala"

# interfaces
.implements Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private scannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private scannerView()Lme/dm7/barcodescanner/zxing/ZXingScannerView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/github/shadowsocks/ScannerActivity;->scannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    return-object v0
.end method

.method private scannerView_$eq(Lme/dm7/barcodescanner/zxing/ZXingScannerView;)V
    .locals 0
    .param p1, "x$1"    # Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/github/shadowsocks/ScannerActivity;->scannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    return-void
.end method


# virtual methods
.method public final com$github$shadowsocks$ScannerActivity$$onClick$body$1(Landroid/view/View;)V
    .locals 0
    .param p1, "x$1"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/github/shadowsocks/ScannerActivity;->navigateUp()V

    return-void
.end method

.method public handleResult(Lcom/google/zxing/Result;)V
    .locals 4
    .param p1, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "uri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    sget-object v1, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/utils/Parser$;->findAll(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v1

    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ScannerActivity$$anonfun$handleResult$1;

    invoke-direct {v3, p0, v2}, Lcom/github/shadowsocks/ScannerActivity$$anonfun$handleResult$1;-><init>(Lcom/github/shadowsocks/ScannerActivity;Lcom/github/shadowsocks/database/ProfileManager;)V

    invoke-interface {v1, v3}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    .line 87
    sget-object v1, Lcom/github/shadowsocks/utils/Parser$;->MODULE$:Lcom/github/shadowsocks/utils/Parser$;

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/utils/Parser$;->findAll_ssr(Ljava/lang/CharSequence;)Lscala/collection/Iterator;

    move-result-object v1

    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileManager()Lcom/github/shadowsocks/database/ProfileManager;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ScannerActivity$$anonfun$handleResult$2;

    invoke-direct {v3, p0, v2}, Lcom/github/shadowsocks/ScannerActivity$$anonfun$handleResult$2;-><init>(Lcom/github/shadowsocks/ScannerActivity;Lcom/github/shadowsocks/database/ProfileManager;)V

    invoke-interface {v1, v3}, Lscala/collection/Iterator;->foreach(Lscala/Function1;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ScannerActivity;->navigateUp()V

    return-void
.end method

.method public navigateUp()V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/github/shadowsocks/ScannerActivity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ScannerActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ScannerActivity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/TaskStackBuilder;->startActivities()V

    .line 43
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/github/shadowsocks/ScannerActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v1, 0x7f040032

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ScannerActivity;->setContentView(I)V

    .line 55
    const v1, 0x7f1100b3

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 56
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ScannerActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 58
    new-instance v1, Lcom/github/shadowsocks/ScannerActivity$$anonfun$1;

    invoke-direct {v1, p0}, Lcom/github/shadowsocks/ScannerActivity$$anonfun$1;-><init>(Lcom/github/shadowsocks/ScannerActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v1, 0x7f1100c6

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ScannerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-direct {p0, v1}, Lcom/github/shadowsocks/ScannerActivity;->scannerView_$eq(Lme/dm7/barcodescanner/zxing/ZXingScannerView;)V

    .line 60
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v1}, Lcom/github/shadowsocks/ScannerActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    const-string v2, "scan"

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutManager;->reportShortcutUsed(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 79
    invoke-direct {p0}, Lcom/github/shadowsocks/ScannerActivity;->scannerView()Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->stopCamera()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 30
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 32
    array-length v0, p3

    if-lez v0, :cond_1

    .line 33
    aget v0, p3, v1

    if-nez v0, :cond_1

    .line 34
    invoke-direct {p0}, Lcom/github/shadowsocks/ScannerActivity;->scannerView()Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V

    .line 35
    invoke-direct {p0}, Lcom/github/shadowsocks/ScannerActivity;->scannerView()Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->startCamera()V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    const v0, 0x7f090040

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 38
    invoke-virtual {p0}, Lcom/github/shadowsocks/ScannerActivity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 64
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 66
    const-string v1, "android.permission.CAMERA"

    .line 65
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "permissionCheck":I
    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/github/shadowsocks/ScannerActivity;->scannerView()Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V

    .line 69
    invoke-direct {p0}, Lcom/github/shadowsocks/ScannerActivity;->scannerView()Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setAutoFocus(Z)V

    .line 70
    invoke-direct {p0}, Lcom/github/shadowsocks/ScannerActivity;->scannerView()Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    move-result-object v1

    invoke-virtual {v1}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->startCamera()V

    .line 63
    :goto_0
    return-void

    .line 73
    :cond_0
    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 72
    invoke-static {p0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method
