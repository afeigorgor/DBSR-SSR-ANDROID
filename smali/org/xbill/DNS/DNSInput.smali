.class public Lorg/xbill/DNS/DNSInput;
.super Ljava/lang/Object;
.source "DNSInput.java"


# instance fields
.field private array:[B

.field private end:I

.field private pos:I

.field private saved_end:I

.field private saved_pos:I


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "input"    # [B

    .prologue
    const/4 v1, -0x1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    .line 27
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    array-length v0, v0

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->end:I

    .line 28
    iput v1, p0, Lorg/xbill/DNS/DNSInput;->saved_pos:I

    .line 29
    iput v1, p0, Lorg/xbill/DNS/DNSInput;->saved_end:I

    .line 30
    return-void
.end method

.method private require(I)V
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 52
    new-instance v0, Lorg/xbill/DNS/WireParseException;

    const-string v1, "end of input"

    invoke-direct {v0, v1}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public clearActive()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    array-length v0, v0

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->end:I

    .line 78
    return-void
.end method

.method public current()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    return v0
.end method

.method public jump(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot jump past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iput p1, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    .line 116
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    array-length v0, v0

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->end:I

    .line 117
    return-void
.end method

.method public readByteArray([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0, p3}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 194
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    iget v0, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    .line 196
    return-void
.end method

.method public readByteArray()[B
    .locals 5

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    .line 220
    .local v0, "len":I
    new-array v1, v0, [B

    .line 221
    .local v1, "out":[B
    iget-object v2, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    iget v3, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget v2, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    .line 223
    return-object v1
.end method

.method public readByteArray(I)[B
    .locals 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 206
    new-array v0, p1, [B

    .line 207
    .local v0, "out":[B
    iget-object v1, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    iget v2, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    iget v1, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    .line 209
    return-object v0
.end method

.method public readCountedString()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 234
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 235
    iget-object v1, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    iget v2, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 236
    .local v0, "len":I
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v1

    return-object v1
.end method

.method public readU16()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 163
    iget-object v2, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    iget v3, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    aget-byte v2, v2, v3

    and-int/lit16 v0, v2, 0xff

    .line 164
    .local v0, "b1":I
    iget-object v2, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    iget v3, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    .line 165
    .local v1, "b2":I
    shl-int/lit8 v2, v0, 0x8

    add-int/2addr v2, v1

    return v2
.end method

.method public readU32()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 176
    iget-object v4, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    iget v5, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 177
    .local v0, "b1":I
    iget-object v4, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    iget v5, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v1, v4, 0xff

    .line 178
    .local v1, "b2":I
    iget-object v4, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    iget v5, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v2, v4, 0xff

    .line 179
    .local v2, "b3":I
    iget-object v4, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    iget v5, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    aget-byte v4, v4, v5

    and-int/lit16 v3, v4, 0xff

    .line 180
    .local v3, "b4":I
    int-to-long v4, v0

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    shl-int/lit8 v6, v1, 0x10

    int-to-long v6, v6

    add-long/2addr v4, v6

    shl-int/lit8 v6, v2, 0x8

    int-to-long v6, v6

    add-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    return-wide v4
.end method

.method public readU8()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/WireParseException;
        }
    .end annotation

    .prologue
    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSInput;->require(I)V

    .line 152
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public remaining()I
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lorg/xbill/DNS/DNSInput;->end:I

    iget v1, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public restore()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 135
    iget v0, p0, Lorg/xbill/DNS/DNSInput;->saved_pos:I

    if-gez v0, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no previous state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget v0, p0, Lorg/xbill/DNS/DNSInput;->saved_pos:I

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    .line 139
    iget v0, p0, Lorg/xbill/DNS/DNSInput;->saved_end:I

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->end:I

    .line 140
    iput v1, p0, Lorg/xbill/DNS/DNSInput;->saved_pos:I

    .line 141
    iput v1, p0, Lorg/xbill/DNS/DNSInput;->saved_end:I

    .line 142
    return-void
.end method

.method public restoreActive(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot set active region past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput p1, p0, Lorg/xbill/DNS/DNSInput;->end:I

    .line 101
    return-void
.end method

.method public save()V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->saved_pos:I

    .line 127
    iget v0, p0, Lorg/xbill/DNS/DNSInput;->end:I

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->saved_end:I

    .line 128
    return-void
.end method

.method public saveActive()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/xbill/DNS/DNSInput;->end:I

    return v0
.end method

.method public setActive(I)V
    .locals 2
    .param p1, "len"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lorg/xbill/DNS/DNSInput;->array:[B

    array-length v0, v0

    iget v1, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot set active region past end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    iget v0, p0, Lorg/xbill/DNS/DNSInput;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/xbill/DNS/DNSInput;->end:I

    .line 69
    return-void
.end method
