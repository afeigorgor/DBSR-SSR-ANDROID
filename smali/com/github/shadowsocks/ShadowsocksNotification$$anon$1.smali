.class public final Lcom/github/shadowsocks/ShadowsocksNotification$$anon$1;
.super Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;
.source "ShadowsocksNotification.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/shadowsocks/ShadowsocksNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# instance fields
.field private final synthetic $outer:Lcom/github/shadowsocks/ShadowsocksNotification;


# direct methods
.method public constructor <init>(Lcom/github/shadowsocks/ShadowsocksNotification;)V
    .locals 1
    .param p1, "$outer"    # Lcom/github/shadowsocks/ShadowsocksNotification;

    .prologue
    .line 21
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/github/shadowsocks/ShadowsocksNotification$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksNotification;

    invoke-direct {p0}, Lcom/github/shadowsocks/aidl/IShadowsocksServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 22
    return-void
.end method

.method public trafficUpdated(JJJJ)V
    .locals 11
    .param p1, "txRate"    # J
    .param p3, "rxRate"    # J
    .param p5, "txTotal"    # J
    .param p7, "rxTotal"    # J

    .prologue
    .line 24
    sget-object v4, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v4, p1, p2}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->formatTraffic(J)Ljava/lang/String;

    move-result-object v3

    .line 25
    .local v3, "txr":Ljava/lang/String;
    sget-object v4, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-virtual {v4, p3, p4}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->formatTraffic(J)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "rxr":Ljava/lang/String;
    iget-object v4, p0, Lcom/github/shadowsocks/ShadowsocksNotification$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksNotification;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$builder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    new-instance v6, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v4, p0, Lcom/github/shadowsocks/ShadowsocksNotification$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksNotification;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$service()Lcom/github/shadowsocks/BaseService;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const v8, 0x7f090119

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-virtual {v7, v8}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 27
    iget-object v4, p0, Lcom/github/shadowsocks/ShadowsocksNotification$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksNotification;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$style()Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    new-instance v6, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    iget-object v4, p0, Lcom/github/shadowsocks/ShadowsocksNotification$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksNotification;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksNotification;->com$github$shadowsocks$ShadowsocksNotification$$service()Lcom/github/shadowsocks/BaseService;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    const v8, 0x7f0900be

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    const/4 v9, 0x2

    .line 28
    sget-object v10, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    move-wide/from16 v0, p5

    invoke-virtual {v10, v0, v1}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->formatTraffic(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 27
    const/4 v9, 0x3

    .line 28
    sget-object v10, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    move-wide/from16 v0, p7

    invoke-virtual {v10, v0, v1}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->formatTraffic(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 27
    invoke-virtual {v7, v8}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 29
    iget-object v4, p0, Lcom/github/shadowsocks/ShadowsocksNotification$$anon$1;->$outer:Lcom/github/shadowsocks/ShadowsocksNotification;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksNotification;->show()V

    return-void
.end method
