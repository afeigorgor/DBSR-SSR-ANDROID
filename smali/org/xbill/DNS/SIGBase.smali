.class abstract Lorg/xbill/DNS/SIGBase;
.super Lorg/xbill/DNS/Record;
.source "SIGBase.java"


# instance fields
.field protected alg:I

.field protected covered:I

.field protected expire:Ljava/util/Date;

.field protected footprint:I

.field protected labels:I

.field protected origttl:J

.field protected signature:[B

.field protected signer:Lorg/xbill/DNS/Name;

.field protected timeSigned:Ljava/util/Date;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method public getTypeCovered()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/xbill/DNS/SIGBase;->covered:I

    return v0
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
    const-wide/16 v4, 0x3e8

    .line 53
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SIGBase;->covered:I

    .line 54
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SIGBase;->alg:I

    .line 55
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SIGBase;->labels:I

    .line 56
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/xbill/DNS/SIGBase;->origttl:J

    .line 57
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->expire:Ljava/util/Date;

    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v2

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->timeSigned:Ljava/util/Date;

    .line 59
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/SIGBase;->footprint:I

    .line 60
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->signer:Lorg/xbill/DNS/Name;

    .line 61
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    .line 62
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/SIGBase;->covered:I

    invoke-static {v1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    iget v1, p0, Lorg/xbill/DNS/SIGBase;->alg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    iget v1, p0, Lorg/xbill/DNS/SIGBase;->labels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    iget-wide v2, p0, Lorg/xbill/DNS/SIGBase;->origttl:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const-string v1, "(\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/SIGBase;->expire:Ljava/util/Date;

    invoke-static {v1}, Lorg/xbill/DNS/FormattedTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    iget-object v1, p0, Lorg/xbill/DNS/SIGBase;->timeSigned:Ljava/util/Date;

    invoke-static {v1}, Lorg/xbill/DNS/FormattedTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    iget v1, p0, Lorg/xbill/DNS/SIGBase;->footprint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    iget-object v1, p0, Lorg/xbill/DNS/SIGBase;->signer:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 104
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v1, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    const/16 v2, 0x40

    const-string v3, "\t"

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget-object v1, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 4
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    const-wide/16 v2, 0x3e8

    .line 182
    iget v0, p0, Lorg/xbill/DNS/SIGBase;->covered:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 183
    iget v0, p0, Lorg/xbill/DNS/SIGBase;->alg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 184
    iget v0, p0, Lorg/xbill/DNS/SIGBase;->labels:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 185
    iget-wide v0, p0, Lorg/xbill/DNS/SIGBase;->origttl:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 186
    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->expire:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 187
    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->timeSigned:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 188
    iget v0, p0, Lorg/xbill/DNS/SIGBase;->footprint:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 189
    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->signer:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 190
    iget-object v0, p0, Lorg/xbill/DNS/SIGBase;->signature:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 191
    return-void
.end method
