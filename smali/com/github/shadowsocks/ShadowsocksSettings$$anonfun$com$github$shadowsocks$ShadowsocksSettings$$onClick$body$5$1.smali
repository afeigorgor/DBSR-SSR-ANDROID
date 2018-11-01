.class public final Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$com$github$shadowsocks$ShadowsocksSettings$$onClick$body$5$1;
.super Lscala/runtime/AbstractFunction1;
.source "ShadowsocksSettings.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksSettings;->com$github$shadowsocks$ShadowsocksSettings$$onClick$body$5(Landroid/content/DialogInterface;ILandroid/content/SharedPreferences;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/io/PrintWriter;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final proxychains_conf$2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksSettings;Ljava/lang/String;)V
    .locals 0
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksSettings;
    .param p2, "proxychains_conf$2"    # Ljava/lang/String;

    .prologue
    .line 397
    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$com$github$shadowsocks$ShadowsocksSettings$$onClick$body$5$1;->proxychains_conf$2:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 397
    check-cast p1, Ljava/io/PrintWriter;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$com$github$shadowsocks$ShadowsocksSettings$$onClick$body$5$1;->apply(Ljava/io/PrintWriter;)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "p"    # Ljava/io/PrintWriter;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksSettings$$anonfun$com$github$shadowsocks$ShadowsocksSettings$$onClick$body$5$1;->proxychains_conf$2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
