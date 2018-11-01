.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$4;
.super Ljava/lang/Object;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$onPreferenceClick$body$1(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksSettings;

.field private final HostEditText$1:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings;Landroid/widget/EditText;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings;
    .param p2, "HostEditText$1"    # Landroid/widget/EditText;

    .prologue
    .line 112
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$4;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$4;->HostEditText$1:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "x$3"    # Landroid/content/DialogInterface;
    .param p2, "x$4"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$4;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$4;->HostEditText$1:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, v1}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$onClick$body$1(Landroid/content/DialogInterface;ILandroid/widget/EditText;)V

    return-void
.end method
