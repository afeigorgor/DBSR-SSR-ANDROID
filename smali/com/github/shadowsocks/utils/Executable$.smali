.class public final Lcom/github/shadowsocks/utils/Executable$;
.super Ljava/lang/Object;
.source "Constants.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/Executable$;


# instance fields
.field private final KCPTUN:Ljava/lang/String;

.field private final PDNSD:Ljava/lang/String;

.field private final REDSOCKS:Ljava/lang/String;

.field private final SS_LOCAL:Ljava/lang/String;

.field private final SS_TUNNEL:Ljava/lang/String;

.field private final TUN2SOCKS:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/Executable$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/Executable$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/Executable$;->MODULE$:Lcom/github/shadowsocks/utils/Executable$;

    .line 43
    const-string v0, "redsocks"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->REDSOCKS:Ljava/lang/String;

    .line 44
    const-string v0, "pdnsd"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->PDNSD:Ljava/lang/String;

    .line 45
    const-string v0, "ss-local"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->SS_LOCAL:Ljava/lang/String;

    .line 46
    const-string v0, "ss-tunnel"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->SS_TUNNEL:Ljava/lang/String;

    .line 47
    const-string v0, "tun2socks"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->TUN2SOCKS:Ljava/lang/String;

    .line 48
    const-string v0, "kcptun"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->KCPTUN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public KCPTUN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->KCPTUN:Ljava/lang/String;

    return-object v0
.end method

.method public PDNSD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->PDNSD:Ljava/lang/String;

    return-object v0
.end method

.method public REDSOCKS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->REDSOCKS:Ljava/lang/String;

    return-object v0
.end method

.method public SS_LOCAL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->SS_LOCAL:Ljava/lang/String;

    return-object v0
.end method

.method public SS_TUNNEL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->SS_TUNNEL:Ljava/lang/String;

    return-object v0
.end method

.method public TUN2SOCKS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Executable$;->TUN2SOCKS:Ljava/lang/String;

    return-object v0
.end method
