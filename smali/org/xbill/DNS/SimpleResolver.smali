.class public Lorg/xbill/DNS/SimpleResolver;
.super Ljava/lang/Object;
.source "SimpleResolver.java"

# interfaces
.implements Lorg/xbill/DNS/Resolver;


# static fields
.field private static defaultResolver:Ljava/lang/String;

.field private static uniqueID:I


# instance fields
.field private address:Ljava/net/InetSocketAddress;

.field private ignoreTruncation:Z

.field private localAddress:Ljava/net/InetSocketAddress;

.field private queryOPT:Lorg/xbill/DNS/OPTRecord;

.field private timeoutValue:J

.field private tsig:Lorg/xbill/DNS/TSIG;

.field private useTCP:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "localhost"

    sput-object v0, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput v0, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    .line 47
    if-nez p1, :cond_0

    .line 48
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ResolverConfig;->server()Ljava/lang/String;

    move-result-object p1

    .line 49
    if-nez p1, :cond_0

    .line 50
    sget-object p1, Lorg/xbill/DNS/SimpleResolver;->defaultResolver:Ljava/lang/String;

    .line 53
    :cond_0
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 57
    .local v0, "addr":Ljava/net/InetAddress;
    :goto_0
    new-instance v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0x35

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v1, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    .line 58
    return-void

    .line 56
    .end local v0    # "addr":Ljava/net/InetAddress;
    :cond_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .restart local v0    # "addr":Ljava/net/InetAddress;
    goto :goto_0
.end method

.method private applyEDNS(Lorg/xbill/DNS/Message;)V
    .locals 2
    .param p1, "query"    # Lorg/xbill/DNS/Message;

    .prologue
    .line 205
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver;->queryOPT:Lorg/xbill/DNS/OPTRecord;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_0
.end method

.method private maxUDPSize(Lorg/xbill/DNS/Message;)I
    .locals 2
    .param p1, "query"    # Lorg/xbill/DNS/Message;

    .prologue
    .line 212
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    .line 213
    .local v0, "opt":Lorg/xbill/DNS/OPTRecord;
    if-nez v0, :cond_0

    .line 214
    const/16 v1, 0x200

    .line 216
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result v1

    goto :goto_0
.end method

