.class public Lorg/xbill/DNS/ISDNRecord;
.super Lorg/xbill/DNS/Record;
.source "ISDNRecord.java"


# instance fields
.field private address:[B

.field private subAddress:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lorg/xbill/DNS/ISDNRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/ISDNRecord;-><init>()V

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    .line 49
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    .line 51
    :cond_0
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 97
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/ISDNRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v1, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    if-eqz v1, :cond_0

    .line 99
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v1, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    invoke-static {v1, v2}, Lorg/xbill/DNS/ISDNRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->address:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 90
    iget-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/xbill/DNS/ISDNRecord;->subAddress:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 92
    :cond_0
    return-void
.end method
