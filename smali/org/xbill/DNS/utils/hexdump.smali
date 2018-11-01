.class public Lorg/xbill/DNS/utils/hexdump;
.super Ljava/lang/Object;
.source "hexdump.java"


# static fields
.field private static final hex:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/utils/hexdump;->hex:[C

    return-void
.end method

.method public static dump(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "b"    # [B

    .prologue
    .line 53
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lorg/xbill/DNS/utils/hexdump;->dump(Ljava/lang/String;[BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dump(Ljava/lang/String;[BII)Ljava/lang/String;
    .locals 10
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x9

    .line 24
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 26
    .local v4, "sb":Ljava/lang/StringBuffer;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "b"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    if-eqz p0, :cond_0

    .line 28
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    :cond_0
    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 32
    .local v3, "prefixlen":I
    add-int/lit8 v6, v3, 0x8

    and-int/lit8 v3, v6, -0x8

    .line 33
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 35
    rsub-int/lit8 v6, v3, 0x50

    div-int/lit8 v2, v6, 0x3

    .line 36
    .local v2, "perline":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 37
    if-eqz v0, :cond_1

    rem-int v6, v0, v2

    if-nez v6, :cond_1

    .line 38
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    div-int/lit8 v6, v3, 0x8

    if-ge v1, v6, :cond_1

    .line 40
    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    .end local v1    # "j":I
    :cond_1
    add-int v6, v0, p2

    aget-byte v6, p1, v6

    and-int/lit16 v5, v6, 0xff

    .line 43
    .local v5, "value":I
    sget-object v6, Lorg/xbill/DNS/utils/hexdump;->hex:[C

    shr-int/lit8 v7, v5, 0x4

    aget-char v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 44
    sget-object v6, Lorg/xbill/DNS/utils/hexdump;->hex:[C

    and-int/lit8 v7, v5, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 45
    const/16 v6, 0x20

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v5    # "value":I
    :cond_2
    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
