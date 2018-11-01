.class public Lorg/xbill/DNS/NXTRecord;
.super Lorg/xbill/DNS/Record;
.source "NXTRecord.java"


# instance fields
.field private bitmap:Ljava/util/BitSet;

.field private next:Lorg/xbill/DNS/Name;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/xbill/DNS/NXTRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NXTRecord;-><init>()V

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 6
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    new-instance v4, Lorg/xbill/DNS/Name;

    invoke-direct {v4, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v4, p0, Lorg/xbill/DNS/NXTRecord;->next:Lorg/xbill/DNS/Name;

    .line 46
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iput-object v4, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    .line 47
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    .line 48
    .local v0, "bitmapLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 49
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v3

    .line 50
    .local v3, "t":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    .line 51
    const/4 v4, 0x1

    rsub-int/lit8 v5, v2, 0x7

    shl-int/2addr v4, v5

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    .line 52
    iget-object v4, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    mul-int/lit8 v5, v1, 0x8

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 50
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 48
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "j":I
    .end local v3    # "t":I
    :cond_2
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->next:Lorg/xbill/DNS/Name;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 77
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->length()I

    move-result v1

    .line 78
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":S
    :goto_0
    if-ge v0, v1, :cond_1

    .line 79
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-static {v0}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :cond_0
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 5
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 100
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->next:Lorg/xbill/DNS/Name;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 101
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->length()I

    move-result v1

    .line 102
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 103
    iget-object v3, p0, Lorg/xbill/DNS/NXTRecord;->bitmap:Ljava/util/BitSet;

    invoke-virtual {v3, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    rem-int/lit8 v4, v0, 0x8

    rsub-int/lit8 v4, v4, 0x7

    shl-int/2addr v3, v4

    :goto_1
    or-int/2addr v2, v3

    .line 104
    rem-int/lit8 v3, v0, 0x8

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 106
    const/4 v2, 0x0

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 109
    :cond_3
    return-void
.end method
