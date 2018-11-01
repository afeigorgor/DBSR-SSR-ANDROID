.class public Lorg/xbill/DNS/utils/base32;
.super Ljava/lang/Object;
.source "base32.java"


# instance fields
.field private alphabet:Ljava/lang/String;

.field private lowercase:Z

.field private padding:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "alphabet"    # Ljava/lang/String;
    .param p2, "padding"    # Z
    .param p3, "lowercase"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Lorg/xbill/DNS/utils/base32;->padding:Z

    .line 40
    iput-boolean p3, p0, Lorg/xbill/DNS/utils/base32;->lowercase:Z

    .line 41
    return-void
.end method

.method private static blockLenToPadding(I)I
    .locals 1
    .param p0, "blocklen"    # I

    .prologue
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 57
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 47
    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    .line 49
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 51
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 53
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public toString([B)Ljava/lang/String;
    .locals 11
    .param p1, "b"    # [B

    .prologue
    .line 87
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 89
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, p1

    add-int/lit8 v8, v8, 0x4

    div-int/lit8 v8, v8, 0x5

    if-ge v2, v8, :cond_5

    .line 90
    const/4 v8, 0x5

    new-array v6, v8, [S

    .line 91
    .local v6, "s":[S
    const/16 v8, 0x8

    new-array v7, v8, [I

    .line 93
    .local v7, "t":[I
    const/4 v0, 0x5

    .line 94
    .local v0, "blocklen":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/4 v8, 0x5

    if-ge v3, v8, :cond_1

    .line 95
    mul-int/lit8 v8, v2, 0x5

    add-int/2addr v8, v3

    array-length v9, p1

    if-ge v8, v9, :cond_0

    .line 96
    mul-int/lit8 v8, v2, 0x5

    add-int/2addr v8, v3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    aput-short v8, v6, v3

    .line 94
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98
    :cond_0
    const/4 v8, 0x0

    aput-short v8, v6, v3

    .line 99
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 102
    :cond_1
    invoke-static {v0}, Lorg/xbill/DNS/utils/base32;->blockLenToPadding(I)I

    move-result v5

    .line 107
    .local v5, "padlen":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-short v9, v6, v9

    shr-int/lit8 v9, v9, 0x3

    and-int/lit8 v9, v9, 0x1f

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 109
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-short v9, v6, v9

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x2

    const/4 v10, 0x1

    aget-short v10, v6, v10

    shr-int/lit8 v10, v10, 0x6

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 111
    const/4 v8, 0x2

    const/4 v9, 0x1

    aget-short v9, v6, v9

    shr-int/lit8 v9, v9, 0x1

    and-int/lit8 v9, v9, 0x1f

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 113
    const/4 v8, 0x3

    const/4 v9, 0x1

    aget-short v9, v6, v9

    and-int/lit8 v9, v9, 0x1

    shl-int/lit8 v9, v9, 0x4

    const/4 v10, 0x2

    aget-short v10, v6, v10

    shr-int/lit8 v10, v10, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 115
    const/4 v8, 0x4

    const/4 v9, 0x2

    aget-short v9, v6, v9

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x1

    const/4 v10, 0x3

    aget-short v10, v6, v10

    shr-int/lit8 v10, v10, 0x7

    and-int/lit8 v10, v10, 0x1

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 117
    const/4 v8, 0x5

    const/4 v9, 0x3

    aget-short v9, v6, v9

    shr-int/lit8 v9, v9, 0x2

    and-int/lit8 v9, v9, 0x1f

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 119
    const/4 v8, 0x6

    const/4 v9, 0x3

    aget-short v9, v6, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x3

    const/4 v10, 0x4

    aget-short v10, v6, v10

    shr-int/lit8 v10, v10, 0x5

    and-int/lit8 v10, v10, 0x7

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 121
    const/4 v8, 0x7

    const/4 v9, 0x4

    aget-short v9, v6, v9

    and-int/lit8 v9, v9, 0x1f

    int-to-byte v9, v9

    aput v9, v7, v8

    .line 124
    const/4 v3, 0x0

    :goto_3
    array-length v8, v7

    sub-int/2addr v8, v5

    if-ge v3, v8, :cond_3

    .line 125
    iget-object v8, p0, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    aget v9, v7, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 126
    .local v1, "c":C
    iget-boolean v8, p0, Lorg/xbill/DNS/utils/base32;->lowercase:Z

    if-eqz v8, :cond_2

    .line 127
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 128
    :cond_2
    invoke-virtual {v4, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 132
    .end local v1    # "c":C
    :cond_3
    iget-boolean v8, p0, Lorg/xbill/DNS/utils/base32;->padding:Z

    if-eqz v8, :cond_4

    .line 133
    array-length v8, v7

    sub-int v3, v8, v5

    :goto_4
    array-length v8, v7

    if-ge v3, v8, :cond_4

    .line 134
    const/16 v8, 0x3d

    invoke-virtual {v4, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 89
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 138
    .end local v0    # "blocklen":I
    .end local v3    # "j":I
    .end local v5    # "padlen":I
    .end local v6    # "s":[S
    .end local v7    # "t":[I
    :cond_5
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    return-object v8
.end method
