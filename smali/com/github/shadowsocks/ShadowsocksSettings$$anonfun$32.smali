.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$32;
.super Ljava/lang/Object;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
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

.field private final prefs$1:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings;Landroid/content/SharedPreferences;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings;
    .param p2, "prefs$1"    # Landroid/content/SharedPreferences;

    .prologue
    .line 353
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$32;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$32;->prefs$1:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "x$28"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 353
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$32;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$32;->prefs$1:Landroid/content/SharedPreferences;

    invoke-virtual {v0, p1, p2, v1}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$onCheckedChanged$body$1(Landroid/widget/CompoundButton;ZLandroid/content/SharedPreferences;)V

    return-void
.end method
