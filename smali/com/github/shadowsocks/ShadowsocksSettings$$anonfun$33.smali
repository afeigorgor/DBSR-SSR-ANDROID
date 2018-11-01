.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;
.super Ljava/lang/Object;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$onPreferenceClick$body$8(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksSettings;

.field private final et_frontproxy_addr$1:Landroid/widget/EditText;

.field private final et_frontproxy_password$1:Landroid/widget/EditText;

.field private final et_frontproxy_port$1:Landroid/widget/EditText;

.field private final et_frontproxy_username$1:Landroid/widget/EditText;

.field private final prefs$1:Landroid/content/SharedPreferences;

.field private final sp_frontproxy_type$1:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings;Landroid/content/SharedPreferences;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings;
    .param p2, "prefs$1"    # Landroid/content/SharedPreferences;
    .param p3, "sp_frontproxy_type$1"    # Landroid/widget/Spinner;
    .param p4, "et_frontproxy_addr$1"    # Landroid/widget/EditText;
    .param p5, "et_frontproxy_port$1"    # Landroid/widget/EditText;
    .param p6, "et_frontproxy_username$1"    # Landroid/widget/EditText;
    .param p7, "et_frontproxy_password$1"    # Landroid/widget/EditText;

    .prologue
    .line 379
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->prefs$1:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->sp_frontproxy_type$1:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->et_frontproxy_addr$1:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->et_frontproxy_port$1:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->et_frontproxy_username$1:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->et_frontproxy_password$1:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "x$29"    # Landroid/content/DialogInterface;
    .param p2, "x$30"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iget-object v3, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->prefs$1:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->sp_frontproxy_type$1:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->et_frontproxy_addr$1:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->et_frontproxy_port$1:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->et_frontproxy_username$1:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$33;->et_frontproxy_password$1:Landroid/widget/EditText;

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$onClick$body$5(Landroid/content/DialogInterface;ILandroid/content/SharedPreferences;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    return-void
.end method
