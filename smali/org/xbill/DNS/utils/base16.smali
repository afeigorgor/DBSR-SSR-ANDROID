.class public Lorg/xbill/DNS/utils/base16;
.super Ljava/lang/Object;
.source "base16.java"


# direct methods
.method public static toString([B)Ljava/lang/String;
    .locals 7
    .param p0, "b"    # [B

    .prologue
    .line 28
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 30
    .local v3, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_0

    .line 31
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    int-to-short v4, v5

    .line 32
    .local v4, "value":S
    shr-int/lit8 v5, v4, 0x4

    int-to-byte v0, v5

    .line 33
    .local v0, "high":B
    and-int/lit8 v5, v4, 0xf

    int-to-byte v2, v5

    .line 34
    .local v2, "low":B
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 35
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "high":B
    .end local v2    # "low":B
    .end local v4    # "value":S
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    return-object v5
.end method
