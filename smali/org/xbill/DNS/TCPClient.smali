.class final Lorg/xbill/DNS/TCPClient;
.super Lorg/xbill/DNS/Client;
.source "TCPClient.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/xbill/DNS/Client;-><init>(Ljava/nio/channels/SelectableChannel;J)V

    .line 15
    return-void
.end method

.method private _recv(I)[B
    .locals 11
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 76
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    .line 77
    .local v1, "channel":Ljava/nio/channels/SocketChannel;
    const/4 v3, 0x0

    .line 78
    .local v3, "nrecvd":I
    new-array v2, p1, [B

    .line 79
    .local v2, "data":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 82
    :cond_0
    :goto_0
    if-ge v3, p1, :cond_4

    .line 83
    :try_start_0
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 84
    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    int-to-long v4, v6

    .line 85
    .local v4, "n":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 86
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v4    # "n":J
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 97
    iget-object v7, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v7, v10}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    throw v6

    .line 87
    .restart local v4    # "n":J
    :cond_2
    long-to-int v6, v4

    add-int/2addr v3, v6

    .line 88
    if-ge v3, p1, :cond_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 90
    new-instance v6, Ljava/net/SocketTimeoutException;

    invoke-direct {v6}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v6

    .line 92
    .end local v4    # "n":J
    :cond_3
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v8, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    invoke-static {v6, v8, v9}, Lorg/xbill/DNS/TCPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    :cond_4
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 97
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6, v10}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 99
    :cond_5
    return-object v2
.end method

.method static sendrecv(Ljava/net/SocketAddress;Ljava/net/SocketAddress;[BJ)[B
    .locals 3
    .param p0, "local"    # Ljava/net/SocketAddress;
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .param p2, "data"    # [B
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lorg/xbill/DNS/TCPClient;

    invoke-direct {v0, p3, p4}, Lorg/xbill/DNS/TCPClient;-><init>(J)V

    .line 119
    .local v0, "client":Lorg/xbill/DNS/TCPClient;
    if-eqz p0, :cond_0

    .line 120
    :try_start_0
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/TCPClient;->bind(Ljava/net/SocketAddress;)V

    .line 121
    :cond_0
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/TCPClient;->connect(Ljava/net/SocketAddress;)V

    .line 122
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/TCPClient;->send([B)V

    .line 123
    invoke-virtual {v0}, Lorg/xbill/DNS/TCPClient;->recv()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 126
    invoke-virtual {v0}, Lorg/xbill/DNS/TCPClient;->cleanup()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lorg/xbill/DNS/TCPClient;->cleanup()V

    throw v1
.end method


# virtual methods
.method bind(Ljava/net/SocketAddress;)V
    .locals 2
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 20
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 21
    return-void
.end method

.method connect(Ljava/net/SocketAddress;)V
    .locals 5
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 25
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SocketChannel;

    .line 26
    .local v0, "channel":Ljava/nio/channels/SocketChannel;
    invoke-virtual {v0, p1}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 30
    :cond_2
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result v1

    if-nez v1, :cond_4

    .line 31
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 32
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v2, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    invoke-static {v1, v2, v3}, Lorg/xbill/DNS/TCPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 36
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    iget-object v2, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v2, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_3
    throw v1

    .line 36
    :cond_4
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1, v4}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    goto :goto_0
.end method

.method recv()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lorg/xbill/DNS/TCPClient;->_recv(I)[B

    move-result-object v0

    .line 105
    .local v0, "buf":[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int v3, v4, v5

    .line 106
    .local v3, "length":I
    invoke-direct {p0, v3}, Lorg/xbill/DNS/TCPClient;->_recv(I)[B

    move-result-object v2

    .line 107
    .local v2, "data":[B
    iget-object v4, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v4}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    .line 108
    .local v1, "channel":Ljava/nio/channels/SocketChannel;
    const-string v4, "TCP read"

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-static {v4, v5, v6, v2}, Lorg/xbill/DNS/TCPClient;->verboseLog(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    .line 110
    return-object v2
.end method

.method send([B)V
    .locals 12
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 43
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    .line 44
    .local v1, "channel":Ljava/nio/channels/SocketChannel;
    const-string v6, "TCP write"

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v8

    invoke-static {v6, v7, v8, p1}, Lorg/xbill/DNS/TCPClient;->verboseLog(Ljava/lang/String;Ljava/net/SocketAddress;Ljava/net/SocketAddress;[B)V

    .line 46
    new-array v2, v11, [B

    .line 47
    .local v2, "lengthArray":[B
    array-length v6, p1

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v10

    .line 48
    array-length v6, p1

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v2, v9

    .line 49
    new-array v0, v11, [Ljava/nio/ByteBuffer;

    .line 50
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v0, v10

    .line 51
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    aput-object v6, v0, v9

    .line 52
    const/4 v3, 0x0

    .line 53
    .local v3, "nsent":I
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 55
    :cond_0
    :goto_0
    :try_start_0
    array-length v6, p1

    add-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_4

    .line 56
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 57
    invoke-virtual {v1, v0}, Ljava/nio/channels/SocketChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    .line 58
    .local v4, "n":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    .line 59
    new-instance v6, Ljava/io/EOFException;

    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .end local v4    # "n":J
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 70
    iget-object v7, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v7, v10}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_1
    throw v6

    .line 60
    .restart local v4    # "n":J
    :cond_2
    long-to-int v6, v4

    add-int/2addr v3, v6

    .line 61
    :try_start_1
    array-length v6, p1

    add-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 63
    new-instance v6, Ljava/net/SocketTimeoutException;

    invoke-direct {v6}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v6

    .line 65
    .end local v4    # "n":J
    :cond_3
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    iget-wide v8, p0, Lorg/xbill/DNS/TCPClient;->endTime:J

    invoke-static {v6, v8, v9}, Lorg/xbill/DNS/TCPClient;->blockUntil(Ljava/nio/channels/SelectionKey;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    :cond_4
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 70
    iget-object v6, p0, Lorg/xbill/DNS/TCPClient;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v6, v10}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 72
    :cond_5
    return-void
.end method
