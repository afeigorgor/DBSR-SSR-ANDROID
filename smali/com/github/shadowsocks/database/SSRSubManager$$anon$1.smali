.class public final Lcom/github/shadowsocks/database/SSRSubManager$$anon$1;
.super Lcom/github/shadowsocks/database/SSRSub;
.source "SSRSubManager.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/database/SSRSubManager;->createDefault()Lcom/github/shadowsocks/database/SSRSub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/database/SSRSubManager;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/database/SSRSubManager;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/github/shadowsocks/database/SSRSub;-><init>()V

    .line 134
    const-string v0, "https://raw.githubusercontent.com/breakwa11/breakwa11.github.io/master/free/freenodeplain.txt"

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/SSRSubManager$$anon$1;->url_$eq(Ljava/lang/String;)V

    .line 135
    const-string v0, "FreeSSR-public"

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/database/SSRSubManager$$anon$1;->url_group_$eq(Ljava/lang/String;)V

    return-void
.end method
