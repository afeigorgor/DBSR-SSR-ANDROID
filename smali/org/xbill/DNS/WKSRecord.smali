.class public Lorg/xbill/DNS/WKSRecord;
.super Lorg/xbill/DNS/Record;
.source "WKSRecord.java"


# instance fields
.field private address:[B

.field private protocol:I

.field private services:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 581
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 585
    new-instance v0, Lorg/xbill/DNS/WKSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/WKSRecord;-><init>()V

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 7
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 613
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v5

    iput-object v5, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    .line 614
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v5

    iput v5, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    .line 615
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    .line 616
    .local v0, "array":[B
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v3, "list":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 618
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v5, 0x8

    if-ge v2, v5, :cond_1

    .line 619
    aget-byte v5, v0, v1

    and-int/lit16 v4, v5, 0xff

    .line 620
    .local v4, "octet":I
    const/4 v5, 0x1

    rsub-int/lit8 v6, v2, 0x7

    shl-int/2addr v5, v6

    and-int/2addr v5, v4

    if-eqz v5, :cond_0

    .line 621
    new-instance v5, Ljava/lang/Integer;

    mul-int/lit8 v6, v1, 0x8

    add-int/2addr v6, v2

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 617
    .end local v4    # "octet":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 625
    .end local v2    # "j":I
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    .line 626
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 627
    iget-object v6, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v6, v1

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 629
    :cond_3
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 668
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 669
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-static {v2}, Lorg/xbill/DNS/Address;->toDottedQuad([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 671
    iget v2, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 672
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 673
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 8
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 708
    iget-object v4, p0, Lorg/xbill/DNS/WKSRecord;->address:[B

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 709
    iget v4, p0, Lorg/xbill/DNS/WKSRecord;->protocol:I

    invoke-virtual {p1, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 710
    iget-object v4, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    iget-object v5, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v1, v4, v5

    .line 711
    .local v1, "highestPort":I
    div-int/lit8 v4, v1, 0x8

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 712
    .local v0, "array":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 713
    iget-object v4, p0, Lorg/xbill/DNS/WKSRecord;->services:[I

    aget v3, v4, v2

    .line 714
    .local v3, "port":I
    div-int/lit8 v4, v3, 0x8

    aget-byte v5, v0, v4

    const/4 v6, 0x1

    rem-int/lit8 v7, v3, 0x8

    rsub-int/lit8 v7, v7, 0x7

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 712
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 716
    .end local v3    # "port":I
    :cond_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 717
    return-void
.end method
