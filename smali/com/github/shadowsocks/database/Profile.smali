.class public Lcom/github/shadowsocks/database/Profile;
.super Ljava/lang/Object;
.source "Profile.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private bypass:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private china_dns:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private final date:Ljava/util/Date;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private dns:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private elapsed:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private individual:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        dataType = .enum Lcom/j256/ormlite/field/DataType;->LONG_STRING:Lcom/j256/ormlite/field/DataType;
    .end annotation
.end field

.field private ipv6:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private localPort:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private obfs:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private obfs_param:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private password:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private protocol:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private protocol_param:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private proxyApps:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private remotePort:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private route:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private rx:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private tx:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private udpdns:Z
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private url_group:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field

.field private userOrder:J
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v1, p0, Lcom/github/shadowsocks/database/Profile;->id:I

    .line 53
    const-string v0, "Untitled"

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->name:Ljava/lang/String;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->host:Ljava/lang/String;

    .line 59
    const/16 v0, 0x438

    iput v0, p0, Lcom/github/shadowsocks/database/Profile;->localPort:I

    .line 62
    const/16 v0, 0x20c4

    iput v0, p0, Lcom/github/shadowsocks/database/Profile;->remotePort:I

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->password:Ljava/lang/String;

    .line 68
    const-string v0, "origin"

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->protocol:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->protocol_param:Ljava/lang/String;

    .line 74
    const-string v0, "plain"

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->obfs:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->obfs_param:Ljava/lang/String;

    .line 80
    const-string v0, "aes-256-cfb"

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->method:Ljava/lang/String;

    .line 83
    const-string v0, "all"

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->route:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/github/shadowsocks/database/Profile;->proxyApps:Z

    .line 89
    iput-boolean v1, p0, Lcom/github/shadowsocks/database/Profile;->bypass:Z

    .line 92
    iput-boolean v1, p0, Lcom/github/shadowsocks/database/Profile;->udpdns:Z

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->url_group:Ljava/lang/String;

    .line 98
    const-string v0, "208.67.222.222:53"

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->dns:Ljava/lang/String;

    .line 101
    const-string v0, "114.114.114.114:53,223.5.5.5:53"

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->china_dns:Ljava/lang/String;

    .line 104
    iput-boolean v1, p0, Lcom/github/shadowsocks/database/Profile;->ipv6:Z

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->individual:Ljava/lang/String;

    .line 110
    iput-wide v2, p0, Lcom/github/shadowsocks/database/Profile;->tx:J

    .line 113
    iput-wide v2, p0, Lcom/github/shadowsocks/database/Profile;->rx:J

    .line 116
    iput-wide v2, p0, Lcom/github/shadowsocks/database/Profile;->elapsed:J

    .line 119
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/github/shadowsocks/database/Profile;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public bypass()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/github/shadowsocks/database/Profile;->bypass:Z

    return v0
.end method

.method public bypass_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/github/shadowsocks/database/Profile;->bypass:Z

    return-void
.end method

.method public china_dns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->china_dns:Ljava/lang/String;

    return-object v0
.end method

.method public china_dns_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->china_dns:Ljava/lang/String;

    return-void
.end method

.method public dns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->dns:Ljava/lang/String;

    return-object v0
.end method

.method public dns_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->dns:Ljava/lang/String;

    return-void
.end method

.method public elapsed()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/github/shadowsocks/database/Profile;->elapsed:J

    return-wide v0
.end method

.method public elapsed_$eq(J)V
    .locals 1
    .param p1, "x$1"    # J

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/github/shadowsocks/database/Profile;->elapsed:J

    return-void
.end method

.method public host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->host:Ljava/lang/String;

    return-object v0
.end method

.method public host_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->host:Ljava/lang/String;

    return-void
.end method

.method public id()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/github/shadowsocks/database/Profile;->id:I

    return v0
.end method

.method public id_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/github/shadowsocks/database/Profile;->id:I

    return-void
.end method

.method public individual()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->individual:Ljava/lang/String;

    return-object v0
.end method

.method public individual_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->individual:Ljava/lang/String;

    return-void
.end method

.method public ipv6()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/github/shadowsocks/database/Profile;->ipv6:Z

    return v0
.end method

.method public ipv6_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/github/shadowsocks/database/Profile;->ipv6:Z

    return-void
.end method

.method public isMethodUnsafe()Z
    .locals 2

    .prologue
    .line 133
    const-string v0, "table"

    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rc4"

    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public localPort()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/github/shadowsocks/database/Profile;->localPort:I

    return v0
.end method

.method public localPort_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/github/shadowsocks/database/Profile;->localPort:I

    return-void
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->method:Ljava/lang/String;

    return-object v0
.end method

.method public method_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->method:Ljava/lang/String;

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public name_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->name:Ljava/lang/String;

    return-void
.end method

.method public obfs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->obfs:Ljava/lang/String;

    return-object v0
.end method

.method public obfs_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->obfs:Ljava/lang/String;

    return-void
.end method

