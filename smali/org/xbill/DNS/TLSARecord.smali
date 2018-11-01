.class public Lorg/xbill/DNS/TLSARecord;
.super Lorg/xbill/DNS/Record;
.source "TLSARecord.java"


# instance fields
.field private certificateAssociationData:[B

.field private certificateUsage:I

.field private matchingType:I

.field private selector:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lorg/xbill/DNS/TLSARecord;

    invoke-direct {v0}, Lorg/xbill/DNS/TLSARecord;-><init>()V

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
    .line 95
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateUsage:I

    .line 96
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->selector:I

    .line 97
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/TLSARecord;->matchingType:I

    .line 98
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateAssociationData:[B

    .line 99
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/TLSARecord;->certificateUsage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget v1, p0, Lorg/xbill/DNS/TLSARecord;->selector:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 116
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    iget v1, p0, Lorg/xbill/DNS/TLSARecord;->matchingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 118
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    iget-object v1, p0, Lorg/xbill/DNS/TLSARecord;->certificateAssociationData:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
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
    .line 126
    iget v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateUsage:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 127
    iget v0, p0, Lorg/xbill/DNS/TLSARecord;->selector:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 128
    iget v0, p0, Lorg/xbill/DNS/TLSARecord;->matchingType:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 129
    iget-object v0, p0, Lorg/xbill/DNS/TLSARecord;->certificateAssociationData:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 130
    return-void
.end method
