.class public final Lcom/github/shadowsocks/utils/IOUtils$;
.super Ljava/lang/Object;
.source "IOUtils.scala"


# static fields
.field public static final MODULE$:Lcom/github/shadowsocks/utils/IOUtils$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/github/shadowsocks/utils/IOUtils$;

    invoke-direct {v0}, Lcom/github/shadowsocks/utils/IOUtils$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/github/shadowsocks/utils/IOUtils$;->MODULE$:Lcom/github/shadowsocks/utils/IOUtils$;

    return-void
.end method


# virtual methods
.method public copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 13
    const v2, 0x8000

    new-array v0, v2, [B

    .line 15
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 16
    .local v1, "count":I
    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 21
    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 22
    .local v1, "builder":Lscala/collection/mutable/StringBuilder;
    const v3, 0x8000

    new-array v0, v3, [B

    .line 24
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 25
    .local v2, "count":I
    if-ltz v2, :cond_0

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v3}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v0, Lcom/github/shadowsocks/utils/CloseUtils$;->MODULE$:Lcom/github/shadowsocks/utils/CloseUtils$;

    new-instance v1, Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$1;

    invoke-direct {v1, p1}, Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$1;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$2;

    invoke-direct {v2, p2}, Lcom/github/shadowsocks/utils/IOUtils$$anonfun$writeString$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/github/shadowsocks/utils/CloseUtils$;->autoClose(Lscala/Function0;Lscala/Function1;)Ljava/lang/Object;

    return-void
.end method
