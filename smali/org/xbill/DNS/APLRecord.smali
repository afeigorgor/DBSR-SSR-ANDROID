.class public Lorg/xbill/DNS/APLRecord;
.super Lorg/xbill/DNS/Record;
.source "APLRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/APLRecord$1;,
        Lorg/xbill/DNS/APLRecord$Element;
    }
.end annotation


# instance fields
.field private elements:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method static access$000(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-static {p0, p1}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v0

    return v0
.end method

.method private static addressLength([B)I
    .locals 2
    .param p0, "addr"    # [B

    .prologue
    .line 253
    array-length v1, p0

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 254
    aget-byte v1, p0, v0

    if-eqz v1, :cond_0

    .line 255
    add-int/lit8 v1, v0, 0x1

    .line 257
    :goto_1
    return v1

    .line 253
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 257
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static parseAddress([BI)[B
    .locals 3
    .param p0, "in"    # [B
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 135
    array-length v1, p0

    if-le v1, p1, :cond_0

    .line 136
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "invalid address length"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    array-length v1, p0

    if-ne v1, p1, :cond_1

    .line 141
    .end local p0    # "in":[B
    :goto_0
    return-object p0

    .line 139
    .restart local p0    # "in":[B
    :cond_1
    new-array v0, p1, [B

    .line 140
    .local v0, "out":[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 141
    goto :goto_0
.end method

.method private static validatePrefixLength(II)Z
    .locals 3
    .param p0, "family"    # I
    .param p1, "prefixLength"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 101
    if-ltz p1, :cond_0

    const/16 v2, 0x100

    if-lt p1, v2, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    if-ne p0, v1, :cond_2

    const/16 v2, 0x20

    if-gt p1, v2, :cond_0

    :cond_2
    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    const/16 v2, 0x80

    if-gt p1, v2, :cond_0

    :cond_3
    move v0, v1

    .line 106
    goto :goto_0
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/APLRecord;-><init>()V

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 9
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    .line 147
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v5

    if-eqz v5, :cond_4

    .line 148
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 149
    .local v1, "family":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v4

    .line 150
    .local v4, "prefix":I
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v7

    .line 151
    .local v7, "length":I
    and-int/lit16 v5, v7, 0x80

    if-eqz v5, :cond_0

    move v2, v8

    .line 152
    .local v2, "negative":Z
    :goto_1
    and-int/lit16 v7, v7, -0x81

    .line 154
    invoke-virtual {p1, v7}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v3

    .line 156
    .local v3, "data":[B
    invoke-static {v1, v4}, Lorg/xbill/DNS/APLRecord;->validatePrefixLength(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 157
    new-instance v5, Lorg/xbill/DNS/WireParseException;

    const-string v8, "invalid prefix length"

    invoke-direct {v5, v8}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 151
    .end local v2    # "negative":Z
    .end local v3    # "data":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 160
    .restart local v2    # "negative":Z
    .restart local v3    # "data":[B
    :cond_1
    if-eq v1, v8, :cond_2

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    .line 161
    :cond_2
    invoke-static {v1}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v5

    invoke-static {v3, v5}, Lorg/xbill/DNS/APLRecord;->parseAddress([BI)[B

    move-result-object v3

    .line 163
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    .line 164
    .local v6, "addr":Ljava/net/InetAddress;
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    invoke-direct {v0, v2, v6, v4}, Lorg/xbill/DNS/APLRecord$Element;-><init>(ZLjava/net/InetAddress;I)V

    .line 168
    .end local v6    # "addr":Ljava/net/InetAddress;
    .local v0, "element":Lorg/xbill/DNS/APLRecord$Element;
    :goto_2
    iget-object v5, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    .end local v0    # "element":Lorg/xbill/DNS/APLRecord$Element;
    :cond_3
    new-instance v0, Lorg/xbill/DNS/APLRecord$Element;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/APLRecord$Element;-><init>(IZLjava/lang/Object;ILorg/xbill/DNS/APLRecord$1;)V

    .restart local v0    # "element":Lorg/xbill/DNS/APLRecord$Element;
    goto :goto_2

    .line 171
    .end local v0    # "element":Lorg/xbill/DNS/APLRecord$Element;
    .end local v1    # "family":I
    .end local v2    # "negative":Z
    .end local v3    # "data":[B
    .end local v4    # "prefix":I
    .end local v7    # "length":I
    :cond_4
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 235
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 236
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/APLRecord$Element;

    .line 238
    .local v0, "element":Lorg/xbill/DNS/APLRecord$Element;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 239
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 240
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 242
    .end local v0    # "element":Lorg/xbill/DNS/APLRecord$Element;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 8
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 262
    iget-object v6, p0, Lorg/xbill/DNS/APLRecord;->elements:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 263
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/APLRecord$Element;

    .line 264
    .local v2, "element":Lorg/xbill/DNS/APLRecord$Element;
    const/4 v4, 0x0

    .line 266
    .local v4, "length":I
    iget v6, v2, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    iget v6, v2, Lorg/xbill/DNS/APLRecord$Element;->family:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 269
    :cond_0
    iget-object v0, v2, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    .line 270
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 271
    .local v1, "data":[B
    invoke-static {v1}, Lorg/xbill/DNS/APLRecord;->addressLength([B)I

    move-result v4

    .line 276
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_1
    move v5, v4

    .line 277
    .local v5, "wlength":I
    iget-boolean v6, v2, Lorg/xbill/DNS/APLRecord$Element;->negative:Z

    if-eqz v6, :cond_1

    .line 278
    or-int/lit16 v5, v5, 0x80

    .line 280
    :cond_1
    iget v6, v2, Lorg/xbill/DNS/APLRecord$Element;->family:I

    invoke-virtual {p1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 281
    iget v6, v2, Lorg/xbill/DNS/APLRecord$Element;->prefixLength:I

    invoke-virtual {p1, v6}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 282
    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 283
    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    goto :goto_0

    .line 273
    .end local v1    # "data":[B
    .end local v5    # "wlength":I
    :cond_2
    iget-object v6, v2, Lorg/xbill/DNS/APLRecord$Element;->address:Ljava/lang/Object;

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 274
    .restart local v1    # "data":[B
    array-length v4, v1

    goto :goto_1

    .line 285
    .end local v1    # "data":[B
    .end local v2    # "element":Lorg/xbill/DNS/APLRecord$Element;
    .end local v4    # "length":I
    :cond_3
    return-void
.end method
