.class public Lorg/xbill/DNS/ARecord;
.super Lorg/xbill/DNS/Record;
.source "ARecord.java"


# instance fields
.field private addr:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method private static final fromArray([B)I
    .locals 2
    .param p0, "array"    # [B

    .prologue
    .line 29
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static final toArray(I)[B
    .locals 3
    .param p0, "addr"    # I

    .prologue
    .line 37
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 38
    .local v0, "bytes":[B
    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 39
    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 40
    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 41
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 42
    return-object v0
.end method


# virtual methods
.method public getAddress()Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/xbill/DNS/ARecord;->name:Lorg/xbill/DNS/Name;

    if-nez v1, :cond_0

    .line 78
    iget v1, p0, Lorg/xbill/DNS/ARecord;->addr:I

    invoke-static {v1}, Lorg/xbill/DNS/ARecord;->toArray(I)[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 80
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/ARecord;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/xbill/DNS/ARecord;->addr:I

    invoke-static {v2}, Lorg/xbill/DNS/ARecord;->toArray(I)[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/xbill/DNS/ARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/ARecord;-><init>()V

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/ARecord;->fromArray([B)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    .line 60
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    invoke-static {v0}, Lorg/xbill/DNS/ARecord;->toArray(I)[B

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/Address;->toDottedQuad([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 4
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 89
    iget v0, p0, Lorg/xbill/DNS/ARecord;->addr:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 90
    return-void
.end method
