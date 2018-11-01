.class public Lorg/xbill/DNS/IPSECKEYRecord;
.super Lorg/xbill/DNS/Record;
.source "IPSECKEYRecord.java"


# instance fields
.field private algorithmType:I

.field private gateway:Ljava/lang/Object;

.field private gatewayType:I

.field private key:[B

.field private precedence:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/xbill/DNS/IPSECKEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/IPSECKEYRecord;-><init>()V

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    .line 101
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    .line 102
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    .line 103
    iget v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    packed-switch v0, :pswitch_data_0

    .line 117
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "invalid gateway type"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    .line 119
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    .line 121
    :cond_0
    return-void

    .line 108
    :pswitch_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 111
    :pswitch_2
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 114
    :pswitch_3
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 152
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 153
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 154
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    iget v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 156
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    iget v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 158
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    iget v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    packed-switch v2, :pswitch_data_0

    .line 172
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    if-eqz v2, :cond_0

    .line 173
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    invoke-static {v2}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 161
    :pswitch_0
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    .line 166
    .local v0, "gatewayAddr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 169
    .end local v0    # "gatewayAddr":Ljava/net/InetAddress;
    :pswitch_2
    iget-object v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 211
    iget v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->precedence:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 212
    iget v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 213
    iget v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->algorithmType:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 214
    iget v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gatewayType:I

    packed-switch v2, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lorg/xbill/DNS/IPSECKEYRecord;->key:[B

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 229
    :cond_0
    return-void

    .line 219
    :pswitch_1
    iget-object v0, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    .line 220
    .local v0, "gatewayAddr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0

    .line 223
    .end local v0    # "gatewayAddr":Ljava/net/InetAddress;
    :pswitch_2
    iget-object v1, p0, Lorg/xbill/DNS/IPSECKEYRecord;->gateway:Ljava/lang/Object;

    check-cast v1, Lorg/xbill/DNS/Name;

    .line 224
    .local v1, "gatewayName":Lorg/xbill/DNS/Name;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
