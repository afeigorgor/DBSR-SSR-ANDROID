.class public Lorg/xbill/DNS/NSEC3PARAMRecord;
.super Lorg/xbill/DNS/Record;
.source "NSEC3PARAMRecord.java"


# instance fields
.field private flags:I

.field private hashAlg:I

.field private iterations:I

.field private salt:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/xbill/DNS/NSEC3PARAMRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NSEC3PARAMRecord;-><init>()V

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 2
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    .line 69
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    .line 70
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    iput v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    .line 72
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 73
    .local v0, "salt_length":I
    if-lez v0, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    goto :goto_0
.end method

.method rrToString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 113
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    iget v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    iget v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    if-nez v1, :cond_0

    .line 121
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 81
    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->hashAlg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 82
    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->flags:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 83
    iget v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->iterations:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 85
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 87
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3PARAMRecord;->salt:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    goto :goto_0
.end method
