.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$15;
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

.field private final AclUrlEditText$1:Landroid/widget/EditText;

.field private final value$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings;Ljava/lang/Object;Landroid/widget/EditText;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings;
    .param p2, "value$1"    # Ljava/lang/Object;
    .param p3, "AclUrlEditText$1"    # Landroid/widget/EditText;

    .prologue
    .line 162
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$15;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$15;->value$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$15;->AclUrlEditText$1:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "x$16"    # Landroid/content/DialogInterface;
    .param p2, "x$17"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$15;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$15;->value$1:Ljava/lang/Object;

    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$15;->AclUrlEditText$1:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$onClick$body$3(Landroid/content/DialogInterface;ILjava/lang/Object;Landroid/widget/EditText;)V

    return-void
.end method
