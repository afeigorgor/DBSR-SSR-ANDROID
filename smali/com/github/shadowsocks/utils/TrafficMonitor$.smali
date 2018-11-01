.class public final Lcom/github/shadowsocks/utils/TrafficMonitor$;
.super Ljava/lang/Object;
.source "TrafficMonitor.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;


# instance fields
.field private volatile dirty:Z

.field private final numberFormat:Ljava/text/DecimalFormat;

.field private rxLast:J

.field private rxRate:J

.field private rxTotal:J

.field private timestampLast:J

.field private txLast:J

.field private txRate:J

.field private txTotal:J

.field private final units:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/TrafficMonitor$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->MODULE$:Lcom/github/shadowsocks/utils/TrafficMonitor$;

    .line 21
    iput-boolean v3, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->dirty:Z

    .line 23
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "KB"

    aput-object v2, v0, v1

    const-string v1, "MB"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TB"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "PB"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ZB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "YB"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "BB"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "NB"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "DB"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "CB"

    aput-object v2, v0, v1

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->units:[Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "@@@"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->numberFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method private numberFormat()Ljava/text/DecimalFormat;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->numberFormat:Ljava/text/DecimalFormat;

    return-object v0
.end method

.method private units()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->units:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dirty()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->dirty:Z

    return v0
.end method

.method public dirty_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->dirty:Z

    return-void
.end method

.method public formatTraffic(J)Ljava/lang/String;
    .locals 7
    .param p1, "size"    # J

    .prologue
    .line 26
    long-to-double v2, p1

    .line 27
    .local v2, "n":D
    const/4 v0, -0x1

    .line 28
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x3e8

    int-to-double v4, v1

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 29
    const/16 v1, 0x400

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    if-gez v0, :cond_1

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Lscala/collection/mutable/StringBuilder;->append(J)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/github/shadowsocks/ShadowsocksApplication$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksApplication$;

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication$;->app()Lcom/github/shadowsocks/ShadowsocksApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/github/shadowsocks/ShadowsocksApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0001

    long-to-int v6, p1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    :goto_1
    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->numberFormat()Ljava/text/DecimalFormat;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    const/16 v4, 0x20

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToCharacter(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->units()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txRate_$eq(J)V

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxRate_$eq(J)V

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txTotal_$eq(J)V

    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxTotal_$eq(J)V

    .line 79
    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txLast_$eq(J)V

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxLast_$eq(J)V

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->dirty_$eq(Z)V

    return-void
.end method

.method public rxLast()J
    .locals 2

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxLast:J

    return-wide v0
.end method

.method public rxLast_$eq(J)V
    .locals 1
    .param p1, "x$1"    # J

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxLast:J

    return-void
.end method

.method public rxRate()J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxRate:J

    return-wide v0
.end method

.method public rxRate_$eq(J)V
    .locals 1
    .param p1, "x$1"    # J

    .prologue
    .line 11
    iput-wide p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxRate:J

    return-void
.end method

.method public rxTotal()J
    .locals 2

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxTotal:J

    return-wide v0
.end method

.method public rxTotal_$eq(J)V
    .locals 1
    .param p1, "x$1"    # J

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxTotal:J

    return-void
.end method

.method public timestampLast()J
    .locals 2

    .prologue
    .line 20
    iget-wide v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->timestampLast:J

    return-wide v0
.end method

.method public timestampLast_$eq(J)V
    .locals 1
    .param p1, "x$1"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->timestampLast:J

    return-void
.end method

.method public txLast()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txLast:J

    return-wide v0
.end method

.method public txLast_$eq(J)V
    .locals 1
    .param p1, "x$1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txLast:J

    return-void
.end method

.method public txRate()J
    .locals 2

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txRate:J

    return-wide v0
.end method

.method public txRate_$eq(J)V
    .locals 1
    .param p1, "x$1"    # J

    .prologue
    .line 10
    iput-wide p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txRate:J

    return-void
.end method

.method public txTotal()J
    .locals 2

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txTotal:J

    return-wide v0
.end method

.method public txTotal_$eq(J)V
    .locals 1
    .param p1, "x$1"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txTotal:J

    return-void
.end method

.method public update(JJ)V
    .locals 3
    .param p1, "tx"    # J
    .param p3, "rx"    # J

    .prologue
    const/4 v2, 0x1

    .line 64
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txTotal()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txTotal_$eq(J)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->dirty_$eq(Z)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxTotal()J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0, p3, p4}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxTotal_$eq(J)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->dirty_$eq(Z)V

    .line 63
    :cond_1
    return-void
.end method

.method public updateRate()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    const-wide/16 v8, 0x0

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 38
    .local v2, "now":J
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->timestampLast()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 39
    .local v0, "delta":J
    const/4 v4, 0x0

    .line 40
    .local v4, "updated":Z
    cmp-long v5, v0, v8

    if-eqz v5, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->dirty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txTotal()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txLast()J

    move-result-wide v8

    sub-long/2addr v6, v8

    mul-long/2addr v6, v10

    div-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txRate_$eq(J)V

    .line 43
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxTotal()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxLast()J

    move-result-wide v8

    sub-long/2addr v6, v8

    mul-long/2addr v6, v10

    div-long/2addr v6, v0

    invoke-virtual {p0, v6, v7}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxRate_$eq(J)V

    .line 44
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txTotal()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txLast_$eq(J)V

    .line 45
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxTotal()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxLast_$eq(J)V

    .line 46
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->dirty_$eq(Z)V

    .line 47
    const/4 v4, 0x1

    .line 58
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->timestampLast_$eq(J)V

    .line 60
    :cond_1
    return v4

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txRate()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 50
    invoke-virtual {p0, v8, v9}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->txRate_$eq(J)V

    .line 51
    const/4 v4, 0x1

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxRate()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 54
    invoke-virtual {p0, v8, v9}, Lcom/github/shadowsocks/utils/TrafficMonitor$;->rxRate_$eq(J)V

    .line 55
    const/4 v4, 0x1

    goto :goto_0
.end method
