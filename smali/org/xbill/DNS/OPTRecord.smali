.class public Lorg/xbill/DNS/OPTRecord;
.super Lorg/xbill/DNS/Record;
.source "OPTRecord.java"


# instance fields
.field private options:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 200
    invoke-super {p0, p1}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    check-cast p1, Lorg/xbill/DNS/OPTRecord;

    .end local p1    # "arg":Ljava/lang/Object;
    iget-wide v2, p1, Lorg/xbill/DNS/OPTRecord;->ttl:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtendedRcode()I
    .locals 3

    .prologue
    .line 135
    iget-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    const/16 v2, 0x18

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getFlags()I
    .locals 4

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/xbill/DNS/OPTRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/OPTRecord;-><init>()V

    return-object v0
.end method

.method public getPayloadSize()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/xbill/DNS/OPTRecord;->dclass:I

    return v0
.end method

.method public getVersion()I
    .locals 4

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/xbill/DNS/OPTRecord;->ttl:J

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
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
    .line 91
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    .line 93
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-lez v1, :cond_1

    .line 94
    invoke-static {p1}, Lorg/xbill/DNS/EDNSOption;->fromWire(Lorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/EDNSOption;

    move-result-object v0

    .line 95
    .local v0, "option":Lorg/xbill/DNS/EDNSOption;
    iget-object v1, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    .end local v0    # "option":Lorg/xbill/DNS/EDNSOption;
    :cond_1
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 110
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :cond_0
    const-string v1, " ; payload "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    const-string v1, ", xrcode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, ", version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 118
    const-string v1, ", flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {p0}, Lorg/xbill/DNS/OPTRecord;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 152
    iget-object v2, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    if-nez v2, :cond_1

    .line 159
    :cond_0
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/OPTRecord;->options:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 155
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/EDNSOption;

    .line 157
    .local v1, "option":Lorg/xbill/DNS/EDNSOption;
    invoke-virtual {v1, p1}, Lorg/xbill/DNS/EDNSOption;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_0
.end method
