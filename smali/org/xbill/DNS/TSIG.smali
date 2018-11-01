.class public Lorg/xbill/DNS/TSIG;
.super Ljava/lang/Object;
.source "TSIG.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/TSIG$StreamVerifier;
    }
.end annotation


# static fields
.field public static final HMAC:Lorg/xbill/DNS/Name;

.field public static final HMAC_MD5:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA1:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA224:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA256:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA384:Lorg/xbill/DNS/Name;

.field public static final HMAC_SHA512:Lorg/xbill/DNS/Name;


# instance fields
.field private alg:Lorg/xbill/DNS/Name;

.field private digest:Ljava/lang/String;

.field private digestBlockLength:I

.field private key:[B

.field private name:Lorg/xbill/DNS/Name;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "HMAC-MD5.SIG-ALG.REG.INT."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    .line 29
    sget-object v0, Lorg/xbill/DNS/TSIG;->HMAC_MD5:Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC:Lorg/xbill/DNS/Name;

    .line 32
    const-string v0, "hmac-sha1."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA1:Lorg/xbill/DNS/Name;

    .line 39
    const-string v0, "hmac-sha224."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA224:Lorg/xbill/DNS/Name;

    .line 42
    const-string v0, "hmac-sha256."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA256:Lorg/xbill/DNS/Name;

    .line 45
    const-string v0, "hmac-sha384."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA384:Lorg/xbill/DNS/Name;

    .line 48
    const-string v0, "hmac-sha512."

    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/TSIG;->HMAC_SHA512:Lorg/xbill/DNS/Name;

    return-void
.end method

.method static access$000(Lorg/xbill/DNS/TSIG;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    return-object v0
.end method

.method static access$100(Lorg/xbill/DNS/TSIG;)I
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .prologue
    .line 16
    iget v0, p0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    return v0
.end method

.method static access$200(Lorg/xbill/DNS/TSIG;)[B
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->key:[B

    return-object v0
.end method

.method static access$300(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method static access$400(Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/Name;
    .locals 1
    .param p0, "x0"    # Lorg/xbill/DNS/TSIG;

    .prologue
    .line 16
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    return-object v0
.end method


# virtual methods
.method public apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V
    .locals 3
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "error"    # I
    .param p3, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    const/4 v2, 0x3

    .line 287
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2, p3}, Lorg/xbill/DNS/TSIG;->generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;

    move-result-object v0

    .line 288
    .local v0, "r":Lorg/xbill/DNS/Record;
    invoke-virtual {p1, v0, v2}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 289
    iput v2, p1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 290
    return-void
.end method

.method public apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V
    .locals 1
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;ILorg/xbill/DNS/TSIGRecord;)V

    .line 300
    return-void
.end method

.method public generate(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)Lorg/xbill/DNS/TSIGRecord;
    .locals 22
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "error"    # I
    .param p4, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 213
    const/16 v3, 0x12

    move/from16 v0, p3

    if-eq v0, v3, :cond_8

    .line 214
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 218
    .local v9, "timeSigned":Ljava/util/Date;
    :goto_0
    const/4 v2, 0x0

    .line 219
    .local v2, "hmac":Lorg/xbill/DNS/utils/HMAC;
    if-eqz p3, :cond_0

    const/16 v3, 0x12

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 220
    :cond_0
    new-instance v2, Lorg/xbill/DNS/utils/HMAC;

    .end local v2    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/xbill/DNS/TSIG;->key:[B

    invoke-direct {v2, v3, v4, v5}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    .line 222
    .restart local v2    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    :cond_1
    const-string v3, "tsigfudge"

    invoke-static {v3}, Lorg/xbill/DNS/Options;->intValue(Ljava/lang/String;)I

    move-result v10

    .line 223
    .local v10, "fudge":I
    if-ltz v10, :cond_2

    const/16 v3, 0x7fff

    if-le v10, v3, :cond_3

    .line 224
    :cond_2
    const/16 v10, 0x12c

    .line 226
    :cond_3
    if-eqz p4, :cond_4

    .line 227
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 228
    .local v15, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v15, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 229
    if-eqz v2, :cond_4

    .line 230
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 231
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 236
    .end local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    :cond_4
    if-eqz v2, :cond_5

    .line 237
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 239
    :cond_5
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 240
    .restart local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v15}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 241
    const/16 v3, 0xff

    invoke-virtual {v15, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 242
    const-wide/16 v4, 0x0

    invoke-virtual {v15, v4, v5}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v3, v15}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 244
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v16, v4, v6

    .line 245
    .local v16, "time":J
    const/16 v3, 0x20

    shr-long v4, v16, v3

    long-to-int v0, v4

    move/from16 v18, v0

    .line 246
    .local v18, "timeHigh":I
    const-wide v4, 0xffffffffL

    and-long v20, v16, v4

    .line 247
    .local v20, "timeLow":J
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 248
    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 249
    invoke-virtual {v15, v10}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 251
    move/from16 v0, p3

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 252
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 254
    if-eqz v2, :cond_6

    .line 255
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 258
    :cond_6
    if-eqz v2, :cond_9

    .line 259
    invoke-virtual {v2}, Lorg/xbill/DNS/utils/HMAC;->sign()[B

    move-result-object v11

    .line 263
    .local v11, "signature":[B
    :goto_1
    const/4 v14, 0x0

    .line 264
    .local v14, "other":[B
    const/16 v3, 0x12

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 265
    new-instance v15, Lorg/xbill/DNS/DNSOutput;

    .end local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    invoke-direct {v15}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 266
    .restart local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v16, v4, v6

    .line 267
    const/16 v3, 0x20

    shr-long v4, v16, v3

    long-to-int v0, v4

    move/from16 v18, v0

    .line 268
    const-wide v4, 0xffffffffL

    and-long v20, v16, v4

    .line 269
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 270
    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 271
    invoke-virtual {v15}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v14

    .line 274
    :cond_7
    new-instance v3, Lorg/xbill/DNS/TSIGRecord;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    const/16 v5, 0xff

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v12

    invoke-virtual {v12}, Lorg/xbill/DNS/Header;->getID()I

    move-result v12

    move/from16 v13, p3

    invoke-direct/range {v3 .. v14}, Lorg/xbill/DNS/TSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJLorg/xbill/DNS/Name;Ljava/util/Date;I[BII[B)V

    return-object v3

    .line 216
    .end local v2    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    .end local v9    # "timeSigned":Ljava/util/Date;
    .end local v10    # "fudge":I
    .end local v11    # "signature":[B
    .end local v14    # "other":[B
    .end local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    .end local v16    # "time":J
    .end local v18    # "timeHigh":I
    .end local v20    # "timeLow":J
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v9

    .restart local v9    # "timeSigned":Ljava/util/Date;
    goto/16 :goto_0

    .line 261
    .restart local v2    # "hmac":Lorg/xbill/DNS/utils/HMAC;
    .restart local v10    # "fudge":I
    .restart local v15    # "out":Lorg/xbill/DNS/DNSOutput;
    .restart local v16    # "time":J
    .restart local v18    # "timeHigh":I
    .restart local v20    # "timeLow":J
    :cond_9
    const/4 v3, 0x0

    new-array v11, v3, [B

    .restart local v11    # "signature":[B
    goto :goto_1
.end method

.method public recordLength()I
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->length()S

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->length()S

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x12

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B
    .locals 28
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "length"    # I
    .param p4, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 365
    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 366
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v22

    .line 367
    .local v22, "tsig":Lorg/xbill/DNS/TSIGRecord;
    new-instance v8, Lorg/xbill/DNS/utils/HMAC;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/xbill/DNS/TSIG;->digestBlockLength:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->key:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v8, v0, v1, v2}, Lorg/xbill/DNS/utils/HMAC;-><init>(Ljava/lang/String;I[B)V

    .line 368
    .local v8, "hmac":Lorg/xbill/DNS/utils/HMAC;
    if-nez v22, :cond_0

    .line 369
    const/16 v23, 0x1

    .line 441
    :goto_0
    return v23

    .line 371
    :cond_0
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->name:Lorg/xbill/DNS/Name;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->alg:Lorg/xbill/DNS/Name;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 372
    :cond_1
    const-string v23, "verbose"

    invoke-static/range {v23 .. v23}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 373
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v24, "BADKEY failure"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 374
    :cond_2
    const/16 v23, 0x11

    goto :goto_0

    .line 376
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 377
    .local v12, "now":J
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    .line 378
    .local v16, "then":J
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v23

    move/from16 v0, v23

    int-to-long v6, v0

    .line 379
    .local v6, "fudge":J
    sub-long v24, v12, v16

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(J)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v26, v26, v6

    cmp-long v23, v24, v26

    if-lez v23, :cond_5

    .line 380
    const-string v23, "verbose"

    invoke-static/range {v23 .. v23}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 381
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v24, "BADTIME failure"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    :cond_4
    const/16 v23, 0x12

    goto :goto_0

    .line 385
    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v23

    const/16 v24, 0x11

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    .line 388
    new-instance v11, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v11}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 389
    .local v11, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 390
    invoke-virtual {v11}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 391
    invoke-virtual/range {p4 .. p4}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 393
    .end local v11    # "out":Lorg/xbill/DNS/DNSOutput;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v23

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 394
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object v5

    .line 395
    .local v5, "header":[B
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v23

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Lorg/xbill/DNS/Header;->incCount(I)V

    .line 396
    invoke-virtual {v8, v5}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 398
    move-object/from16 v0, p1

    iget v0, v0, Lorg/xbill/DNS/Message;->tsigstart:I

    move/from16 v23, v0

    array-length v0, v5

    move/from16 v24, v0

    sub-int v9, v23, v24

    .line 399
    .local v9, "len":I
    array-length v0, v5

    move/from16 v23, v0

    move-object/from16 v0, p2

    move/from16 v1, v23

    invoke-virtual {v8, v0, v1, v9}, Lorg/xbill/DNS/utils/HMAC;->update([BII)V

    .line 401
    new-instance v11, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v11}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 402
    .restart local v11    # "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 403
    move-object/from16 v0, v22

    iget v0, v0, Lorg/xbill/DNS/TSIGRecord;->dclass:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 404
    move-object/from16 v0, v22

    iget-wide v0, v0, Lorg/xbill/DNS/TSIGRecord;->ttl:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 405
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getAlgorithm()Lorg/xbill/DNS/Name;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 406
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getTimeSigned()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v18, v24, v26

    .line 407
    .local v18, "time":J
    const/16 v23, 0x20

    shr-long v24, v18, v23

    move-wide/from16 v0, v24

    long-to-int v15, v0

    .line 408
    .local v15, "timeHigh":I
    const-wide v24, 0xffffffffL

    and-long v20, v18, v24

    .line 409
    .local v20, "timeLow":J
    invoke-virtual {v11, v15}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 410
    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 411
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getFudge()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 412
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getError()I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 413
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v23

    if-eqz v23, :cond_8

    .line 414
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 415
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getOther()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 420
    :goto_1
    invoke-virtual {v11}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lorg/xbill/DNS/utils/HMAC;->update([B)V

    .line 422
    invoke-virtual/range {v22 .. v22}, Lorg/xbill/DNS/TSIGRecord;->getSignature()[B

    move-result-object v14

    .line 423
    .local v14, "signature":[B
    invoke-virtual {v8}, Lorg/xbill/DNS/utils/HMAC;->digestLength()I

    move-result v4

    .line 424
    .local v4, "digestLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/xbill/DNS/TSIG;->digest:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "md5"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    const/16 v10, 0xa

    .line 426
    .local v10, "minDigestLength":I
    :goto_2
    array-length v0, v14

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v4, :cond_a

    .line 427
    const-string v23, "verbose"

    invoke-static/range {v23 .. v23}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 428
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v24, "BADSIG: signature too long"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 429
    :cond_7
    const/16 v23, 0x10

    goto/16 :goto_0

    .line 417
    .end local v4    # "digestLength":I
    .end local v10    # "minDigestLength":I
    .end local v14    # "signature":[B
    :cond_8
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    goto :goto_1

    .line 424
    .restart local v4    # "digestLength":I
    .restart local v14    # "signature":[B
    :cond_9
    div-int/lit8 v10, v4, 0x2

    goto :goto_2

    .line 430
    .restart local v10    # "minDigestLength":I
    :cond_a
    array-length v0, v14

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v0, v10, :cond_c

    .line 431
    const-string v23, "verbose"

    invoke-static/range {v23 .. v23}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 432
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v24, "BADSIG: signature too short"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    :cond_b
    const/16 v23, 0x10

    goto/16 :goto_0

    .line 434
    :cond_c
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v8, v14, v0}, Lorg/xbill/DNS/utils/HMAC;->verify([BZ)Z

    move-result v23

    if-nez v23, :cond_e

    .line 435
    const-string v23, "verbose"

    invoke-static/range {v23 .. v23}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 436
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v24, "BADSIG: signature verification"

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    :cond_d
    const/16 v23, 0x10

    goto/16 :goto_0

    .line 440
    :cond_e
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lorg/xbill/DNS/Message;->tsigState:I

    .line 441
    const/16 v23, 0x0

    goto/16 :goto_0
.end method

.method public verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I
    .locals 1
    .param p1, "m"    # Lorg/xbill/DNS/Message;
    .param p2, "b"    # [B
    .param p3, "old"    # Lorg/xbill/DNS/TSIGRecord;

    .prologue
    .line 459
    array-length v0, p2

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BILorg/xbill/DNS/TSIGRecord;)B

    move-result v0

    return v0
.end method
