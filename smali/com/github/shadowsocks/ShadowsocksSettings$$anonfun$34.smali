.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$34;
.super Ljava/lang/Object;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
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
    .line 475
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$34;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$34;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$run$body$2()V

    return-void
.end method
