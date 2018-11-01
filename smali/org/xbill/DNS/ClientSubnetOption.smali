.class public Lorg/xbill/DNS/ClientSubnetOption;
.super Lorg/xbill/DNS/EDNSOption;
.source "ClientSubnetOption.java"


# instance fields
.field private address:Ljava/net/InetAddress;

.field private family:I

.field private scopeNetmask:I

.field private sourceNetmask:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    .line 43
    return-void
.end method


# virtual methods
.method optionFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 7
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 123
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v4

    iput v4, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    .line 124
    iget v4, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 125
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "unknown address family"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    iput v4, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    .line 127
    iget v4, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    iget v5, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    invoke-static {v5}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-le v4, v5, :cond_1

    .line 128
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "invalid source netmask"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 129
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    iput v4, p0, Lorg/xbill/DNS/ClientSubnetOption;->scopeNetmask:I

    .line 130
    iget v4, p0, Lorg/xbill/DNS/ClientSubnetOption;->scopeNetmask:I

    iget v5, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    invoke-static {v5}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-le v4, v5, :cond_2

    .line 131
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "invalid scope netmask"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 135
    .local v0, "addr":[B
    array-length v4, v0

    iget v5, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    add-int/lit8 v5, v5, 0x7

    div-int/lit8 v5, v5, 0x8

    if-eq v4, v5, :cond_3

    .line 136
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "invalid address"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    :cond_3
    iget v4, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    invoke-static {v4}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v4

    new-array v2, v4, [B

    .line 140
    .local v2, "fulladdr":[B
    array-length v4, v0

    invoke-static {v0, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    iput-object v4, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    iget-object v4, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;

    iget v5, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    invoke-static {v4, v5}, Lorg/xbill/DNS/Address;->truncate(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v3

    .line 149
    .local v3, "tmp":Ljava/net/InetAddress;
    iget-object v4, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 150
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "invalid padding"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    .end local v3    # "tmp":Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "invalid address"

    invoke-direct {v4, v5, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 151
    .end local v1    # "e":Ljava/net/UnknownHostException;
    .restart local v3    # "tmp":Ljava/net/InetAddress;
    :cond_4
    return-void
.end method

.method optionToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 166
    iget v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 167
    const-string v1, ", scope netmask "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    iget v1, p0, Lorg/xbill/DNS/ClientSubnetOption;->scopeNetmask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method optionToWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;

    .prologue
    .line 155
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->family:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 156
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 157
    iget v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->scopeNetmask:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 158
    iget-object v0, p0, Lorg/xbill/DNS/ClientSubnetOption;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lorg/xbill/DNS/ClientSubnetOption;->sourceNetmask:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 159
    return-void
.end method
