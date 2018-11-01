.class public final Lcom/github/shadowsocks/ShadowsocksVpnThread$;
.super Ljava/lang/Object;
.source "ShadowsocksVpnThread.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/ShadowsocksVpnThread$;


# instance fields
.field private final getInt:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/ShadowsocksVpnThread$;

    invoke-direct {v0}, Lcom/github/shadowsocks/ShadowsocksVpnThread$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/ShadowsocksVpnThread$;->MODULE$:Lcom/github/shadowsocks/ShadowsocksVpnThread$;

    .line 50
    const-class v0, Ljava/io/FileDescriptor;

    const-string v1, "getInt$"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread$;->getInt:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public getInt()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/github/shadowsocks/ShadowsocksVpnThread$;->getInt:Ljava/lang/reflect/Method;

    return-object v0
.end method
