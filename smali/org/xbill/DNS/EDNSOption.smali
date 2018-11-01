.class public abstract Lorg/xbill/DNS/EDNSOption;
.super Ljava/lang/Object;
.source "EDNSOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/EDNSOption$Code;
    }
.end annotation


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "code"

    invoke-static {v0, p1}, Lorg/xbill/DNS/Record;->checkU16(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/EDNSOption;->code:I

    .line 66
    return-void
.end method

.method static fromWire(Lorg/xbill/DNS/DNSInput;)Lorg/xbill/DNS/EDNSOption;
    .locals 6
    .param p0, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    .line 121
    .local v0, "code":I
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v1

    .line 122
    .local v1, "length":I
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 123
    new-instance v4, Lorg/xbill/DNS/WireParseException;

    const-string v5, "truncated option"

    invoke-direct {v4, v5}, Lorg/xbill/DNS/WireParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->saveActive()I

    move-result v3

    .line 125
    .local v3, "save":I
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/DNSInput;->setActive(I)V

    .line 127
    sparse-switch v0, :sswitch_data_0

    .line 135
    new-instance v2, Lorg/xbill/DNS/GenericEDNSOption;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/GenericEDNSOption;-><init>(I)V

    .line 138
    .local v2, "option":Lorg/xbill/DNS/EDNSOption;
    :goto_0
    invoke-virtual {v2, p0}, Lorg/xbill/DNS/EDNSOption;->optionFromWire(Lorg/xbill/DNS/DNSInput;)V

    .line 139
    invoke-virtual {p0, v3}, Lorg/xbill/DNS/DNSInput;->restoreActive(I)V

    .line 141
    return-object v2

    .line 129
    .end local v2    # "option":Lorg/xbill/DNS/EDNSOption;
    :sswitch_0
    new-instance v2, Lorg/xbill/DNS/NSIDOption;

    invoke-direct {v2}, Lorg/xbill/DNS/NSIDOption;-><init>()V

    .line 130
    .restart local v2    # "option":Lorg/xbill/DNS/EDNSOption;
    goto :goto_0

    .line 132
    .end local v2    # "option":Lorg/xbill/DNS/EDNSOption;
    :sswitch_1
    new-instance v2, Lorg/xbill/DNS/ClientSubnetOption;

    invoke-direct {v2}, Lorg/xbill/DNS/ClientSubnetOption;-><init>()V

    .line 133
    .restart local v2    # "option":Lorg/xbill/DNS/EDNSOption;
    goto :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 193
    if-eqz p1, :cond_0

    instance-of v2, p1, Lorg/xbill/DNS/EDNSOption;

    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 195
    check-cast v0, Lorg/xbill/DNS/EDNSOption;

    .line 196
    .local v0, "opt":Lorg/xbill/DNS/EDNSOption;
    iget v2, p0, Lorg/xbill/DNS/EDNSOption;->code:I

    iget v3, v0, Lorg/xbill/DNS/EDNSOption;->code:I

    if-ne v2, v3, :cond_0

    .line 198
    invoke-virtual {p0}, Lorg/xbill/DNS/EDNSOption;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/xbill/DNS/EDNSOption;->getData()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0
.end method

.method getData()[B
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 99
    .local v0, "out":Lorg/xbill/DNS/DNSOutput;
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/EDNSOption;->optionToWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 100
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/xbill/DNS/EDNSOption;->getData()[B

    move-result-object v0

    .line 207
    .local v0, "array":[B
    const/4 v1, 0x0

    .line 208
    .local v1, "hashval":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 209
    shl-int/lit8 v3, v1, 0x3

    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return v1
.end method

.method abstract optionFromWire(Lorg/xbill/DNS/DNSInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract optionToString()Ljava/lang/String;
.end method

.method abstract optionToWire(Lorg/xbill/DNS/DNSOutput;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    iget v1, p0, Lorg/xbill/DNS/EDNSOption;->code:I

    invoke-static {v1}, Lorg/xbill/DNS/EDNSOption$Code;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    invoke-virtual {p0}, Lorg/xbill/DNS/EDNSOption;->optionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method toWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 3
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;

    .prologue
    .line 167
    iget v2, p0, Lorg/xbill/DNS/EDNSOption;->code:I

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 168
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v1

    .line 169
    .local v1, "lengthPosition":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 170
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/EDNSOption;->optionToWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 171
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v0, v2, -0x2

    .line 172
    .local v0, "length":I
    invoke-virtual {p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16At(II)V

    .line 173
    return-void
.end method
