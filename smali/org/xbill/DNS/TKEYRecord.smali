.class public Lorg/xbill/DNS/TKEYRecord;
.super Lorg/xbill/DNS/Record;
.source "TKEYRecord.java"


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private error:I

.field private key:[B

.field private mode:I

.field private other:[B

.field private timeExpire:Ljava/util/Date;

.field private timeInception:Ljava/util/Date;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lorg/xbill/DNS/TKEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/TKEYRecord;-><init>()V

    return-object v0
.end method

.method protected modeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/xbill/DNS/TKEYRecord;->mode:I

    packed-switch v0, :pswitch_data_0

    .line 112
    iget v0, p0, Lorg/xbill/DNS/TKEYRecord;->mode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 107
    :pswitch_0
    const-string v0, "SERVERASSIGNED"

    goto :goto_0

    .line 108
    :pswitch_1
    const-string v0, "DIFFIEHELLMAN"

    goto :goto_0

    .line 109
    :pswitch_2
    const-string v0, "GSSAPI"

    goto :goto_0

    .line 110
    :pswitch_3
    const-string v0, "RESOLVERASSIGNED"

    goto :goto_0

    .line 111
    :pswitch_4
    const-string v0, "DELETE"

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 8
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v3, 0x0

    .line 80
    new-instance v2, Lorg/xbill/DNS/Name;

    invoke-direct {v2, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v2, p0, Lorg/xbill/DNS/TKEYRecord;->alg:Lorg/xbill/DNS/Name;

    .line 81
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lorg/xbill/DNS/TKEYRecord;->timeInception:Ljava/util/Date;

    .line 82
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lorg/xbill/DNS/TKEYRecord;->timeExpire:Ljava/util/Date;

    .line 83
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/TKEYRecord;->mode:I

    .line 84
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/TKEYRecord;->error:I

    .line 86
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 87
    .local v0, "keylen":I
    if-lez v0, :cond_0

    .line 88
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    .line 92
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 93
    .local v1, "otherlen":I
    if-lez v1, :cond_1

    .line 94
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    .line 97
    :goto_1
    return-void

    .line 90
    .end local v1    # "otherlen":I
    :cond_0
    iput-object v3, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    goto :goto_0

    .line 96
    .restart local v1    # "otherlen":I
    :cond_1
    iput-object v3, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    goto :goto_1
.end method

.method rrToString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x40

    const/4 v3, 0x0

    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 121
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "(\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->timeInception:Ljava/util/Date;

    invoke-static {v1}, Lorg/xbill/DNS/FormattedTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->timeExpire:Ljava/util/Date;

    invoke-static {v1}, Lorg/xbill/DNS/FormattedTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {p0}, Lorg/xbill/DNS/TKEYRecord;->modeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    iget v1, p0, Lorg/xbill/DNS/TKEYRecord;->error:I

    invoke-static {v1}, Lorg/xbill/DNS/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, "multiline"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    const-string v2, "\t"

    invoke-static {v1, v4, v2, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    const-string v2, "\t"

    invoke-static {v1, v4, v2, v3}, Lorg/xbill/DNS/utils/base64;->formatString([BILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_2
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 141
    :cond_4
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    if-eqz v1, :cond_5

    .line 143
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    :cond_5
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    if-eqz v1, :cond_3

    .line 147
    iget-object v1, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base64;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 6
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->alg:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 204
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->timeInception:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 205
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->timeExpire:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 207
    iget v0, p0, Lorg/xbill/DNS/TKEYRecord;->mode:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 208
    iget v0, p0, Lorg/xbill/DNS/TKEYRecord;->error:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 210
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 212
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->key:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 217
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 219
    iget-object v0, p0, Lorg/xbill/DNS/TKEYRecord;->other:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 223
    :goto_1
    return-void

    .line 215
    :cond_0
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_1
.end method
