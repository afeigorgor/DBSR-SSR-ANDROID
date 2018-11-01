.class public final Lcom/github/shadowsocks/utils/Route$;
.super Ljava/lang/Object;
.source "Constants.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/Route$;


# instance fields
.field private final ACL:Ljava/lang/String;

.field private final ALL:Ljava/lang/String;

.field private final BYPASS_CHN:Ljava/lang/String;

.field private final BYPASS_LAN:Ljava/lang/String;

.field private final BYPASS_LAN_CHN:Ljava/lang/String;

.field private final CHINALIST:Ljava/lang/String;

.field private final GFWLIST:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/Route$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/Route$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/Route$;->MODULE$:Lcom/github/shadowsocks/utils/Route$;

    .line 225
    const-string v0, "all"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->ALL:Ljava/lang/String;

    .line 226
    const-string v0, "bypass-lan"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->BYPASS_LAN:Ljava/lang/String;

    .line 227
    const-string v0, "bypass-china"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->BYPASS_CHN:Ljava/lang/String;

    .line 228
    const-string v0, "bypass-lan-china"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->BYPASS_LAN_CHN:Ljava/lang/String;

    .line 229
    const-string v0, "gfwlist"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->GFWLIST:Ljava/lang/String;

    .line 230
    const-string v0, "china-list"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->CHINALIST:Ljava/lang/String;

    .line 231
    const-string v0, "self"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->ACL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ACL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->ACL:Ljava/lang/String;

    return-object v0
.end method

.method public ALL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->ALL:Ljava/lang/String;

    return-object v0
.end method

.method public BYPASS_CHN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->BYPASS_CHN:Ljava/lang/String;

    return-object v0
.end method

.method public BYPASS_LAN_CHN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->BYPASS_LAN_CHN:Ljava/lang/String;

    return-object v0
.end method

.method public CHINALIST()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->CHINALIST:Ljava/lang/String;

    return-object v0
.end method

.method public GFWLIST()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Route$;->GFWLIST:Ljava/lang/String;

    return-object v0
.end method
