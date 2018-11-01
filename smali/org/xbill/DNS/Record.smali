.class public abstract Lorg/xbill/DNS/Record;
.super Ljava/lang/Object;
.source "Record.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final byteFormat:Ljava/text/DecimalFormat;


# instance fields
.field protected dclass:I

.field protected name:Lorg/xbill/DNS/Name;

.field protected ttl:J

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    .line 28
    sget-object v0, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 29
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/xbill/DNS/Name;IIJ)V
    .locals 2
    .param p1, "name"    # Lorg/xbill/DNS/Name;
    .param p2, "type"    # I
    .param p3, "dclass"    # I
    .param p4, "ttl"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 37
    :cond_0
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 38
    invoke-static {p3}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 39
    invoke-static {p4, p5}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 40
    iput-object p1, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 41
    iput p2, p0, Lorg/xbill/DNS/Record;->type:I

    .line 42
    iput p3, p0, Lorg/xbill/DNS/Record;->dclass:I

    .line 43
    iput-wide p4, p0, Lorg/xbill/DNS/Record;->ttl:J

    .line 44
    return-void
.end method

.method protected static byteArrayToString([BZ)Ljava/lang/String;
    .locals 8
    .param p0, "array"    # [B
    .param p1, "quote"    # Z

    .prologue
    const/16 v7, 0x5c

    const/16 v6, 0x22

    .line 402
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v2, "sb":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 405
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_5

    .line 406
    aget-byte v3, p0, v1

    and-int/lit16 v0, v3, 0xff

    .line 407
    .local v0, "b":I
    const/16 v3, 0x20

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7f

    if-lt v0, v3, :cond_2

    .line 408
    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 409
    sget-object v3, Lorg/xbill/DNS/Record;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 405
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_2
    if-eq v0, v6, :cond_3

    if-ne v0, v7, :cond_4

    .line 411
    :cond_3
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 412
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 414
    :cond_4
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 416
    .end local v0    # "b":I
    :cond_5
    if-eqz p1, :cond_6

    .line 417
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 418
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static checkName(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "name"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 720
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 722
    :cond_0
    return-object p1
.end method

.method static checkU16(Ljava/lang/String;I)I
    .locals 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "val"    # I

    .prologue
    .line 700
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " must be an unsigned 16 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_1
    return p1
.end method

.method static checkU32(Ljava/lang/String;J)J
    .locals 3
    .param p0, "field"    # Ljava/lang/String;
    .param p1, "val"    # J

    .prologue
    .line 710
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 711
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " must be an unsigned 32 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "bit value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_1
    return-wide p1
.end method

.method static fromWire(Lorg/xbill/DNS/DNSInput;IZ)Lorg/xbill/DNS/Record;
    .locals 8
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .param p1, "section"    # I
    .param p2, "isUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    .line 184
    .local v1, "name":Lorg/xbill/DNS/Name;
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v2

    .line 185
    .local v2, "type":I
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v3

    .line 187
    .local v3, "dclass":I
    if-nez p1, :cond_0

    .line 188
    invoke-static {v1, v2, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v4

    .line 191
    .local v4, "ttl":J
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v6

    .line 192
    .local v6, "length":I
    if-nez v6, :cond_2

    if-eqz p2, :cond_2

    const/4 v7, 0x1

    if-eq p1, v7, :cond_1

    const/4 v7, 0x2

    if-ne p1, v7, :cond_2

    .line 194
    :cond_1
    invoke-static {v1, v2, v3, v4, v5}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v7, p0

    .line 195
    invoke-static/range {v1 .. v7}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 196
    .local v0, "rec":Lorg/xbill/DNS/Record;
    goto :goto_0
.end method

.method private static final getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;
    .locals 3
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "hasData"    # Z

    .prologue
    .line 56
    if-eqz p5, :cond_1

    .line 57
    invoke-static {p1}, Lorg/xbill/DNS/Type;->getProto(I)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 58
    .local v0, "proto":Lorg/xbill/DNS/Record;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getObject()Lorg/xbill/DNS/Record;

    move-result-object v1

    .line 64
    .end local v0    # "proto":Lorg/xbill/DNS/Record;
    .local v1, "rec":Lorg/xbill/DNS/Record;
    :goto_0
    iput-object p0, v1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    .line 65
    iput p1, v1, Lorg/xbill/DNS/Record;->type:I

    .line 66
    iput p2, v1, Lorg/xbill/DNS/Record;->dclass:I

    .line 67
    iput-wide p3, v1, Lorg/xbill/DNS/Record;->ttl:J

    .line 68
    return-object v1

    .line 61
    .end local v1    # "rec":Lorg/xbill/DNS/Record;
    .restart local v0    # "proto":Lorg/xbill/DNS/Record;
    :cond_0
    new-instance v1, Lorg/xbill/DNS/UNKRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/UNKRecord;-><init>()V

    .restart local v1    # "rec":Lorg/xbill/DNS/Record;
    goto :goto_0

    .line 63
    .end local v0    # "proto":Lorg/xbill/DNS/Record;
    .end local v1    # "rec":Lorg/xbill/DNS/Record;
    :cond_1
    new-instance v1, Lorg/xbill/DNS/EmptyRecord;

    invoke-direct {v1}, Lorg/xbill/DNS/EmptyRecord;-><init>()V

    .restart local v1    # "rec":Lorg/xbill/DNS/Record;
    goto :goto_0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;
    .locals 2
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I

    .prologue
    .line 172
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method public static newRecord(Lorg/xbill/DNS/Name;IIJ)Lorg/xbill/DNS/Record;
    .locals 7
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lorg/xbill/DNS/RelativeNameException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/RelativeNameException;-><init>(Lorg/xbill/DNS/Name;)V

    throw v0

    .line 154
    :cond_0
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 155
    invoke-static {p2}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 156
    invoke-static {p3, p4}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 158
    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method private static newRecord(Lorg/xbill/DNS/Name;IIJILorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/Record;
    .locals 7
    .param p0, "name"    # Lorg/xbill/DNS/Name;
    .param p1, "type"    # I
    .param p2, "dclass"    # I
    .param p3, "ttl"    # J
    .param p5, "length"    # I
    .param p6, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lorg/xbill/DNS/Record;->getEmptyRecord(Lorg/xbill/DNS/Name;IIJZ)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 83
    .local v0, "rec":Lorg/xbill/DNS/Record;
    if-eqz p6, :cond_3

    .line 84
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-ge v1, p5, :cond_1

    .line 85
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "truncated record"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    .end local v0    # "rec":Lorg/xbill/DNS/Record;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 86
    .restart local v0    # "rec":Lorg/xbill/DNS/Record;
    :cond_1
    invoke-virtual {p6, p5}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 88
    invoke-virtual {v0, p6}, Lorg/xbill/DNS/Record;->rrFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 90
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 91
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "invalid record length"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_2
    invoke-virtual {p6}, Lorg/xbill/DNS/DNSInput;->clearActive()V

    .line 94
    :cond_3
    return-object v0
.end method

.method private toWireCanonical(Lorg/xbill/DNS/DNSOutput;Z)V
    .locals 4
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "noTTL"    # Z

    .prologue
    .line 239
    iget-object v2, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 240
    iget v2, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 241
    iget v2, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 242
    if-eqz p2, :cond_0

    .line 243
    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 247
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 248
    .local v0, "lengthPosition":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 249
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 250
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x2

    .line 251
    .local v1, "rrlength":I
    invoke-virtual {p1, v1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    .line 252
    return-void

    .line 245
    .end local v0    # "lengthPosition":I
    .end local v1    # "rrlength":I
    :cond_0
    iget-wide v2, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {p1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    goto :goto_0
.end method

.method private toWireCanonical(Z)[B
    .locals 2
    .param p1, "noTTL"    # Z

    .prologue
    .line 260
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 261
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/Record;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;Z)V

    .line 262
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method protected static unknownToString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 427
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "\\# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 429
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-static {p0}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method cloneRecord()Lorg/xbill/DNS/Record;
    .locals 2

    .prologue
    .line 601
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 651
    move-object v0, p1

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 653
    .local v0, "arg":Lorg/xbill/DNS/Record;
    if-ne p0, v0, :cond_1

    .line 654
    const/4 v2, 0x0

    .line 672
    :cond_0
    :goto_0
    return v2

    .line 656
    :cond_1
    iget-object v5, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v6, v0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Name;->compareTo(Ljava/lang/Object;)I

    move-result v2

    .line 657
    .local v2, "n":I
    if-nez v2, :cond_0

    .line 659
    iget v5, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v6, v0, Lorg/xbill/DNS/Record;->dclass:I

    sub-int v2, v5, v6

    .line 660
    if-nez v2, :cond_0

    .line 662
    iget v5, p0, Lorg/xbill/DNS/Record;->type:I

    iget v6, v0, Lorg/xbill/DNS/Record;->type:I

    sub-int v2, v5, v6

    .line 663
    if-nez v2, :cond_0

    .line 665
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v3

    .line 666
    .local v3, "rdata1":[B
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v4

    .line 667
    .local v4, "rdata2":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_2

    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 668
    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v4, v1

    and-int/lit16 v6, v6, 0xff

    sub-int v2, v5, v6

    .line 669
    if-nez v2, :cond_0

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 672
    :cond_2
    array-length v5, v3

    array-length v6, v4

    sub-int v2, v5, v6

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 576
    if-eqz p1, :cond_0

    instance-of v4, p1, Lorg/xbill/DNS/Record;

    if-nez v4, :cond_1

    .line 583
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 578
    check-cast v2, Lorg/xbill/DNS/Record;

    .line 579
    .local v2, "r":Lorg/xbill/DNS/Record;
    iget v4, p0, Lorg/xbill/DNS/Record;->type:I

    iget v5, v2, Lorg/xbill/DNS/Record;->type:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v5, v2, Lorg/xbill/DNS/Record;->dclass:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v5, v2, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v5}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 581
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v0

    .line 582
    .local v0, "array1":[B
    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->rdataToWireCanonical()[B

    move-result-object v1

    .line 583
    .local v1, "array2":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    goto :goto_0
.end method

.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 684
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDClass()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    return v0
.end method

.method public getName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method abstract getObject()Lorg/xbill/DNS/Record;
.end method

.method public getRRsetType()I
    .locals 3

    .prologue
    .line 527
    iget v1, p0, Lorg/xbill/DNS/Record;->type:I

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    move-object v0, p0

    .line 528
    check-cast v0, Lorg/xbill/DNS/RRSIGRecord;

    .line 529
    .local v0, "sig":Lorg/xbill/DNS/RRSIGRecord;
    invoke-virtual {v0}, Lorg/xbill/DNS/RRSIGRecord;->getTypeCovered()I

    move-result v1

    .line 531
    .end local v0    # "sig":Lorg/xbill/DNS/RRSIGRecord;
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lorg/xbill/DNS/Record;->type:I

    goto :goto_0
.end method

.method public getTTL()J
    .locals 2

    .prologue
    .line 547
    iget-wide v0, p0, Lorg/xbill/DNS/Record;->ttl:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lorg/xbill/DNS/Record;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 591
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/xbill/DNS/Record;->toWireCanonical(Z)[B

    move-result-object v0

    .line 592
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 593
    .local v1, "code":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 594
    shl-int/lit8 v3, v1, 0x3

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 595
    :cond_0
    return v1
.end method

.method public rdataToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rrToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rdataToWireCanonical()[B
    .locals 3

    .prologue
    .line 280
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 281
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 282
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method abstract rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract rrToString()Ljava/lang/String;
.end method

.method abstract rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
.end method

.method public sameRRset(Lorg/xbill/DNS/Record;)Z
    .locals 2
    .param p1, "rec"    # Lorg/xbill/DNS/Record;

    .prologue
    .line 563
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getRRsetType()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Record;->dclass:I

    iget v1, p1, Lorg/xbill/DNS/Record;->dclass:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    iget-object v1, p1, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setTTL(J)V
    .locals 1
    .param p1, "ttl"    # J

    .prologue
    .line 636
    iput-wide p1, p0, Lorg/xbill/DNS/Record;->ttl:J

    .line 637
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 303
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 304
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 306
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 308
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    :cond_1
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v2, "BINDTTL"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    iget-wide v2, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-static {v2, v3}, Lorg/xbill/DNS/TTL;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    :goto_0
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    iget v2, p0, Lorg/xbill/DNS/Record;->dclass:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "noPrintIN"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 316
    :cond_2
    iget v2, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    :cond_3
    iget v2, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->rrToString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "rdata":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 322
    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 313
    .end local v0    # "rdata":Ljava/lang/String;
    :cond_5
    iget-wide v2, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V
    .locals 5
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "section"    # I
    .param p3, "c"    # Lorg/xbill/DNS/Compression;

    .prologue
    const/4 v4, 0x0

    .line 214
    iget-object v2, p0, Lorg/xbill/DNS/Record;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, p1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    .line 215
    iget v2, p0, Lorg/xbill/DNS/Record;->type:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 216
    iget v2, p0, Lorg/xbill/DNS/Record;->dclass:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 217
    if-nez p2, :cond_0

    .line 225
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-wide v2, p0, Lorg/xbill/DNS/Record;->ttl:J

    invoke-virtual {p1, v2, v3}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 220
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v0

    .line 221
    .local v0, "lengthPosition":I
    invoke-virtual {p1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 222
    invoke-virtual {p0, p1, p3, v4}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 223
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x2

    .line 224
    .local v1, "rrlength":I
    invoke-virtual {p1, v1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    goto :goto_0
.end method

.method public toWire(I)[B
    .locals 2
    .param p1, "section"    # I

    .prologue
    .line 232
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 233
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/xbill/DNS/Record;->toWire(Lorg/xbill/DNS/DNSOutput;ILorg/xbill/DNS/Compression;)V

    .line 234
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
