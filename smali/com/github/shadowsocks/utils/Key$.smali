.class public final Lcom/github/shadowsocks/utils/Key$;
.super Ljava/lang/Object;
.source "Constants.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/Key$;


# instance fields
.field private final aclurl:Ljava/lang/String;

.field private final auth:Ljava/lang/String;

.field private final bypass:Ljava/lang/String;

.field private final china_dns:Ljava/lang/String;

.field private final currentVersionCode:Ljava/lang/String;

.field private final dns:Ljava/lang/String;

.field private final frontproxy:Ljava/lang/String;

.field private final group_name:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final individual:Ljava/lang/String;

.field private final ipv6:Ljava/lang/String;

.field private final isAutoConnect:Ljava/lang/String;

.field private final isNAT:Ljava/lang/String;

.field private final localPort:Ljava/lang/String;

.field private final logcat:Ljava/lang/String;

.field private final method:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final obfs:Ljava/lang/String;

.field private final obfs_param:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final profileTip:Ljava/lang/String;

.field private final protocol:Ljava/lang/String;

.field private final protocol_param:Ljava/lang/String;

.field private final proxyApps:Ljava/lang/String;

.field private final remotePort:Ljava/lang/String;

.field private final route:Ljava/lang/String;

.field private final ssrsub_autoupdate:Ljava/lang/String;

.field private final tfo:Ljava/lang/String;

.field private final udpdns:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/Key$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/Key$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/Key$;->MODULE$:Lcom/github/shadowsocks/utils/Key$;

    .line 168
    const-string v0, "profileId"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->id:Ljava/lang/String;

    .line 169
    const-string v0, "profileName"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->name:Ljava/lang/String;

    .line 171
    const-string v0, "Proxyed"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->individual:Ljava/lang/String;

    .line 173
    const-string v0, "isNAT"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->isNAT:Ljava/lang/String;

    .line 174
    const-string v0, "route"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->route:Ljava/lang/String;

    .line 175
    const-string v0, "aclurl"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->aclurl:Ljava/lang/String;

    .line 177
    const-string v0, "isAutoConnect"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->isAutoConnect:Ljava/lang/String;

    .line 179
    const-string v0, "isProxyApps"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->proxyApps:Ljava/lang/String;

    .line 180
    const-string v0, "isBypassApps"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->bypass:Ljava/lang/String;

    .line 181
    const-string v0, "isUdpDns"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->udpdns:Ljava/lang/String;

    .line 182
    const-string v0, "isAuth"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->auth:Ljava/lang/String;

    .line 183
    const-string v0, "isIpv6"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->ipv6:Ljava/lang/String;

    .line 185
    const-string v0, "proxy"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->host:Ljava/lang/String;

    .line 186
    const-string v0, "sitekey"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->password:Ljava/lang/String;

    .line 187
    const-string v0, "encMethod"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->method:Ljava/lang/String;

    .line 188
    const-string v0, "remotePortNum"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->remotePort:Ljava/lang/String;

    .line 189
    const-string v0, "localPortNum"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->localPort:Ljava/lang/String;

    .line 191
    const-string v0, "profileTip"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->profileTip:Ljava/lang/String;

    .line 193
    const-string v0, "obfs"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->obfs:Ljava/lang/String;

    .line 194
    const-string v0, "obfs_param"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->obfs_param:Ljava/lang/String;

    .line 195
    const-string v0, "protocol"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->protocol:Ljava/lang/String;

    .line 196
    const-string v0, "protocol_param"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->protocol_param:Ljava/lang/String;

    .line 197
    const-string v0, "dns"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->dns:Ljava/lang/String;

    .line 198
    const-string v0, "china_dns"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->china_dns:Ljava/lang/String;

    .line 200
    const-string v0, "tcp_fastopen"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->tfo:Ljava/lang/String;

    .line 201
    const-string v0, "currentVersionCode"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->currentVersionCode:Ljava/lang/String;

    .line 202
    const-string v0, "logcat"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->logcat:Ljava/lang/String;

    .line 203
    const-string v0, "frontproxy"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->frontproxy:Ljava/lang/String;

    .line 204
    const-string v0, "ssrsub_autoupdate"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->ssrsub_autoupdate:Ljava/lang/String;

    .line 205
    const-string v0, "groupName"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->group_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public aclurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->aclurl:Ljava/lang/String;

    return-object v0
.end method

.method public china_dns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->china_dns:Ljava/lang/String;

    return-object v0
.end method

.method public currentVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->currentVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public dns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->dns:Ljava/lang/String;

    return-object v0
.end method

.method public frontproxy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->frontproxy:Ljava/lang/String;

    return-object v0
.end method

.method public group_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->group_name:Ljava/lang/String;

    return-object v0
.end method

.method public host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->host:Ljava/lang/String;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->id:Ljava/lang/String;

    return-object v0
.end method

.method public individual()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->individual:Ljava/lang/String;

    return-object v0
.end method

.method public ipv6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->ipv6:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoConnect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->isAutoConnect:Ljava/lang/String;

    return-object v0
.end method

.method public isNAT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->isNAT:Ljava/lang/String;

    return-object v0
.end method

.method public localPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->localPort:Ljava/lang/String;

    return-object v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->method:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->name:Ljava/lang/String;

    return-object v0
.end method

.method public obfs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->obfs:Ljava/lang/String;

    return-object v0
.end method

.method public obfs_param()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->obfs_param:Ljava/lang/String;

    return-object v0
.end method

.method public password()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->password:Ljava/lang/String;

    return-object v0
.end method

.method public profileTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->profileTip:Ljava/lang/String;

    return-object v0
.end method

.method public protocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public protocol_param()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->protocol_param:Ljava/lang/String;

    return-object v0
.end method

.method public proxyApps()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->proxyApps:Ljava/lang/String;

    return-object v0
.end method

.method public remotePort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->remotePort:Ljava/lang/String;

    return-object v0
.end method

.method public route()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->route:Ljava/lang/String;

    return-object v0
.end method

.method public ssrsub_autoupdate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->ssrsub_autoupdate:Ljava/lang/String;

    return-object v0
.end method

.method public tfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->tfo:Ljava/lang/String;

    return-object v0
.end method

.method public udpdns()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Key$;->udpdns:Ljava/lang/String;

    return-object v0
.end method
