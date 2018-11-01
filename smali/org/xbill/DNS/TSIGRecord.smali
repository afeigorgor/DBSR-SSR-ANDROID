.class public Lorg/xbill/DNS/TSIGRecord;
.super Lorg/xbill/DNS/Record;
.source "TSIGRecord.java"


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private error:I

.field private fudge:I

.field private originalID:I

.field private other:[B

.field private signature:[B

.field private timeSigned:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V
    .locals 9
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "alg"    # Lorg/xbill/DNS/Name;
    .param p6, "timeSigned"    # Ljava/util/Date;
    .param p7, "fudge"    # I
    .param p8, "signature"    # [B
    .param p9, "originalID"    # I
    .param p10, "error"    # I
    .param p11, "other"    # [B

    .prologue
    .line 58
    const/16 v4, 0xfa

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/Record;-><init>(Lorg/xbill/DNS/Name;IIJ)V

    .line 59
    const-string v2, "alg"

    invoke-static {v2, p5}, Lorg/xbill/DNS/TSIGRecord;->checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    .line 60
    iput-object p6, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    .line 61
    const-string v2, "fudge"

    move/from16 v0, p7

    invoke-static {v2, v0}, Lorg/xbill/DNS/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    .line 62
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    .line 63
    const-string v2, "originalID"

    move/from16 v0, p9

    invoke-static {v2, v0}, Lorg/xbill/DNS/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/TSIGRecord;->originalID:I

    .line 64
    const-string v2, "error"

    move/from16 v0, p10

    invoke-static {v2, v0}, Lorg/xbill/DNS/TSIGRecord;->checkU16(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    .line 65
    move-object/from16 v0, p11

    iput-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    .line 66
    return-void
.end method


# virtual methods
.method public getAlgorithm()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    return v0
.end method

.method public getFudge()I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    return v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/xbill/DNS/TSIGRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/TSIGRecord;-><init>()V

    return-object v0
.end method

.method public getOther()[B
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    return-object v0
.end method

.method public getTimeSigned()Ljava/util/Date;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 12
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v8, Lorg/xbill/DNS/Name;

    invoke-direct {v8, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v8

    int-to-long v4, v8

    .line 73
    .local v4, "timeHigh":J
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v6

    .line 74
    .local v6, "timeLow":J
    const/16 v8, 0x20

    shl-long v8, v4, v8

    add-long v2, v8, v6

    .line 75
    .local v2, "time":J
    new-instance v8, Ljava/util/Date;

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v2

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    .line 76
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v8

    iput v8, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    .line 78
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 79
    .local v1, "sigLen":I
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v8

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    .line 81
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v8

    iput v8, p0, Lorg/xbill/DNS/TSIGRecord;->originalID:I

    .line 82
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v8

    iput v8, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    .line 84
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 85
    .local v0, "otherLen":I
    if-lez v0, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v8

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v8, 0x0

    iput-object v8, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    goto :goto_0
.end method

.method rrToString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x0

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 101
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    const-string v1, "(\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 106
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget v1, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    const/16 v4, 0x40

    const-string v5, "\t"

    invoke-static {v1, v4, v5, v6}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    :goto_0
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    iget v1, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    invoke-static {v1}, Lorg/xbill/DNS/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    if-nez v1, :cond_3

    .line 121
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 148
    :goto_1
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 114
    :cond_2
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 123
    :cond_3
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 125
    const-string v1, "\n\n\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :goto_2
    iget v1, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    const/16 v4, 0x12

    if-ne v1, v4, :cond_6

    .line 129
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    array-length v1, v1

    const/4 v4, 0x6

    if-eq v1, v4, :cond_5

    .line 130
    const-string v1, "<invalid BADTIME other data>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 127
    :cond_4
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 132
    :cond_5
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    const/4 v6, 0x1

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x20

    shl-long/2addr v6, v1

    add-long/2addr v4, v6

    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    const/4 v6, 0x2

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v6, v1

    add-long/2addr v4, v6

    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    const/4 v6, 0x3

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    int-to-long v6, v1

    add-long/2addr v4, v6

    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    const/4 v6, 0x4

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    int-to-long v6, v1

    add-long/2addr v4, v6

    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    const/4 v6, 0x5

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long v2, v4, v6

    .line 138
    .local v2, "time":J
    const-string v1, "<server time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    new-instance v1, Ljava/util/Date;

    mul-long v4, v2, v8

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 140
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 143
    .end local v2    # "time":J
    :cond_6
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    iget-object v1, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 10
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 197
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->alg:Lorg/xbill/DNS/Name;

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 199
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->timeSigned:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 200
    .local v0, "time":J
    const/16 v3, 0x20

    shr-long v6, v0, v3

    long-to-int v2, v6

    .line 201
    .local v2, "timeHigh":I
    const-wide v6, 0xffffffffL

    and-long v4, v0, v6

    .line 202
    .local v4, "timeLow":J
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 203
    invoke-virtual {p1, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 204
    iget v3, p0, Lorg/xbill/DNS/TSIGRecord;->fudge:I

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 206
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 207
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->signature:[B

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 209
    iget v3, p0, Lorg/xbill/DNS/TSIGRecord;->originalID:I

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 210
    iget v3, p0, Lorg/xbill/DNS/TSIGRecord;->error:I

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 212
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    if-eqz v3, :cond_0

    .line 213
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 214
    iget-object v3, p0, Lorg/xbill/DNS/TSIGRecord;->other:[B

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_0
.end method
