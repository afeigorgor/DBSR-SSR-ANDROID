.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;
.super Ljava/lang/Thread;
.source "ShadowsocksSettings.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$onPreferenceChange$body$18(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksSettings;

.field private final v$1:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings;Ljava/lang/Object;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings;
    .param p2, "v$1"    # Ljava/lang/Object;

    .prologue
    .line 224
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;->v$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final com$github$shadowsocks$ShadowsocksSettings$$anon$$run$body$1(Ljava/lang/String;)V
    .locals 2
    .param p1, "result$1"    # Ljava/lang/String;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v0}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/Shadowsocks;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 226
    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;->v$1:Ljava/lang/Object;

    invoke-static {v2}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 227
    .local v1, "value":Z
    sget-object v2, Lcom/github/shadowsocks/utils/TcpFastOpen$;->MODULE$:Lcom/github/shadowsocks/utils/TcpFastOpen$;

    invoke-virtual {v2, v1}, Lcom/github/shadowsocks/utils/TcpFastOpen$;->enabled(Z)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "Success."

    if-nez v0, :cond_1

    if-eqz v2, :cond_0

    .line 229
    :goto_0
    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksSettings;

    invoke-virtual {v2}, Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$activity()Lcom/github/shadowsocks/Shadowsocks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/shadowsocks/Shadowsocks;->handler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1$$anonfun$25;

    invoke-direct {v3, p0, v0}, Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1$$anonfun$25;-><init>(Lcom/github/shadowsocks/ShadowsocksSettings$$anon$1;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    :cond_0
    return-void

    .line 228
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method
