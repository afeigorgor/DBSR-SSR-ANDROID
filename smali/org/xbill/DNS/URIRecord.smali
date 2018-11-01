.class public Lorg/xbill/DNS/URIRecord;
.super Lorg/xbill/DNS/Record;
.source "URIRecord.java"


# instance fields
.field private priority:I

.field private target:[B

.field private weight:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/xbill/DNS/URIRecord;->target:[B

    .line 24
    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lorg/xbill/DNS/URIRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/URIRecord;-><init>()V

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
    .line 56
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/URIRecord;->priority:I

    .line 57
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/URIRecord;->weight:I

    .line 58
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/URIRecord;->target:[B

    .line 59
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/URIRecord;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget v2, p0, Lorg/xbill/DNS/URIRecord;->weight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    iget-object v1, p0, Lorg/xbill/DNS/URIRecord;->target:[B

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/xbill/DNS/URIRecord;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
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
    .line 103
    iget v0, p0, Lorg/xbill/DNS/URIRecord;->priority:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 104
    iget v0, p0, Lorg/xbill/DNS/URIRecord;->weight:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 105
    iget-object v0, p0, Lorg/xbill/DNS/URIRecord;->target:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    .line 106
    return-void
.end method