.method private parseMessage([B)Lorg/xbill/DNS/Message;
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 183
    :try_start_0
    new-instance v1, Lorg/xbill/DNS/Message;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/Message;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    :cond_0
    instance-of v1, v0, Lorg/xbill/DNS/WireParseException;

    if-nez v1, :cond_1

    .line 189
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    .end local v0    # "e":Ljava/io/IOException;
    const-string v1, "Error parsing message"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    .line 190
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_1
    check-cast v0, Lorg/xbill/DNS/WireParseException;

    .end local v0    # "e":Ljava/io/IOException;
    throw v0
.end method

.method private sendAXFR(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 11
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 330
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 331
    .local v2, "qname":Lorg/xbill/DNS/Name;
    iget-object v6, p0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    invoke-static {v2, v6, v7}, Lorg/xbill/DNS/ZoneTransferIn;->newAXFR(Lorg/xbill/DNS/Name;Ljava/net/SocketAddress;Lorg/xbill/DNS/TSIG;)Lorg/xbill/DNS/ZoneTransferIn;

    move-result-object v5

    .line 332
    .local v5, "xfrin":Lorg/xbill/DNS/ZoneTransferIn;
    invoke-virtual {p0}, Lorg/xbill/DNS/SimpleResolver;->getTimeout()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/ZoneTransferIn;->setTimeout(I)V

    .line 333
    iget-object v6, p0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/ZoneTransferIn;->setLocalAddress(Ljava/net/SocketAddress;)V

    .line 335
    :try_start_0
    invoke-virtual {v5}, Lorg/xbill/DNS/ZoneTransferIn;->run()Ljava/util/List;
    :try_end_0
    .catch Lorg/xbill/DNS/ZoneTransferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    invoke-virtual {v5}, Lorg/xbill/DNS/ZoneTransferIn;->getAXFR()Ljava/util/List;

    move-result-object v3

    .line 341
    .local v3, "records":Ljava/util/List;
    new-instance v4, Lorg/xbill/DNS/Message;

    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/Header;->getID()I

    move-result v6

    invoke-direct {v4, v6}, Lorg/xbill/DNS/Message;-><init>(I)V

    .line 342
    .local v4, "response":Lorg/xbill/DNS/Message;
    invoke-virtual {v4}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 343
    invoke-virtual {v4}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v6

    invoke-virtual {v6, v10}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 344
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    .line 345
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 346
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 347
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xbill/DNS/Record;

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    goto :goto_0

    .line 337
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v3    # "records":Ljava/util/List;
    .end local v4    # "response":Lorg/xbill/DNS/Message;
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Lorg/xbill/DNS/ZoneTransferException;
    new-instance v6, Lorg/xbill/DNS/WireParseException;

    invoke-virtual {v0}, Lorg/xbill/DNS/ZoneTransferException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 348
    .end local v0    # "e":Lorg/xbill/DNS/ZoneTransferException;
    .restart local v1    # "it":Ljava/util/Iterator;
    .restart local v3    # "records":Ljava/util/List;
    .restart local v4    # "response":Lorg/xbill/DNS/Message;
    :cond_0
    return-object v4
.end method

.method private verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIG;)V
    .locals 4
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .param p2, "response"    # Lorg/xbill/DNS/Message;
    .param p3, "b"    # [B
    .param p4, "tsig"    # Lorg/xbill/DNS/TSIG;

    .prologue
    .line 196
    if-nez p4, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getTSIG()Lorg/xbill/DNS/TSIGRecord;

    move-result-object v1

    invoke-virtual {p4, p2, p3, v1}, Lorg/xbill/DNS/TSIG;->verify(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIGRecord;)I

    move-result v0

    .line 199
    .local v0, "error":I
    const-string v1, "verbose"

    invoke-static {v1}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "TSIG verify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->TSIGstring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method getTimeout()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    return-wide v0
.end method

.method public send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 18
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    const-string v2, "verbose"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "Sending to "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v15}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v15, ":"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v15}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 233
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getOpcode()I

    move-result v2

    if-nez v2, :cond_2

    .line 234
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v12

    .line 235
    .local v12, "question":Lorg/xbill/DNS/Record;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    const/16 v3, 0xfc

    if-ne v2, v3, :cond_2

    .line 236
    invoke-direct/range {p0 .. p1}, Lorg/xbill/DNS/SimpleResolver;->sendAXFR(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v13

    .line 295
    .end local v12    # "question":Lorg/xbill/DNS/Record;
    :cond_1
    return-object v13

    .line 239
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->clone()Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "query":Lorg/xbill/DNS/Message;
    check-cast p1, Lorg/xbill/DNS/Message;

    .line 240
    .restart local p1    # "query":Lorg/xbill/DNS/Message;
    invoke-direct/range {p0 .. p1}, Lorg/xbill/DNS/SimpleResolver;->applyEDNS(Lorg/xbill/DNS/Message;)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    if-eqz v2, :cond_3

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lorg/xbill/DNS/TSIG;->apply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/TSIGRecord;)V

    .line 244
    :cond_3
    const v2, 0xffff

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Message;->toWire(I)[B

    move-result-object v4

    .line 245
    .local v4, "out":[B
    invoke-direct/range {p0 .. p1}, Lorg/xbill/DNS/SimpleResolver;->maxUDPSize(Lorg/xbill/DNS/Message;)I

    move-result v5

    .line 246
    .local v5, "udpSize":I
    const/4 v14, 0x0

    .line 247
    .local v14, "tcp":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    move-wide/from16 v16, v0

    add-long v6, v2, v16

    .line 251
    .local v6, "endTime":J
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/xbill/DNS/SimpleResolver;->useTCP:Z

    if-nez v2, :cond_5

    array-length v2, v4

    if-le v2, v5, :cond_6

    .line 252
    :cond_5
    const/4 v14, 0x1

    .line 253
    :cond_6
    if-eqz v14, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-static {v2, v3, v4, v6, v7}, Lorg/xbill/DNS/TCPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B

    move-result-object v10

    .line 263
    .local v10, "in":[B
    :goto_1
    array-length v2, v10

    const/16 v3, 0xc

    if-ge v2, v3, :cond_8

    .line 264
    new-instance v2, Lorg/xbill/DNS/WireParseException;

    const-string v3, "invalid DNS header - too short"

    invoke-direct {v2, v3}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    .end local v10    # "in":[B
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/SimpleResolver;->localAddress:Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/xbill/DNS/SimpleResolver;->address:Ljava/net/InetSocketAddress;

    invoke-static/range {v2 .. v7}, Lorg/xbill/DNS/UDPClient;->sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BIJ)[B

    move-result-object v10

    .restart local v10    # "in":[B
    goto :goto_1

    .line 273
    :cond_8
    const/4 v2, 0x0

    aget-byte v2, v10, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    const/4 v3, 0x1

    aget-byte v3, v10, v3

    and-int/lit16 v3, v3, 0xff

    add-int v9, v2, v3

    .line 274
    .local v9, "id":I
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v11

    .line 275
    .local v11, "qid":I
    if-eq v9, v11, :cond_a

    .line 276
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "invalid message id: expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "; got id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 278
    .local v8, "error":Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 279
    new-instance v2, Lorg/xbill/DNS/WireParseException;

    invoke-direct {v2, v8}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_9
    const-string v2, "verbose"

    invoke-static {v2}, Lorg/xbill/DNS/Options;->check(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    .end local v8    # "error":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/xbill/DNS/SimpleResolver;->parseMessage([B)Lorg/xbill/DNS/Message;

    move-result-object v13

    .line 288
    .local v13, "response":Lorg/xbill/DNS/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/xbill/DNS/SimpleResolver;->tsig:Lorg/xbill/DNS/TSIG;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v10, v2}, Lorg/xbill/DNS/SimpleResolver;->verifyTSIG(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/TSIG;)V

    .line 289
    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/xbill/DNS/SimpleResolver;->ignoreTruncation:Z

    if-nez v2, :cond_1

    invoke-virtual {v13}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    const/4 v14, 0x1

    .line 293
    goto/16 :goto_0
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .locals 7
    .param p1, "query"    # Lorg/xbill/DNS/Message;
    .param p2, "listener"    # Lorg/xbill/DNS/ResolverListener;

    .prologue
    .line 311
    monitor-enter p0

    .line 312
    :try_start_0
    new-instance v0, Ljava/lang/Integer;

    sget v5, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lorg/xbill/DNS/SimpleResolver;->uniqueID:I

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 313
    .local v0, "id":Ljava/lang/Integer;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    .line 316
    .local v3, "question":Lorg/xbill/DNS/Record;
    if-eqz v3, :cond_0

    .line 317
    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "qname":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "name":Ljava/lang/String;
    new-instance v4, Lorg/xbill/DNS/ResolveThread;

    invoke-direct {v4, p0, p1, v0, p2}, Lorg/xbill/DNS/ResolveThread;-><init>(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;Ljava/lang/Object;Lorg/xbill/DNS/ResolverListener;)V

    .line 322
    .local v4, "thread":Ljava/lang/Thread;
    invoke-virtual {v4, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 323
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 324
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 325
    return-object v0

    .line 313
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "qname":Ljava/lang/String;
    .end local v3    # "question":Lorg/xbill/DNS/Record;
    .end local v4    # "thread":Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 319
    .restart local v0    # "id":Ljava/lang/Integer;
    .restart local v3    # "question":Lorg/xbill/DNS/Record;
    :cond_0
    const-string v2, "(none)"

    .restart local v2    # "qname":Ljava/lang/String;
    goto :goto_0
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "secs"    # I

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/SimpleResolver;->setTimeout(II)V

    .line 173
    return-void
.end method

.method public setTimeout(II)V
    .locals 4
    .param p1, "secs"    # I
    .param p2, "msecs"    # I

    .prologue
    .line 167
    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/SimpleResolver;->timeoutValue:J

    .line 168
    return-void
.end method
