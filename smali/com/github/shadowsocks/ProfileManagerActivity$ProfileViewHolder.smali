.class public final Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProfileManagerActivity.scala"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ProfileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProfileViewHolder"
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ProfileManagerActivity;

.field private item:Lcom/github/shadowsocks/database/Profile;

.field private final text:Landroid/widget/CheckedTextView;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ProfileManagerActivity;Landroid/view/View;)V
    .locals 4
    .param p1, "$outer"    # Lcom/github/shadowsocks/ProfileManagerActivity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 52
    iput-object p2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->view:Landroid/view/View;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    throw v2

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 56
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->itemView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->text:Landroid/widget/CheckedTextView;

    .line 57
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 61
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f1100c5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "shareBtn":Landroid/view/View;
    new-instance v2, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$4;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$4;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    new-instance v2, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$8;

    invoke-direct {v2, p0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$8;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 103
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f1100c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "pingBtn":Landroid/view/View;
    new-instance v2, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$9;

    invoke-direct {v2, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$9;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    new-instance v2, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$10;

    invoke-direct {v2, p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$10;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method private text()Landroid/widget/CheckedTextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->text:Landroid/widget/CheckedTextView;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/github/shadowsocks/database/Profile;)V
    .locals 8
    .param p1, "item"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item_$eq(Lcom/github/shadowsocks/database/Profile;)V

    .line 282
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->updateText$default$1()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->updateText$default$2()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->updateText$default$3()J

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->updateText(JJJ)V

    .line 283
    invoke-virtual {p1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v0

    sget-object v1, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->profileId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 284
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->text()Landroid/widget/CheckedTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 285
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0, p0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$selectedItem_$eq(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->text()Landroid/widget/CheckedTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 288
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$selectedItem()Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$selectedItem_$eq(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;)V

    goto :goto_0
.end method

.method public synthetic com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$$outer()Lcom/github/shadowsocks/ProfileManagerActivity;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    return-object v0
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$1(Landroid/view/View;)V
    .locals 10
    .param p1, "x$1"    # Landroid/view/View;

    .prologue
    const/16 v9, 0xfa

    const/4 v8, -0x1

    .line 63
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/database/Profile;->toString()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcBeamEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    iget-object v4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iget-object v6, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/app/Activity;

    invoke-virtual {v4, v5, v6, v7}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 66
    iget-object v4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcShareItem_$eq([B)V

    .line 68
    :cond_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v1, "image":Landroid/widget/ImageView;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-static {v3}, Lnet/glxn/qrgen/android/QRCode;->from(Ljava/lang/String;)Lnet/glxn/qrgen/android/QRCode;

    move-result-object v4

    .line 71
    sget-object v5, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    iget-object v6, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v5, v6, v9}, Lcom/github/shadowsocks/utils/Utils$;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    iget-object v7, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v6, v7, v9}, Lcom/github/shadowsocks/utils/Utils$;->dpToPx(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lnet/glxn/qrgen/android/QRCode;->withSize(II)Lnet/glxn/qrgen/core/AbstractQRCode;

    move-result-object v4

    check-cast v4, Lnet/glxn/qrgen/android/QRCode;

    .line 72
    invoke-virtual {v4}, Lnet/glxn/qrgen/android/QRCode;->bitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 73
    .local v2, "qrcode":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v6, 0x7f0c00ad

    invoke-direct {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 76
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 77
    const v5, 0x7f09004a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 78
    const v5, 0x7f090052

    new-instance v6, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$5;

    invoke-direct {v6, p0, v3}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$5;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 80
    invoke-virtual {v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 81
    const v5, 0x7f0900a8

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 82
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 83
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    iget-object v4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    iget-object v4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$isNfcBeamEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v5, 0x7f0900a9

    invoke-virtual {v4, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v4, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$7;

    invoke-direct {v4, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$7;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 93
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    return-void

    .line 85
    :cond_1
    iget-object v4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v5, 0x7f0900aa

    invoke-virtual {v4, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v4, -0x3

    iget-object v5, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v6, 0x7f0900c8

    invoke-virtual {v5, v6}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    new-instance v6, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$6;

    invoke-direct {v6, p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$6;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;)V

    .line 86
    invoke-virtual {v0, v4, v5, v6}, Landroid/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v5, 0x7f0900ab

    invoke-virtual {v4, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$2(Landroid/content/DialogInterface;ILjava/lang/String;)V
    .locals 2
    .param p1, "x$2"    # Landroid/content/DialogInterface;
    .param p2, "x$3"    # I
    .param p3, "url$1"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$clipboard()Landroid/content/ClipboardManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$3(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "x$4"    # Landroid/content/DialogInterface;
    .param p2, "x$5"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4(Landroid/view/View;)V
    .locals 7
    .param p1, "x$8"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0900c6

    .line 106
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    iget-object v3, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v3, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v4, v5}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v2, v3, v4, v5, v6}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 108
    .local v1, "singleTestProgressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v2

    invoke-static {v2}, Lscala/runtime/ObjectRef;->create(Ljava/lang/Object;)Lscala/runtime/ObjectRef;

    move-result-object v0

    .line 110
    .local v0, "profile":Lscala/runtime/ObjectRef;
    sget-object v2, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    new-instance v3, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onClick$body$4$1;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;Landroid/app/ProgressDialog;Lscala/runtime/ObjectRef;)V

    invoke-virtual {v2, v3}, Lcom/github/shadowsocks/utils/Utils$;->ThrowableFuture(Lscala/Function0;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onDismiss$body$1(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "x$6"    # Landroid/content/DialogInterface;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$nfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    return-void
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onLongClick$body$1(Landroid/view/View;Landroid/view/View;)Z
    .locals 7
    .param p1, "x$7"    # Landroid/view/View;
    .param p2, "shareBtn$1"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 96
    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v2, 0x7f0900a8

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ProfileManagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget-object v2, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    iget-object v5, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const/16 v6, 0x8

    invoke-virtual {v2, v5, v6}, Lcom/github/shadowsocks/utils/Utils$;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    move-object v2, p2

    .line 96
    invoke-virtual/range {v0 .. v5}, Lcom/github/shadowsocks/utils/Utils$;->positionToast(Landroid/widget/Toast;Landroid/view/View;Landroid/view/Window;II)Landroid/widget/Toast;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$onLongClick$body$2(Landroid/view/View;Landroid/view/View;)Z
    .locals 7
    .param p1, "x$9"    # Landroid/view/View;
    .param p2, "pingBtn$1"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 255
    sget-object v0, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v2, 0x7f090082

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 256
    iget-object v2, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ProfileManagerActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget-object v2, Lcom/github/shadowsocks/utils/Utils$;->MODULE$:Lcom/github/shadowsocks/utils/Utils$;

    iget-object v5, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const/16 v6, 0x8

    invoke-virtual {v2, v5, v6}, Lcom/github/shadowsocks/utils/Utils$;->dpToPx(Landroid/content/Context;I)I

    move-result v5

    move-object v2, p2

    .line 255
    invoke-virtual/range {v0 .. v5}, Lcom/github/shadowsocks/utils/Utils$;->positionToast(Landroid/widget/Toast;Landroid/view/View;Landroid/view/Window;II)Landroid/widget/Toast;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public final com$github$shadowsocks$ProfileManagerActivity$ProfileViewHolder$$run$body$1(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .param p1, "builder$1"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->text()Landroid/widget/CheckedTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public item()Lcom/github/shadowsocks/database/Profile;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item:Lcom/github/shadowsocks/database/Profile;

    return-object v0
.end method

.method public item_$eq(Lcom/github/shadowsocks/database/Profile;)V
    .locals 0
    .param p1, "x$1"    # Lcom/github/shadowsocks/database/Profile;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item:Lcom/github/shadowsocks/database/Profile;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    sget-object v0, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/shadowsocks/database/Profile;->id()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->switchProfile(I)Lcom/github/shadowsocks/database/Profile;

    .line 294
    iget-object v0, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ProfileManagerActivity;->finish()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return v1

    .line 299
    :pswitch_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->getAdapterPosition()I

    move-result v0

    .line 300
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 301
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$profilesAdapter()Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfilesAdapter;->remove(I)V

    .line 302
    iget-object v1, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$undoManager()Lcom/github/shadowsocks/widget/UndoSnackbarManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/github/shadowsocks/widget/UndoSnackbarManager;->remove(ILjava/lang/Object;)V

    .line 303
    const/4 v1, 0x1

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public updateText(JJJ)V
    .locals 13
    .param p1, "txTotal"    # J
    .param p3, "rxTotal"    # J
    .param p5, "elapsedInput"    # J

    .prologue
    .line 262
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 263
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/shadowsocks/database/Profile;->tx()J

    move-result-wide v8

    add-long v6, v8, p1

    .line 264
    .local v6, "tx":J
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/shadowsocks/database/Profile;->rx()J

    move-result-wide v8

    add-long v4, v8, p3

    .line 265
    .local v4, "rx":J
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/shadowsocks/database/Profile;->elapsed()J

    move-result-wide v2

    .line 266
    .local v2, "elapsed":J
    const-wide/16 v8, -0x1

    cmp-long v8, p5, v8

    if-eqz v8, :cond_0

    .line 267
    move-wide/from16 v2, p5

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 270
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/shadowsocks/database/Profile;->url_group()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    if-nez v8, :cond_3

    if-eqz v9, :cond_2

    .line 271
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 272
    .local v1, "start":I
    iget-object v8, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v9, 0x7f090118

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 273
    sget-object v12, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v12, v6, v7}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->formatTraffic(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v12, v4, v5}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->formatTraffic(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-virtual {p0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->item()Lcom/github/shadowsocks/database/Profile;

    move-result-object v12

    invoke-virtual {v12}, Lcom/github/shadowsocks/database/Profile;->url_group()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 272
    invoke-virtual {v8, v9, v10}, Lcom/github/shadowsocks/ProfileManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 274
    new-instance v8, Landroid/text/style/TextAppearanceSpan;

    iget-object v9, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    const v10, 0x1030046

    invoke-direct {v8, v9, v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 275
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/16 v11, 0x21

    .line 274
    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 277
    .end local v1    # "start":I
    :cond_2
    iget-object v8, p0, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;->$outer:Lcom/github/shadowsocks/ProfileManagerActivity;

    invoke-virtual {v8}, Lcom/github/shadowsocks/ProfileManagerActivity;->com$github$shadowsocks$ProfileManagerActivity$$handler()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$11;

    invoke-direct {v9, p0, v0}, Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder$$anonfun$11;-><init>(Lcom/github/shadowsocks/ProfileManagerActivity$ProfileViewHolder;Landroid/text/SpannableStringBuilder;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 270
    :cond_3
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0
.end method

.method public updateText$default$1()J
    .locals 2

    .prologue
    .line 261
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public updateText$default$2()J
    .locals 2

    .prologue
    .line 261
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public updateText$default$3()J
    .locals 2

    .prologue
    .line 261
    const-wide/16 v0, -0x1

    return-wide v0
.end method
