.class public final Lorg/xbill/DNS/Address;
.super Ljava/lang/Object;
.source "Address.java"


# direct methods
.method public static addressLength(I)I
    .locals 2
    .param p0, "family"    # I

    .prologue
    .line 385
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 386
    const/4 v0, 0x4

    .line 388
    :goto_0
    return v0

    .line 387
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 388
    const/16 v0, 0x10

    goto :goto_0

    .line 389
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static familyOf(Ljava/net/InetAddress;)I
    .locals 2
    .param p0, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 371
    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    .line 373
    :cond_0
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 374
    const/4 v0, 0x2

    goto :goto_0

    .line 375
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown address family"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toDottedQuad([B)Ljava/lang/String;
    .locals 2
    .param p0, "addr"    # [B

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 9
    .param p0, "address"    # Ljava/net/InetAddress;
    .param p1, "maskLength"    # I

    .prologue
    .line 401
    invoke-static {p0}, Lorg/xbill/DNS/Address;->familyOf(Ljava/net/InetAddress;)I

    move-result v3

    .line 402
    .local v3, "family":I
    invoke-static {v3}, Lorg/xbill/DNS/Address;->addressLength(I)I

    move-result v7

    mul-int/lit8 v6, v7, 0x8

    .line 403
    .local v6, "maxMaskLength":I
    if-ltz p1, :cond_0

    if-le p1, v6, :cond_1

    .line 404
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid mask length"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 405
    :cond_1
    if-ne p1, v6, :cond_2

    .line 416
    .end local p0    # "address":Ljava/net/InetAddress;
    :goto_0
    return-object p0

    .line 407
    .restart local p0    # "address":Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 408
    .local v1, "bytes":[B
    div-int/lit8 v7, p1, 0x8

    add-int/lit8 v4, v7, 0x1

    .local v4, "i":I
    :goto_1
    array-length v7, v1

    if-ge v4, v7, :cond_3

    .line 409
    const/4 v7, 0x0

    aput-byte v7, v1, v4

    .line 408
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 410
    :cond_3
    rem-int/lit8 v5, p1, 0x8

    .line 411
    .local v5, "maskBits":I
    const/4 v0, 0x0

    .line 412
    .local v0, "bitmask":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_4

    .line 413
    const/4 v7, 0x1

    rsub-int/lit8 v8, v4, 0x7

    shl-int/2addr v7, v8

    or-int/2addr v0, v7

    .line 412
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 414
    :cond_4
    div-int/lit8 v7, p1, 0x8

    aget-byte v8, v1, v7

    and-int/2addr v8, v0

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 416
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 417
    :catch_0
    move-exception v2

    .line 418
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "invalid address"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