.method public obfs_param()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->obfs_param:Ljava/lang/String;

    return-object v0
.end method

.method public obfs_param_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->obfs_param:Ljava/lang/String;

    return-void
.end method

.method public password()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->password:Ljava/lang/String;

    return-object v0
.end method

.method public password_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->password:Ljava/lang/String;

    return-void
.end method

.method public protocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public protocol_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->protocol:Ljava/lang/String;

    return-void
.end method

.method public protocol_param()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->protocol_param:Ljava/lang/String;

    return-object v0
.end method

.method public protocol_param_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->protocol_param:Ljava/lang/String;

    return-void
.end method

.method public proxyApps()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/github/shadowsocks/database/Profile;->proxyApps:Z

    return v0
.end method

.method public proxyApps_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/github/shadowsocks/database/Profile;->proxyApps:Z

    return-void
.end method

.method public remotePort()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/github/shadowsocks/database/Profile;->remotePort:I

    return v0
.end method

.method public remotePort_$eq(I)V
    .locals 0
    .param p1, "x$1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/github/shadowsocks/database/Profile;->remotePort:I

    return-void
.end method

.method public route()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->route:Ljava/lang/String;

    return-object v0
.end method

.method public route_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->route:Ljava/lang/String;

    return-void
.end method

.method public rx()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/github/shadowsocks/database/Profile;->rx:J

    return-wide v0
.end method

.method public rx_$eq(J)V
    .locals 1
    .param p1, "x$1"    # J

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/github/shadowsocks/database/Profile;->rx:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0xb

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 125
    new-instance v0, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v0}, Lscala/collection/mutable/StringBuilder;-><init>()V

    const-string v1, "ssr://"

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/StringOps;

    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v3, "%s:%d:%s:%s:%s:%s/?obfsparam=%s&protoparam=%s&remarks=%s&group=%s"

    invoke-virtual {v2, v3}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->host()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->remotePort()I

    move-result v5

    invoke-static {v5}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    .line 125
    const/4 v5, 0x2

    .line 126
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->protocol()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 125
    const/4 v5, 0x3

    .line 126
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->method()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 125
    const/4 v5, 0x4

    .line 126
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->obfs()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 125
    const/4 v5, 0x5

    .line 126
    new-instance v6, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v8, "%s"

    invoke-virtual {v7, v8}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v9, v12, [Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->password()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    .line 126
    invoke-virtual {v8, v9}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v6

    .line 127
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 126
    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 125
    const/4 v5, 0x6

    .line 127
    new-instance v6, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v8, "%s"

    invoke-virtual {v7, v8}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v9, v12, [Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->obfs_param()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    .line 127
    invoke-virtual {v8, v9}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v6

    .line 128
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 127
    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 125
    const/4 v5, 0x7

    .line 128
    new-instance v6, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v8, "%s"

    invoke-virtual {v7, v8}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v9, v12, [Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->protocol_param()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    .line 128
    invoke-virtual {v8, v9}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 128
    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 125
    const/16 v5, 0x8

    .line 129
    new-instance v6, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v8, "%s"

    invoke-virtual {v7, v8}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v9, v12, [Ljava/lang/Object;

    .line 130
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    .line 129
    invoke-virtual {v8, v9}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v6

    .line 130
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 129
    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 125
    const/16 v5, 0x9

    .line 130
    new-instance v6, Lscala/collection/immutable/StringOps;

    sget-object v7, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v8, "%s"

    invoke-virtual {v7, v8}, Lscala/Predef$;->augmentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    sget-object v8, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    new-array v9, v12, [Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lcom/github/shadowsocks/database/Profile;->url_group()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    .line 130
    invoke-virtual {v8, v9}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 130
    invoke-static {v6, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 125
    invoke-virtual {v3, v4}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lscala/collection/immutable/StringOps;->formatLocal(Ljava/util/Locale;Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 125
    invoke-static {v1, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tx()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/github/shadowsocks/database/Profile;->tx:J

    return-wide v0
.end method

.method public tx_$eq(J)V
    .locals 1
    .param p1, "x$1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/github/shadowsocks/database/Profile;->tx:J

    return-void
.end method

.method public udpdns()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/github/shadowsocks/database/Profile;->udpdns:Z

    return v0
.end method

.method public udpdns_$eq(Z)V
    .locals 0
    .param p1, "x$1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/github/shadowsocks/database/Profile;->udpdns:Z

    return-void
.end method

.method public url_group()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/github/shadowsocks/database/Profile;->url_group:Ljava/lang/String;

    return-object v0
.end method

.method public url_group_$eq(Ljava/lang/String;)V
    .locals 0
    .param p1, "x$1"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/github/shadowsocks/database/Profile;->url_group:Ljava/lang/String;

    return-void
.end method

.method public userOrder()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Lcom/github/shadowsocks/database/Profile;->userOrder:J

    return-wide v0
.end method

.method public userOrder_$eq(J)V
    .locals 1
    .param p1, "x$1"    # J

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/github/shadowsocks/database/Profile;->userOrder:J

    return-void
.end method
