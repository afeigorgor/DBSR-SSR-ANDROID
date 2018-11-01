.class public Lorg/xbill/DNS/Name;
.super Ljava/lang/Object;
.source "Name.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static final byteFormat:Ljava/text/DecimalFormat;

.field public static final empty:Lorg/xbill/DNS/Name;

.field private static final emptyLabel:[B

.field private static final lowercase:[B

.field public static final root:Lorg/xbill/DNS/Name;

.field private static final wild:Lorg/xbill/DNS/Name;

.field private static final wildLabel:[B


# instance fields
.field private hashcode:I

.field private name:[B

.field private offsets:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-array v1, v4, [B

    aput-byte v3, v1, v3

    sput-object v1, Lorg/xbill/DNS/Name;->emptyLabel:[B

    .line 36
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/xbill/DNS/Name;->wildLabel:[B

    .line 57
    new-instance v1, Ljava/text/DecimalFormat;

    invoke-direct {v1}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    .line 60
    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lorg/xbill/DNS/Name;->lowercase:[B

    .line 66
    sget-object v1, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 67
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/xbill/DNS/Name;->lowercase:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 68
    const/16 v1, 0x41

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5a

    if-le v0, v1, :cond_1

    .line 69
    :cond_0
    sget-object v1, Lorg/xbill/DNS/Name;->lowercase:[B

    int-to-byte v2, v0

    aput-byte v2, v1, v0

    .line 67
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    sget-object v1, Lorg/xbill/DNS/Name;->lowercase:[B

    add-int/lit8 v2, v0, -0x41

    add-int/lit8 v2, v2, 0x61

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_1

    .line 73
    :cond_2
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    .line 74
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    sget-object v2, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {v1, v2, v3, v4}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 75
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    .line 76
    sget-object v1, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    new-array v2, v3, [B

    iput-object v2, v1, Lorg/xbill/DNS/Name;->name:[B

    .line 77
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-direct {v1}, Lorg/xbill/DNS/Name;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    .line 78
    sget-object v1, Lorg/xbill/DNS/Name;->wild:Lorg/xbill/DNS/Name;

    sget-object v2, Lorg/xbill/DNS/Name;->wildLabel:[B

    invoke-direct {v1, v2, v3, v4}, Lorg/xbill/DNS/Name;->appendSafe([BII)V

    .line 79
    return-void

    .line 36
    nop

    :array_0
    .array-data 1
        0x1t
        0x2at
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V
    .locals 13
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 207
    const-string v10, "empty name"

    invoke-static {p1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 208
    :cond_0
    const-string v10, "@"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 209
    if-nez p2, :cond_2

    .line 210
    sget-object v10, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    invoke-static {v10, p0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 278
    :cond_1
    :goto_0
    return-void

    .line 212
    :cond_2
    invoke-static {p2, p0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 214
    :cond_3
    const-string v10, "."

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 215
    sget-object v10, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v10, p0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 218
    :cond_4
    const/4 v7, -0x1

    .line 219
    .local v7, "labelstart":I
    const/4 v8, 0x1

    .line 220
    .local v8, "pos":I
    const/16 v10, 0x40

    new-array v6, v10, [B

    .line 221
    .local v6, "label":[B
    const/4 v3, 0x0

    .line 222
    .local v3, "escaped":Z
    const/4 v2, 0x0

    .line 223
    .local v2, "digits":I
    const/4 v5, 0x0

    .line 224
    .local v5, "intval":I
    const/4 v0, 0x0

    .line 225
    .local v0, "absolute":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v4, v10, :cond_10

    .line 226
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-byte v1, v10

    .line 227
    .local v1, "b":B
    if-eqz v3, :cond_a

    .line 228
    const/16 v10, 0x30

    if-lt v1, v10, :cond_8

    const/16 v10, 0x39

    if-gt v1, v10, :cond_8

    const/4 v10, 0x3

    if-ge v2, v10, :cond_8

    .line 229
    add-int/lit8 v2, v2, 0x1

    .line 230
    mul-int/lit8 v5, v5, 0xa

    .line 231
    add-int/lit8 v10, v1, -0x30

    add-int/2addr v5, v10

    .line 232
    const/16 v10, 0xff

    if-le v5, v10, :cond_5

    .line 233
    const-string v10, "bad escape"

    invoke-static {p1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 234
    :cond_5
    const/4 v10, 0x3

    if-ge v2, v10, :cond_6

    .line 225
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 236
    :cond_6
    int-to-byte v1, v5

    .line 240
    :cond_7
    const/16 v10, 0x3f

    if-le v8, v10, :cond_9

    .line 241
    const-string v10, "label too long"

    invoke-static {p1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 238
    :cond_8
    if-lez v2, :cond_7

    const/4 v10, 0x3

    if-ge v2, v10, :cond_7

    .line 239
    const-string v10, "bad escape"

    invoke-static {p1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 242
    :cond_9
    move v7, v8

    .line 243
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .local v9, "pos":I
    aput-byte v1, v6, v8

    .line 244
    const/4 v3, 0x0

    move v8, v9

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_2

    .line 245
    :cond_a
    const/16 v10, 0x5c

    if-ne v1, v10, :cond_b

    .line 246
    const/4 v3, 0x1

    .line 247
    const/4 v2, 0x0

    .line 248
    const/4 v5, 0x0

    goto :goto_2

    .line 249
    :cond_b
    const/16 v10, 0x2e

    if-ne v1, v10, :cond_d

    .line 250
    const/4 v10, -0x1

    if-ne v7, v10, :cond_c

    .line 251
    const-string v10, "invalid empty label"

    invoke-static {p1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 252
    :cond_c
    const/4 v10, 0x0

    add-int/lit8 v11, v8, -0x1

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    .line 253
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, p1, v6, v10, v11}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 254
    const/4 v7, -0x1

    .line 255
    const/4 v8, 0x1

    goto :goto_2

    .line 257
    :cond_d
    const/4 v10, -0x1

    if-ne v7, v10, :cond_e

    .line 258
    move v7, v4

    .line 259
    :cond_e
    const/16 v10, 0x3f

    if-le v8, v10, :cond_f

    .line 260
    const-string v10, "label too long"

    invoke-static {p1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 261
    :cond_f
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "pos":I
    .restart local v9    # "pos":I
    aput-byte v1, v6, v8

    move v8, v9

    .end local v9    # "pos":I
    .restart local v8    # "pos":I
    goto :goto_2

    .line 264
    .end local v1    # "b":B
    :cond_10
    if-lez v2, :cond_11

    const/4 v10, 0x3

    if-ge v2, v10, :cond_11

    .line 265
    const-string v10, "bad escape"

    invoke-static {p1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 266
    :cond_11
    if-eqz v3, :cond_12

    .line 267
    const-string v10, "bad escape"

    invoke-static {p1, v10}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v10

    throw v10

    .line 268
    :cond_12
    const/4 v10, -0x1

    if-ne v7, v10, :cond_13

    .line 269
    sget-object v10, Lorg/xbill/DNS/Name;->emptyLabel:[B

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {p0, p1, v10, v11, v12}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    .line 270
    const/4 v0, 0x1

    .line 275
    :goto_3
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 276
    iget-object v10, p2, Lorg/xbill/DNS/Name;->name:[B

    const/4 v11, 0x0

    invoke-direct {p2, v11}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v11

    invoke-direct {p2}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v12

    invoke-direct {p0, p1, v10, v11, v12}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    goto/16 :goto_0

    .line 272
    :cond_13
    const/4 v10, 0x0

    add-int/lit8 v11, v8, -0x1

    int-to-byte v11, v11

    aput-byte v11, v6, v10

    .line 273
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {p0, p1, v6, v10, v11}, Lorg/xbill/DNS/Name;->appendFromString(Ljava/lang/String;[BII)V

    goto :goto_3
.end method

.method public constructor <init>(Lorg/xbill/DNS/DNSInput;)V
    .locals 10
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "done":Z
    const/16 v5, 0x40

    new-array v1, v5, [B

    .line 349
    .local v1, "label":[B
    const/4 v4, 0x0

    .line 351
    .local v4, "savedState":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    .line 352
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    .line 353
    .local v2, "len":I
    and-int/lit16 v5, v2, 0xc0

    sparse-switch v5, :sswitch_data_0

    .line 385
    new-instance v5, Lorg/xbill/DNS/WireParseException;

    const-string v6, "bad label type"

    invoke-direct {v5, v6}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 355
    :sswitch_0
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v5

    const/16 v6, 0x80

    if-lt v5, v6, :cond_1

    .line 356
    new-instance v5, Lorg/xbill/DNS/WireParseException;

    const-string v6, "too many labels"

    invoke-direct {v5, v6}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 357
    :cond_1
    if-nez v2, :cond_2

    .line 358
    sget-object v5, Lorg/xbill/DNS/Name;->emptyLabel:[B

    invoke-direct {p0, v5, v8, v9}, Lorg/xbill/DNS/Name;->append([BII)V

    .line 359
    const/4 v0, 0x1

    goto :goto_0

    .line 361
    :cond_2
    int-to-byte v5, v2

    aput-byte v5, v1, v8

    .line 362
    invoke-virtual {p1, v1, v9, v2}, Lorg/xbill/DNS/DNSInput;->readByteArray([BII)V

    .line 363
    invoke-direct {p0, v1, v8, v9}, Lorg/xbill/DNS/Name;->append([BII)V

    goto :goto_0

    .line 367
    :sswitch_1
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 368
    .local v3, "pos":I
    and-int/lit16 v5, v2, -0xc1

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v3, v5

    .line 369
    const-string v5, "verbosecompression"

    invoke-static {v5}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 370
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "currently "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ", pointer to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 373
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->current()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-lt v3, v5, :cond_4

    .line 374
    new-instance v5, Lorg/xbill/DNS/WireParseException;

    const-string v6, "bad compression"

    invoke-direct {v5, v6}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 375
    :cond_4
    if-nez v4, :cond_5

    .line 376
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->save()V

    .line 377
    const/4 v4, 0x1

    .line 379
    :cond_5
    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSInput;->jump(I)V

    .line 380
    const-string v5, "verbosecompression"

    invoke-static {v5}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "current name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\', seeking to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 388
    .end local v2    # "len":I
    .end local v3    # "pos":I
    :cond_6
    if-eqz v4, :cond_7

    .line 389
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->restore()V

    .line 391
    :cond_7
    return-void

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc0 -> :sswitch_1
    .end sparse-switch
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 4
    .param p1, "src"    # Lorg/xbill/DNS/Name;
    .param p2, "n"    # I

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 410
    .local v1, "slabels":I
    if-le p2, v1, :cond_0

    .line 411
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "attempted to remove too many labels"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_0
    iget-object v2, p1, Lorg/xbill/DNS/Name;->name:[B

    iput-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 414
    sub-int v2, v1, p2

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    sub-int v2, v1, p2

    if-ge v0, v2, :cond_1

    .line 416
    add-int v2, v0, p2

    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    :cond_1
    return-void
.end method

.method private final append([BII)V
    .locals 12
    .param p1, "array"    # [B
    .param p2, "start"    # I
    .param p3, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 141
    iget-object v10, p0, Lorg/xbill/DNS/Name;->name:[B

    if-nez v10, :cond_0

    move v4, v9

    .line 142
    .local v4, "length":I
    :goto_0
    const/4 v0, 0x0

    .line 143
    .local v0, "alength":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v8, p2

    .local v8, "pos":I
    :goto_1
    if-ge v1, p3, :cond_2

    .line 144
    aget-byte v3, p1, v8

    .line 145
    .local v3, "len":I
    const/16 v10, 0x3f

    if-le v3, v10, :cond_1

    .line 146
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "invalid label"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 141
    .end local v0    # "alength":I
    .end local v1    # "i":I
    .end local v3    # "len":I
    .end local v4    # "length":I
    .end local v8    # "pos":I
    :cond_0
    iget-object v10, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v10, v10

    invoke-direct {p0, v9}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v11

    sub-int v4, v10, v11

    goto :goto_0

    .line 147
    .restart local v0    # "alength":I
    .restart local v1    # "i":I
    .restart local v3    # "len":I
    .restart local v4    # "length":I
    .restart local v8    # "pos":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 148
    add-int/2addr v8, v3

    .line 149
    add-int/2addr v0, v3

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 151
    .end local v3    # "len":I
    :cond_2
    add-int v6, v4, v0

    .line 152
    .local v6, "newlength":I
    const/16 v10, 0xff

    if-le v6, v10, :cond_3

    .line 153
    new-instance v9, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {v9}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw v9

    .line 154
    :cond_3
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v2

    .line 155
    .local v2, "labels":I
    add-int v5, v2, p3

    .line 156
    .local v5, "newlabels":I
    const/16 v10, 0x80

    if-le v5, v10, :cond_4

    .line 157
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "too many labels"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 158
    :cond_4
    new-array v7, v6, [B

    .line 159
    .local v7, "newname":[B
    if-eqz v4, :cond_5

    .line 160
    iget-object v10, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v9}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v11

    invoke-static {v10, v11, v7, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    :cond_5
    invoke-static {p1, p2, v7, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v7, p0, Lorg/xbill/DNS/Name;->name:[B

    .line 163
    const/4 v1, 0x0

    move v8, v4

    :goto_2
    if-ge v1, p3, :cond_6

    .line 164
    add-int v9, v2, v1

    invoke-direct {p0, v9, v8}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 165
    aget-byte v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 167
    :cond_6
    invoke-direct {p0, v5}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 168
    return-void
.end method

.method private final appendFromString(Ljava/lang/String;[BII)V
    .locals 2
    .param p1, "fullName"    # Ljava/lang/String;
    .param p2, "array"    # [B
    .param p3, "start"    # I
    .param p4, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 180
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lorg/xbill/DNS/NameTooLongException;
    const-string v1, "Name too long"

    invoke-static {p1, v1}, Lorg/xbill/DNS/Name;->parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;

    move-result-object v1

    throw v1
.end method

.method private final appendSafe([BII)V
    .locals 1
    .param p1, "array"    # [B
    .param p2, "start"    # I
    .param p3, "n"    # I

    .prologue
    .line 190
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/Name;->append([BII)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private byteString([BI)Ljava/lang/String;
    .locals 9
    .param p1, "array"    # [B
    .param p2, "pos"    # I

    .prologue
    const/16 v8, 0x5c

    .line 592
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 593
    .local v4, "sb":Ljava/lang/StringBuffer;
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "pos":I
    .local v3, "pos":I
    aget-byte v2, p1, p2

    .line 594
    .local v2, "len":I
    move v1, v3

    .local v1, "i":I
    :goto_0
    add-int v5, v3, v2

    if-ge v1, v5, :cond_4

    .line 595
    aget-byte v5, p1, v1

    and-int/lit16 v0, v5, 0xff

    .line 596
    .local v0, "b":I
    const/16 v5, 0x20

    if-le v0, v5, :cond_0

    const/16 v5, 0x7f

    if-lt v0, v5, :cond_1

    .line 597
    :cond_0
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 598
    sget-object v5, Lorg/xbill/DNS/Name;->byteFormat:Ljava/text/DecimalFormat;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 594
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 600
    :cond_1
    const/16 v5, 0x22

    if-eq v0, v5, :cond_2

    const/16 v5, 0x28

    if-eq v0, v5, :cond_2

    const/16 v5, 0x29

    if-eq v0, v5, :cond_2

    const/16 v5, 0x2e

    if-eq v0, v5, :cond_2

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_2

    if-eq v0, v8, :cond_2

    const/16 v5, 0x40

    if-eq v0, v5, :cond_2

    const/16 v5, 0x24

    if-ne v0, v5, :cond_3

    .line 603
    :cond_2
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 604
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 607
    :cond_3
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 609
    .end local v0    # "b":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 4
    .param p0, "prefix"    # Lorg/xbill/DNS/Name;
    .param p1, "suffix"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    .end local p0    # "prefix":Lorg/xbill/DNS/Name;
    :goto_0
    return-object p0

    .line 430
    .restart local p0    # "prefix":Lorg/xbill/DNS/Name;
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0}, Lorg/xbill/DNS/Name;-><init>()V

    .line 431
    .local v0, "newname":Lorg/xbill/DNS/Name;
    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    .line 432
    iget-object v1, p1, Lorg/xbill/DNS/Name;->name:[B

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    invoke-direct {p1}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/xbill/DNS/Name;->append([BII)V

    move-object p0, v0

    .line 433
    goto :goto_0
.end method

.method private static final copy(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 7
    .param p0, "src"    # Lorg/xbill/DNS/Name;
    .param p1, "dst"    # Lorg/xbill/DNS/Name;

    .prologue
    const/4 v6, 0x0

    .line 124
    invoke-direct {p0, v6}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 125
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    iput-object v4, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 126
    iget-wide v4, p0, Lorg/xbill/DNS/Name;->offsets:J

    iput-wide v4, p1, Lorg/xbill/DNS/Name;->offsets:J

    .line 137
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0, v6}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    .line 129
    .local v3, "offset0":I
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v4, v4

    sub-int v2, v4, v3

    .line 130
    .local v2, "namelen":I
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 131
    .local v1, "labels":I
    new-array v4, v2, [B

    iput-object v4, p1, Lorg/xbill/DNS/Name;->name:[B

    .line 132
    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v5, p1, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v4, v3, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    const/4 v4, 0x7

    if-ge v0, v4, :cond_1

    .line 134
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v4

    sub-int/2addr v4, v3

    invoke-direct {p1, v0, v4}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_1
    invoke-direct {p1, v1}, Lorg/xbill/DNS/Name;->setlabels(I)V

    goto :goto_0
.end method

.method private final equals([BI)Z
    .locals 11
    .param p1, "b"    # [B
    .param p2, "bpos"    # I

    .prologue
    const/4 v7, 0x0

    .line 772
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    .line 773
    .local v3, "labels":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-direct {p0, v7}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v5

    .local v5, "pos":I
    move v6, v5

    .end local v5    # "pos":I
    .local v6, "pos":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 774
    iget-object v8, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v8, v8, v6

    aget-byte v9, p1, p2

    if-eq v8, v9, :cond_1

    move v5, v6

    .line 785
    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    :cond_0
    :goto_1
    return v7

    .line 776
    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    :cond_1
    iget-object v8, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget-byte v4, v8, v6

    .line 777
    .local v4, "len":I
    add-int/lit8 p2, p2, 0x1

    .line 778
    const/16 v8, 0x3f

    if-le v4, v8, :cond_2

    .line 779
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "invalid label"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 780
    :cond_2
    const/4 v2, 0x0

    .local v2, "j":I
    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    move v0, p2

    .end local p2    # "bpos":I
    .local v0, "bpos":I
    :goto_2
    if-ge v2, v4, :cond_3

    .line 781
    sget-object v8, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v9, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget-byte v9, v9, v6

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    sget-object v9, Lorg/xbill/DNS/Name;->lowercase:[B

    add-int/lit8 p2, v0, 0x1

    .end local v0    # "bpos":I
    .restart local p2    # "bpos":I
    aget-byte v10, p1, v0

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_0

    .line 780
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    move v0, p2

    .end local p2    # "bpos":I
    .restart local v0    # "bpos":I
    goto :goto_2

    .line 773
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move p2, v0

    .end local v0    # "bpos":I
    .restart local p2    # "bpos":I
    goto :goto_0

    .line 785
    .end local v2    # "j":I
    .end local v4    # "len":I
    :cond_4
    const/4 v7, 0x1

    move v5, v6

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_1
.end method

.method public static fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 332
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    :try_end_0
    .catch Lorg/xbill/DNS/TextParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Lorg/xbill/DNS/TextParseException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Invalid name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "origin"    # Lorg/xbill/DNS/Name;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .prologue
    .line 302
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 307
    .end local p1    # "origin":Lorg/xbill/DNS/Name;
    :goto_0
    return-object p1

    .line 304
    .restart local p1    # "origin":Lorg/xbill/DNS/Name;
    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    sget-object p1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 307
    :cond_1
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/Name;-><init>(Ljava/lang/String;Lorg/xbill/DNS/Name;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private final getlabels()I
    .locals 4

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private final offset(I)I
    .locals 6
    .param p1, "n"    # I

    .prologue
    .line 96
    if-nez p1, :cond_1

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    if-nez v3, :cond_1

    .line 97
    const/4 v1, 0x0

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    if-ltz p1, :cond_2

    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v3

    if-lt p1, v3, :cond_3

    .line 99
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "label out of range"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_3
    const/4 v3, 0x7

    if-ge p1, v3, :cond_4

    .line 101
    rsub-int/lit8 v3, p1, 0x7

    mul-int/lit8 v2, v3, 0x8

    .line 102
    .local v2, "shift":I
    iget-wide v4, p0, Lorg/xbill/DNS/Name;->offsets:J

    ushr-long/2addr v4, v2

    long-to-int v3, v4

    and-int/lit16 v1, v3, 0xff

    goto :goto_0

    .line 104
    .end local v2    # "shift":I
    :cond_4
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .line 105
    .local v1, "pos":I
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_0

    .line 106
    iget-object v3, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v3, v3, v1

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static parseException(Ljava/lang/String;Ljava/lang/String;)Lorg/xbill/DNS/TextParseException;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v0, Lorg/xbill/DNS/TextParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xbill/DNS/TextParseException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final setlabels(I)V
    .locals 4
    .param p1, "labels"    # I

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v2, -0x100

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 114
    iget-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 115
    return-void
.end method

.method private final setoffset(II)V
    .locals 8
    .param p1, "n"    # I
    .param p2, "offset"    # I

    .prologue
    .line 87
    const/4 v1, 0x7

    if-lt p1, v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    rsub-int/lit8 v1, p1, 0x7

    mul-int/lit8 v0, v1, 0x8

    .line 90
    .local v0, "shift":I
    iget-wide v2, p0, Lorg/xbill/DNS/Name;->offsets:J

    const-wide/16 v4, 0xff

    shl-long/2addr v4, v0

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    iput-wide v2, p0, Lorg/xbill/DNS/Name;->offsets:J

    .line 91
    iget-wide v2, p0, Lorg/xbill/DNS/Name;->offsets:J

    int-to-long v4, p2

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/xbill/DNS/Name;->offsets:J

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 15
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 834
    move-object/from16 v2, p1

    check-cast v2, Lorg/xbill/DNS/Name;

    .line 836
    .local v2, "arg":Lorg/xbill/DNS/Name;
    if-ne p0, v2, :cond_1

    .line 837
    const/4 v9, 0x0

    .line 857
    :cond_0
    :goto_0
    return v9

    .line 839
    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v7

    .line 840
    .local v7, "labels":I
    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 841
    .local v0, "alabels":I
    if-le v7, v0, :cond_2

    move v4, v0

    .line 843
    .local v4, "compares":I
    :goto_1
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    if-gt v5, v4, :cond_5

    .line 844
    sub-int v11, v7, v5

    invoke-direct {p0, v11}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v10

    .line 845
    .local v10, "start":I
    sub-int v11, v0, v5

    invoke-direct {v2, v11}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    .line 846
    .local v3, "astart":I
    iget-object v11, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v8, v11, v10

    .line 847
    .local v8, "length":I
    iget-object v11, v2, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v1, v11, v3

    .line 848
    .local v1, "alength":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v6, v8, :cond_3

    if-ge v6, v1, :cond_3

    .line 849
    sget-object v11, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v12, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int v13, v6, v10

    add-int/lit8 v13, v13, 0x1

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    aget-byte v11, v11, v12

    sget-object v12, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v13, v2, Lorg/xbill/DNS/Name;->name:[B

    add-int v14, v6, v3

    add-int/lit8 v14, v14, 0x1

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    sub-int v9, v11, v12

    .line 851
    .local v9, "n":I
    if-nez v9, :cond_0

    .line 848
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v1    # "alength":I
    .end local v3    # "astart":I
    .end local v4    # "compares":I
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v8    # "length":I
    .end local v9    # "n":I
    .end local v10    # "start":I
    :cond_2
    move v4, v7

    .line 841
    goto :goto_1

    .line 854
    .restart local v1    # "alength":I
    .restart local v3    # "astart":I
    .restart local v4    # "compares":I
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v8    # "length":I
    .restart local v10    # "start":I
    :cond_3
    if-eq v8, v1, :cond_4

    .line 855
    sub-int v9, v8, v1

    goto :goto_0

    .line 843
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 857
    .end local v1    # "alength":I
    .end local v3    # "astart":I
    .end local v6    # "j":I
    .end local v8    # "length":I
    .end local v10    # "start":I
    :cond_5
    sub-int v9, v7, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 793
    if-ne p1, p0, :cond_1

    .line 794
    const/4 v1, 0x1

    .line 806
    :cond_0
    :goto_0
    return v1

    .line 795
    :cond_1
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/xbill/DNS/Name;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 797
    check-cast v0, Lorg/xbill/DNS/Name;

    .line 798
    .local v0, "d":Lorg/xbill/DNS/Name;
    iget v2, v0, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v2, :cond_2

    .line 799
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 800
    :cond_2
    iget v2, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-nez v2, :cond_3

    .line 801
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->hashCode()I

    .line 802
    :cond_3
    iget v2, v0, Lorg/xbill/DNS/Name;->hashcode:I

    iget v3, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-ne v2, v3, :cond_0

    .line 804
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 806
    iget-object v2, v0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {v0, v1}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    invoke-direct {p0, v2, v1}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result v1

    goto :goto_0
.end method

.method public fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;
    .locals 13
    .param p1, "dname"    # Lorg/xbill/DNS/DNAMERecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 509
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 510
    .local v2, "dnameowner":Lorg/xbill/DNS/Name;
    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 511
    .local v3, "dnametarget":Lorg/xbill/DNS/Name;
    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 512
    const/4 v5, 0x0

    .line 534
    :cond_0
    return-object v5

    .line 514
    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v10

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->labels()I

    move-result v11

    sub-int v6, v10, v11

    .line 515
    .local v6, "plabels":I
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->length()S

    move-result v10

    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->length()S

    move-result v11

    sub-int v7, v10, v11

    .line 516
    .local v7, "plength":I
    invoke-direct {p0, v12}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v9

    .line 518
    .local v9, "pstart":I
    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 519
    .local v0, "dlabels":I
    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    .line 521
    .local v1, "dlength":I
    add-int v10, v7, v1

    const/16 v11, 0xff

    if-le v10, v11, :cond_2

    .line 522
    new-instance v10, Lorg/xbill/DNS/NameTooLongException;

    invoke-direct {v10}, Lorg/xbill/DNS/NameTooLongException;-><init>()V

    throw v10

    .line 524
    :cond_2
    new-instance v5, Lorg/xbill/DNS/Name;

    invoke-direct {v5}, Lorg/xbill/DNS/Name;-><init>()V

    .line 525
    .local v5, "newname":Lorg/xbill/DNS/Name;
    add-int v10, v6, v0

    invoke-direct {v5, v10}, Lorg/xbill/DNS/Name;->setlabels(I)V

    .line 526
    add-int v10, v7, v1

    new-array v10, v10, [B

    iput-object v10, v5, Lorg/xbill/DNS/Name;->name:[B

    .line 527
    iget-object v10, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v11, v5, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v10, v9, v11, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 528
    iget-object v10, v3, Lorg/xbill/DNS/Name;->name:[B

    iget-object v11, v5, Lorg/xbill/DNS/Name;->name:[B

    invoke-static {v10, v12, v11, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v8, 0x0

    .local v8, "pos":I
    :goto_0
    const/4 v10, 0x7

    if-ge v4, v10, :cond_0

    add-int v10, v6, v0

    if-ge v4, v10, :cond_0

    .line 531
    invoke-direct {v5, v4, v8}, Lorg/xbill/DNS/Name;->setoffset(II)V

    .line 532
    iget-object v10, v5, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v10, v10, v8

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v8, v10

    .line 530
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 814
    iget v2, p0, Lorg/xbill/DNS/Name;->hashcode:I

    if-eqz v2, :cond_0

    .line 815
    iget v2, p0, Lorg/xbill/DNS/Name;->hashcode:I

    .line 820
    :goto_0
    return v2

    .line 816
    :cond_0
    const/4 v0, 0x0

    .line 817
    .local v0, "code":I
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v1

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 818
    shl-int/lit8 v2, v0, 0x3

    sget-object v3, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v4, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 817
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 819
    :cond_1
    iput v0, p0, Lorg/xbill/DNS/Name;->hashcode:I

    .line 820
    iget v2, p0, Lorg/xbill/DNS/Name;->hashcode:I

    goto :goto_0
.end method

.method public isAbsolute()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 552
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 553
    .local v0, "nlabels":I
    if-nez v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    aget-byte v2, v2, v3

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public labels()I
    .locals 1

    .prologue
    .line 573
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v0

    return v0
.end method

.method public length()S
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 563
    invoke-direct {p0}, Lorg/xbill/DNS/Name;->getlabels()I

    move-result v1

    if-nez v1, :cond_0

    .line 565
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v1, v1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v0

    sub-int v0, v1, v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public subdomain(Lorg/xbill/DNS/Name;)Z
    .locals 4
    .param p1, "domain"    # Lorg/xbill/DNS/Name;

    .prologue
    .line 581
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 582
    .local v1, "labels":I
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    .line 583
    .local v0, "dlabels":I
    if-le v0, v1, :cond_0

    .line 584
    const/4 v2, 0x0

    .line 587
    :goto_0
    return v2

    .line 585
    :cond_0
    if-ne v0, v1, :cond_1

    .line 586
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 587
    :cond_1
    iget-object v2, p0, Lorg/xbill/DNS/Name;->name:[B

    sub-int v3, v1, v0

    invoke-direct {p0, v3}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    invoke-direct {p1, v2, v3}, Lorg/xbill/DNS/Name;->equals([BI)Z

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Name;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 9
    .param p1, "omitFinalDot"    # Z

    .prologue
    const/16 v8, 0x2e

    const/4 v7, 0x0

    .line 619
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 620
    .local v1, "labels":I
    if-nez v1, :cond_0

    .line 621
    const-string v5, "@"

    .line 639
    :goto_0
    return-object v5

    .line 622
    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v7}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v6

    aget-byte v5, v5, v6

    if-nez v5, :cond_1

    .line 623
    const-string v5, "."

    goto :goto_0

    .line 624
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 625
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-direct {p0, v7}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v3

    .local v3, "pos":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 626
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v2, v5, v3

    .line 627
    .local v2, "len":I
    const/16 v5, 0x3f

    if-le v2, v5, :cond_2

    .line 628
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "invalid label"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 629
    :cond_2
    if-nez v2, :cond_4

    .line 630
    if-nez p1, :cond_3

    .line 631
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 639
    .end local v2    # "len":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 634
    .restart local v2    # "len":I
    :cond_4
    if-lez v0, :cond_5

    .line 635
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 636
    :cond_5
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    invoke-direct {p0, v5, v3}, Lorg/xbill/DNS/Name;->byteString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    add-int/lit8 v5, v2, 0x1

    add-int/2addr v3, v5

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V
    .locals 7
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;

    .prologue
    .line 684
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v5

    if-nez v5, :cond_0

    .line 685
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "toWire() called on non-absolute name"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 688
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    .line 689
    .local v1, "labels":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-ge v0, v5, :cond_5

    .line 691
    if-nez v0, :cond_2

    .line 692
    move-object v4, p0

    .line 695
    .local v4, "tname":Lorg/xbill/DNS/Name;
    :goto_1
    const/4 v3, -0x1

    .line 696
    .local v3, "pos":I
    if-eqz p2, :cond_1

    .line 697
    invoke-virtual {p2, v4}, Lorg/xbill/DNS/Compression;->get(Lorg/xbill/DNS/Name;)I

    move-result v3

    .line 698
    :cond_1
    if-ltz v3, :cond_3

    .line 699
    const v5, 0xc000

    or-int/2addr v3, v5

    .line 700
    invoke-virtual {p1, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 710
    .end local v3    # "pos":I
    .end local v4    # "tname":Lorg/xbill/DNS/Name;
    :goto_2
    return-void

    .line 694
    :cond_2
    new-instance v4, Lorg/xbill/DNS/Name;

    invoke-direct {v4, p0, v0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .restart local v4    # "tname":Lorg/xbill/DNS/Name;
    goto :goto_1

    .line 703
    .restart local v3    # "pos":I
    :cond_3
    if-eqz p2, :cond_4

    .line 704
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v5

    invoke-virtual {p2, v5, v4}, Lorg/xbill/DNS/Compression;->add(ILorg/xbill/DNS/Name;)V

    .line 705
    :cond_4
    invoke-direct {p0, v0}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v2

    .line 706
    .local v2, "off":I
    iget-object v5, p0, Lorg/xbill/DNS/Name;->name:[B

    iget-object v6, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v6, v6, v2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1, v5, v2, v6}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    .end local v2    # "off":I
    .end local v3    # "pos":I
    .end local v4    # "tname":Lorg/xbill/DNS/Name;
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    goto :goto_2
.end method

.method public toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 0
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 764
    if-eqz p3, :cond_0

    .line 765
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 768
    :goto_0
    return-void

    .line 767
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;)V

    goto :goto_0
.end method

.method public toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;

    .prologue
    .line 729
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v0

    .line 730
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 731
    return-void
.end method

.method public toWireCanonical()[B
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 739
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v5

    .line 740
    .local v5, "labels":I
    if-nez v5, :cond_1

    .line 741
    new-array v0, v11, [B

    .line 751
    :cond_0
    return-object v0

    .line 742
    :cond_1
    iget-object v9, p0, Lorg/xbill/DNS/Name;->name:[B

    array-length v9, v9

    invoke-direct {p0, v11}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v10

    sub-int/2addr v9, v10

    new-array v0, v9, [B

    .line 743
    .local v0, "b":[B
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-direct {p0, v11}, Lorg/xbill/DNS/Name;->offset(I)I

    move-result v7

    .local v7, "spos":I
    const/4 v1, 0x0

    .local v1, "dpos":I
    move v2, v1

    .end local v1    # "dpos":I
    .local v2, "dpos":I
    move v8, v7

    .end local v7    # "spos":I
    .local v8, "spos":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 744
    iget-object v9, p0, Lorg/xbill/DNS/Name;->name:[B

    aget-byte v6, v9, v8

    .line 745
    .local v6, "len":I
    const/16 v9, 0x3f

    if-le v6, v9, :cond_2

    .line 746
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "invalid label"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 747
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dpos":I
    .restart local v1    # "dpos":I
    iget-object v9, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "spos":I
    .restart local v7    # "spos":I
    aget-byte v9, v9, v8

    aput-byte v9, v0, v2

    .line 748
    const/4 v4, 0x0

    .local v4, "j":I
    move v2, v1

    .end local v1    # "dpos":I
    .restart local v2    # "dpos":I
    move v8, v7

    .end local v7    # "spos":I
    .restart local v8    # "spos":I
    :goto_1
    if-ge v4, v6, :cond_3

    .line 749
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "dpos":I
    .restart local v1    # "dpos":I
    sget-object v9, Lorg/xbill/DNS/Name;->lowercase:[B

    iget-object v10, p0, Lorg/xbill/DNS/Name;->name:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "spos":I
    .restart local v7    # "spos":I
    aget-byte v10, v10, v8

    and-int/lit16 v10, v10, 0xff

    aget-byte v9, v9, v10

    aput-byte v9, v0, v2

    .line 748
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "dpos":I
    .restart local v2    # "dpos":I
    move v8, v7

    .end local v7    # "spos":I
    .restart local v8    # "spos":I
    goto :goto_1

    .line 743
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
