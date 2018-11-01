.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$21;
.super Ljava/lang/Object;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksSettings;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings;

    .prologue
    .line 204
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$21;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x$24"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$21;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v0, p1, p2}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$15(Landroid/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
