.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;
.super Ljava/lang/Thread;
.source "ShadowsocksSettings.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->downloadAcl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksSettings;

.field private final progressDialog$1:Landroid/app/ProgressDialog;

.field public final url$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings;
    .param p2, "url$1"    # Ljava/lang/String;
    .param p3, "progressDialog$1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 412
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->url$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->progressDialog$1:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const v9, 0x7f09002c

    const/4 v8, 0x0

    const v7, 0x7f0c00ad

    const v6, 0x7f09002a

    const v5, 0x1040013

    .line 414
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 416
    :try_start_0
    sget-object v1, Lcom/github/shadowsocks/utils/IOUtils$;->MODULE$:Lcom/github/shadowsocks/utils/IOUtils$;

    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    sget-object v2, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    const-string v2, "self.acl"

    invoke-virtual {v0, v2}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/github/shadowsocks/utils/CloseUtils$;->MODULE$:Lcom/github/shadowsocks/utils/CloseUtils$;

    .line 417
    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2$$anonfun$run$1;

    invoke-direct {v3, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2$$anonfun$run$1;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;)V

    new-instance v4, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2$$anonfun$run$2;

    invoke-direct {v4, p0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2$$anonfun$run$2;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;)V

    invoke-virtual {v0, v3, v4}, Lcom/github/shadowsocks/utils/CloseUtils$;->autoClose(Lscala/Function0;Lscala/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 416
    invoke-virtual {v1, v2, v0}, Lcom/github/shadowsocks/utils/IOUtils$;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->progressDialog$1:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 419
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v1

    const v2, 0x7f0c00ad

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 420
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 421
    const v1, 0x1040013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    const v2, 0x7f09002d

    invoke-virtual {v1, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 437
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->progressDialog$1:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 438
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 439
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v1, v6}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 440
    invoke-virtual {v0, v5, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v1, v9}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 443
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 426
    :catch_1
    move-exception v0

    .line 427
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 428
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->progressDialog$1:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 429
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 430
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v1, v6}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 431
    invoke-virtual {v0, v5, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$2;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v1, v9}, Lcom/github/shadowsocks/ShadowsocksSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 434
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0
.end method
