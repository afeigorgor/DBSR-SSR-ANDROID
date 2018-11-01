.class public final Lcom/github/shadowsocks/database/ProfileManager$$anon$1;
.super Lcom/github/shadowsocks/database/Profile;
.source "ProfileManager.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/database/ProfileManager;->createDefault()Lcom/github/shadowsocks/database/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/database/ProfileManager;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/database/ProfileManager;

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/github/shadowsocks/database/Profile;-><init>()V

    .line 291
    const-string v0, "Android SSR Default"

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/ProfileManager$$anon$1;->name_$eq(Ljava/lang/String;)V

    .line 292
    const-string v0, "137.74.141.42"

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/ProfileManager$$anon$1;->host_$eq(Ljava/lang/String;)V

    .line 293
    const/16 v0, 0x50

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/ProfileManager$$anon$1;->remotePort_$eq(I)V

    .line 294
    const-string v0, "androidssr"

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/ProfileManager$$anon$1;->password_$eq(Ljava/lang/String;)V

    .line 295
    const-string v0, "auth_chain_a"

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/ProfileManager$$anon$1;->protocol_$eq(Ljava/lang/String;)V

    .line 296
    const-string v0, "http_simple"

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/ProfileManager$$anon$1;->obfs_$eq(Ljava/lang/String;)V

    .line 297
    const-string v0, "none"

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/ProfileManager$$anon$1;->method_$eq(Ljava/lang/String;)V

    .line 298
    const-string v0, "FreeSSR-public"

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/ProfileManager$$anon$1;->url_group_$eq(Ljava/lang/String;)V

    return-void
.end method
