.class public final Lcom/github/shadowsocks/utils/State$;
.super Ljava/lang/Object;
.source "Constants.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/State$;


# instance fields
.field private final CONNECTED:I

.field private final CONNECTING:I

.field private final STOPPED:I

.field private final STOPPING:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/State$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/State$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/State$;->MODULE$:Lcom/github/shadowsocks/utils/State$;

    .line 209
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/shadowsocks/utils/State$;->CONNECTING:I

    .line 210
    const/4 v0, 0x2

    iput v0, p0, Lcom/github/shadowsocks/utils/State$;->CONNECTED:I

    .line 211
    const/4 v0, 0x3

    iput v0, p0, Lcom/github/shadowsocks/utils/State$;->STOPPING:I

    .line 212
    const/4 v0, 0x4

    iput v0, p0, Lcom/github/shadowsocks/utils/State$;->STOPPED:I

    return-void
.end method


# virtual methods
.method public CONNECTED()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/github/shadowsocks/utils/State$;->CONNECTED:I

    return v0
.end method

.method public CONNECTING()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/github/shadowsocks/utils/State$;->CONNECTING:I

    return v0
.end method

.method public STOPPED()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/github/shadowsocks/utils/State$;->STOPPED:I

    return v0
.end method

.method public STOPPING()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/github/shadowsocks/utils/State$;->STOPPING:I

    return v0
.end method
