.class public final Lcom/github/shadowsocks/ShadowsocksApplication$$anon$1;
.super Ljava/lang/Thread;
.source "ShadowsocksApplication.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksApplication;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksApplication;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksApplication;

    .prologue
    .line 195
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 197
    sget-object v0, Lcom/github/shadowsocks/utils/TcpFastOpen$;->MODULE$:Lcom/github/shadowsocks/utils/TcpFastOpen$;

    iget-object v1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    invoke-virtual {v1}, Lcom/github/shadowsocks/ShadowsocksApplication;->settings()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    invoke-virtual {v2}, Lcom/github/shadowsocks/utils/Key$;->tfo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/shadowsocks/utils/TcpFastOpen$;->enabled(Z)Ljava/lang/String;

    return-void
.end method
