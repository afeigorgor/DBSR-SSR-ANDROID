.class public final Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;
.super Lscala/runtime/AbstractFunction1$mcVI$sp;
.source "ShadowsocksApplication.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/shadowsocks/ShadowsocksApplication;->checkChineseLocale(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksApplication;

.field private final changed$1:Lscala/runtime/BooleanRef;

.field private final localeList$1:Landroid/os/LocaleList;

.field private final newList$1:[Ljava/util/Locale;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksApplication;Landroid/os/LocaleList;[Ljava/util/Locale;Lscala/runtime/BooleanRef;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksApplication;
    .param p2, "localeList$1"    # Landroid/os/LocaleList;
    .param p3, "newList$1"    # [Ljava/util/Locale;
    .param p4, "changed$1"    # Lscala/runtime/BooleanRef;

    .prologue
    .line 139
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    iput-object p2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;->localeList$1:Landroid/os/LocaleList;

    iput-object p3, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;->newList$1:[Ljava/util/Locale;

    iput-object p4, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;->changed$1:Lscala/runtime/BooleanRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 139
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;->apply(I)V

    sget-object v0, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object v0
.end method

.method public final apply(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;->apply$mcVI$sp(I)V

    return-void
.end method

.method public apply$mcVI$sp(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    .line 140
    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;->localeList$1:Landroid/os/LocaleList;

    invoke-virtual {v2, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 141
    .local v0, "locale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;->$outer:Lcom/github/shadowsocks/ShadowsocksApplication;

    invoke-virtual {v2, v0}, Lcom/github/shadowsocks/ShadowsocksApplication;->com$github$shadowsocks$ShadowsocksApplication$$checkChineseLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 142
    .local v1, "newLocale":Ljava/util/Locale;
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;->newList$1:[Ljava/util/Locale;

    aput-object v0, v2, p1

    .line 139
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;->newList$1:[Ljava/util/Locale;

    aput-object v1, v2, p1

    .line 144
    iget-object v2, p0, Lcom/github/shadowsocks/ShadowsocksApplication$$anonfun$checkChineseLocale$1;->changed$1:Lscala/runtime/BooleanRef;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lscala/runtime/BooleanRef;->elem:Z

    goto :goto_0
.end method
