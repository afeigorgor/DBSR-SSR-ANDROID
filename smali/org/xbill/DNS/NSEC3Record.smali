.class public Lorg/xbill/DNS/NSEC3Record;
.super Lorg/xbill/DNS/Record;
.source "NSEC3Record.java"


# static fields
.field private static final b32:Lorg/xbill/DNS/utils/base32;


# instance fields
.field private flags:I

.field private hashAlg:I

.field private iterations:I

.field private next:[B

.field private salt:[B

.field private types:Lorg/xbill/DNS/TypeBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v0, Lorg/xbill/DNS/utils/base32;

    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUV="

    invoke-direct {v0, v1, v2, v2}, Lorg/xbill/DNS/utils/base32;-><init>(Ljava/lang/String;ZZ)V

    sput-object v0, Lorg/xbill/DNS/NSEC3Record;->b32:Lorg/xbill/DNS/utils/base32;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lorg/xbill/DNS/NSEC3Record;

    invoke-direct {v0}, Lorg/xbill/DNS/NSEC3Record;-><init>()V

    return-object v0
.end method

.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 3
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    .line 106
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    .line 107
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v2

    iput v2, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    .line 109
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    .line 110
    .local v1, "salt_length":I
    if-lez v1, :cond_0

    .line 111
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    .line 115
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    .line 116
    .local v0, "next_length":I
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v2

    iput-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    .line 117
    new-instance v2, Lorg/xbill/DNS/TypeBitmap;

    invoke-direct {v2, p1}, Lorg/xbill/DNS/TypeBitmap;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    .line 118
    return-void

    .line 113
    .end local v0    # "next_length":I
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    goto :goto_0
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    iget v1, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    if-nez v1, :cond_1

    .line 168
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 171
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    sget-object v1, Lorg/xbill/DNS/NSEC3Record;->b32:Lorg/xbill/DNS/utils/base32;

    iget-object v2, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/utils/base32;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v1}, Lorg/xbill/DNS/TypeBitmap;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 176
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v1}, Lorg/xbill/DNS/TypeBitmap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 170
    :cond_1
    iget-object v1, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

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
    .line 122
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->hashAlg:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 123
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->flags:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 124
    iget v0, p0, Lorg/xbill/DNS/NSEC3Record;->iterations:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 126
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 128
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->salt:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 132
    :goto_0
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 133
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->next:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 134
    iget-object v0, p0, Lorg/xbill/DNS/NSEC3Record;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/TypeBitmap;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 135
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    goto :goto_0
.end method
