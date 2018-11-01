.class public Lorg/xbill/DNS/LOCRecord;
.super Lorg/xbill/DNS/Record;
.source "LOCRecord.java"


# static fields
.field private static w2:Ljava/text/NumberFormat;

.field private static w3:Ljava/text/NumberFormat;


# instance fields
.field private altitude:J

.field private hPrecision:J

.field private latitude:J

.field private longitude:J

.field private size:J

.field private vPrecision:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    .line 25
    sget-object v0, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 27
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    .line 28
    sget-object v0, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method

.method private static parseLOCformat(I)J
    .locals 6
    .param p0, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 295
    shr-int/lit8 v4, p0, 0x4

    int-to-long v2, v4

    .line 296
    .local v2, "out":J
    and-int/lit8 v0, p0, 0xf

    .line 297
    .local v0, "exp":I
    const-wide/16 v4, 0x9

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    const/16 v4, 0x9

    if-le v0, v4, :cond_2

    .line 298
    :cond_0
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "Invalid LOC Encoding"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 299
    .end local v0    # "exp":I
    .local v1, "exp":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "exp":I
    .restart local v0    # "exp":I
    if-lez v1, :cond_1

    .line 300
    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    move v1, v0

    .end local v0    # "exp":I
    .restart local v1    # "exp":I
    goto :goto_0

    .line 301
    .end local v1    # "exp":I
    .restart local v0    # "exp":I
    :cond_1
    return-wide v2

    :cond_2
    move v1, v0

    .end local v0    # "exp":I
    .restart local v1    # "exp":I
    goto :goto_0
.end method

.method private positionToString(JCC)Ljava/lang/String;
    .locals 9
    .param p1, "value"    # J
    .param p3, "pos"    # C
    .param p4, "neg"    # C

    .prologue
    .line 187
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-wide v6, 0x80000000L

    sub-long v4, p1, v6

    .line 191
    .local v4, "temp":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 192
    neg-long v4, v4

    .line 193
    move v0, p4

    .line 197
    .local v0, "direction":C
    :goto_0
    const-wide/32 v6, 0x36ee80

    div-long v6, v4, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 198
    const-wide/32 v6, 0x36ee80

    rem-long/2addr v4, v6

    .line 199
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const-wide/32 v6, 0xea60

    div-long v6, v4, v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 202
    const-wide/32 v6, 0xea60

    rem-long/2addr v4, v6

    .line 203
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w3:Ljava/text/NumberFormat;

    const-wide/16 v6, 0x3e8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 206
    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 195
    .end local v0    # "direction":C
    :cond_0
    move v0, p3

    .restart local v0    # "direction":C
    goto :goto_0
.end method

.method private renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "formatter"    # Ljava/text/NumberFormat;
    .param p3, "value"    # J
    .param p5, "divisor"    # J

    .prologue
    .line 177
    div-long v0, p3, p5

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 178
    rem-long/2addr p3, p5

    .line 179
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    invoke-virtual {p2, p3, p4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_0
    return-void
.end method

.method private toLOCformat(J)I
    .locals 7
    .param p1, "l"    # J

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "exp":B
    :goto_0
    const-wide/16 v2, 0x9

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 308
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 309
    const-wide/16 v2, 0xa

    div-long/2addr p1, v2

    goto :goto_0

    .line 311
    :cond_0
    const/4 v1, 0x4

    shl-long v2, p1, v1

    int-to-long v4, v0

    add-long/2addr v2, v4

    long-to-int v1, v2

    return v1
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lorg/xbill/DNS/LOCRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/LOCRecord;-><init>()V

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 4
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 65
    .local v0, "version":I
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Lorg/xbill/DNS/WireParseException;

    const-string v2, "Invalid LOC version"

    invoke-direct {v1, v2}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    .line 69
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    .line 70
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/LOCRecord;->parseLOCformat(I)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    .line 71
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    .line 73
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU32()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    .line 74
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x64

    .line 217
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 220
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    const/16 v3, 0x4e

    const/16 v4, 0x53

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    const/16 v3, 0x45

    const/16 v4, 0x57

    invoke-direct {p0, v0, v1, v3, v4}, Lorg/xbill/DNS/LOCRecord;->positionToString(JCC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    const-wide/32 v4, 0x989680

    sub-long v4, v0, v4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 229
    const-string v0, "m "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 233
    const-string v0, "m "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 237
    const-string v0, "m "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    sget-object v3, Lorg/xbill/DNS/LOCRecord;->w2:Ljava/text/NumberFormat;

    iget-wide v4, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/LOCRecord;->renderFixedPoint(Ljava/lang/StringBuffer;Ljava/text/NumberFormat;JJ)V

    .line 241
    const-string v0, "m"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 285
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->size:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 286
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->hPrecision:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 287
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->vPrecision:J

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/LOCRecord;->toLOCformat(J)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 288
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->latitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 289
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->longitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 290
    iget-wide v0, p0, Lorg/xbill/DNS/LOCRecord;->altitude:J

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 291
    return-void
.end method
