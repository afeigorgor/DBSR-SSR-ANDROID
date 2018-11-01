.class public final Lorg/xbill/DNS/TTL;
.super Ljava/lang/Object;
.source "TTL.java"


# direct methods
.method static check(J)V
    .locals 2
    .param p0, "i"    # J

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    .line 23
    :cond_0
    new-instance v0, Lorg/xbill/DNS/InvalidTTLException;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/InvalidTTLException;-><init>(J)V

    throw v0

    .line 24
    :cond_1
    return-void
.end method

.method public static format(J)Ljava/lang/String;
    .locals 14
    .param p0, "ttl"    # J

    .prologue
    .line 88
    invoke-static {p0, p1}, Lorg/xbill/DNS/TTL;->check(J)V

    .line 89
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 91
    .local v6, "sb":Ljava/lang/StringBuffer;
    const-wide/16 v12, 0x3c

    rem-long v8, p0, v12

    .line 92
    .local v8, "secs":J
    const-wide/16 v12, 0x3c

    div-long/2addr p0, v12

    .line 93
    const-wide/16 v12, 0x3c

    rem-long v4, p0, v12

    .line 94
    .local v4, "mins":J
    const-wide/16 v12, 0x3c

    div-long/2addr p0, v12

    .line 95
    const-wide/16 v12, 0x18

    rem-long v2, p0, v12

    .line 96
    .local v2, "hours":J
    const-wide/16 v12, 0x18

    div-long/2addr p0, v12

    .line 97
    const-wide/16 v12, 0x7

    rem-long v0, p0, v12

    .line 98
    .local v0, "days":J
    const-wide/16 v12, 0x7

    div-long/2addr p0, v12

    .line 99
    move-wide v10, p0

    .line 100
    .local v10, "weeks":J
    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-lez v7, :cond_0

    .line 101
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v12, "W"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v7, v0, v12

    if-lez v7, :cond_1

    .line 103
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v12, "D"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_1
    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-lez v7, :cond_2

    .line 105
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v12, "H"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-lez v7, :cond_3

    .line 107
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v12, "M"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_3
    const-wide/16 v12, 0x0

    cmp-long v7, v8, v12

    if-gtz v7, :cond_4

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-nez v7, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v7, v0, v12

    if-nez v7, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-nez v7, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-nez v7, :cond_5

    .line 109
    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v12, "S"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
