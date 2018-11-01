.class public final Lcom/github/shadowsocks/utils/Action$;
.super Ljava/lang/Object;
.source "Constants.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/Action$;


# instance fields
.field private final CLOSE:Ljava/lang/String;

.field private final QUICK_SWITCH:Ljava/lang/String;

.field private final SCAN:Ljava/lang/String;

.field private final SERVICE:Ljava/lang/String;

.field private final SORT:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/Action$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/Action$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/Action$;->MODULE$:Lcom/github/shadowsocks/utils/Action$;

    .line 217
    const-string v0, "in.zhaoj.shadowsocksrr.SERVICE"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Action$;->SERVICE:Ljava/lang/String;

    .line 218
    const-string v0, "in.zhaoj.shadowsocksrr.CLOSE"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Action$;->CLOSE:Ljava/lang/String;

    .line 219
    const-string v0, "in.zhaoj.shadowsocksrr.QUICK_SWITCH"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Action$;->QUICK_SWITCH:Ljava/lang/String;

    .line 220
    const-string v0, "in.zhaoj.shadowsocksrr.intent.action.SCAN"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Action$;->SCAN:Ljava/lang/String;

    .line 221
    const-string v0, "in.zhaoj.shadowsocksrr.intent.action.SORT"

    iput-object v0, p0, Lcom/github/shadowsocks/utils/Action$;->SORT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public CLOSE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Action$;->CLOSE:Ljava/lang/String;

    return-object v0
.end method

.method public QUICK_SWITCH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Action$;->QUICK_SWITCH:Ljava/lang/String;

    return-object v0
.end method

.method public SCAN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Action$;->SCAN:Ljava/lang/String;

    return-object v0
.end method

.method public SERVICE()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Action$;->SERVICE:Ljava/lang/String;

    return-object v0
.end method

.method public SORT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/github/shadowsocks/utils/Action$;->SORT:Ljava/lang/String;

    return-object v0
.end method
