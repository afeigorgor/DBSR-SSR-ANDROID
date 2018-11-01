.class public Lorg/xbill/DNS/GPOSRecord;
.super Lorg/xbill/DNS/Record;
.source "GPOSRecord.java"


# instance fields
.field private altitude:[B

.field private latitude:[B

.field private longitude:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method private validate(DD)V
    .locals 3
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 29
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_1

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "illegal longitude "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p3, v0

    if-lez v0, :cond_3

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "illegal latitude "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_3
    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLatitudeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitudeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->latitude:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/GPOSRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLongitudeString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getLongitudeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->longitude:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/xbill/DNS/GPOSRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 6
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/GPOSRecord;->longitude:[B

    .line 83
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/GPOSRecord;->latitude:[B

    .line 84
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/GPOSRecord;->altitude:[B

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/xbill/DNS/GPOSRecord;->getLatitude()D

    move-result-wide v4

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/xbill/DNS/GPOSRecord;->validate(DD)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecord;->longitude:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecord;->latitude:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    iget-object v1, p0, Lorg/xbill/DNS/GPOSRecord;->altitude:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/GPOSRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 173
    iget-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->longitude:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 174
    iget-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->latitude:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 175
    iget-object v0, p0, Lorg/xbill/DNS/GPOSRecord;->altitude:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 176
    return-void
.end method
