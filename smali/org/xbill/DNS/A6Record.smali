.class public Lorg/xbill/DNS/A6Record;
.super Lorg/xbill/DNS/Record;
.source "A6Record.java"


# instance fields
.field private prefix:Lorg/xbill/DNS/Name;

.field private prefixBits:I

.field private suffix:Ljava/net/InetAddress;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/xbill/DNS/A6Record;

    invoke-direct {v0}, Lorg/xbill/DNS/A6Record;-><init>()V

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 5
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    iput v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    .line 51
    iget v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    rsub-int v1, v3, 0x80

    .line 52
    .local v1, "suffixbits":I
    add-int/lit8 v3, v1, 0x7

    div-int/lit8 v2, v3, 0x8

    .line 53
    .local v2, "suffixbytes":I
    iget v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    const/16 v4, 0x80

    if-ge v3, v4, :cond_0

    .line 54
    const/16 v3, 0x10

    new-array v0, v3, [B

    .line 55
    .local v0, "bytes":[B
    rsub-int/lit8 v3, v2, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/xbill/DNS/DNSInput;->readByteArray([BII)V

    .line 56
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    .line 58
    .end local v0    # "bytes":[B
    :cond_0
    iget v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    if-lez v3, :cond_1

    .line 59
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-direct {v3, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v3, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    .line 60
    :cond_1
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 84
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 85
    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 86
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    if-eqz v1, :cond_1

    .line 90
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget-object v1, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 5
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 116
    iget v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 117
    iget-object v3, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    if-eqz v3, :cond_0

    .line 118
    iget v3, p0, Lorg/xbill/DNS/A6Record;->prefixBits:I

    rsub-int v1, v3, 0x80

    .line 119
    .local v1, "suffixbits":I
    add-int/lit8 v3, v1, 0x7

    div-int/lit8 v2, v3, 0x8

    .line 120
    .local v2, "suffixbytes":I
    iget-object v3, p0, Lorg/xbill/DNS/A6Record;->suffix:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 121
    .local v0, "data":[B
    rsub-int/lit8 v3, v2, 0x10

    invoke-virtual {p1, v0, v3, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 123
    .end local v0    # "data":[B
    .end local v1    # "suffixbits":I
    .end local v2    # "suffixbytes":I
    :cond_0
    iget-object v3, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    if-eqz v3, :cond_1

    .line 124
    iget-object v3, p0, Lorg/xbill/DNS/A6Record;->prefix:Lorg/xbill/DNS/Name;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 125
    :cond_1
    return-void
.end method
