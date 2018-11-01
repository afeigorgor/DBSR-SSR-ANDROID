.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$16;
.super Ljava/lang/Object;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$11(Landroid/preference/Preference;Ljava/lang/Object;)Z
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
    .line 174
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$16;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "x$18"    # Landroid/content/DialogInterface;
    .param p2, "x$19"    # I

    .prologue
    .line 174
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$16;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v0, p1, p2}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$onClick$body$4(Landroid/content/DialogInterface;I)V

    return-void
.end method
