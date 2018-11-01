.class public Lorg/xbill/DNS/GenericEDNSOption;
.super Lorg/xbill/DNS/EDNSOption;
.source "GenericEDNSOption.java"


# instance fields
.field private data:[B


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    .line 20
    return-void
.end method


# virtual methods
.method optionFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 1
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/GenericEDNSOption;->data:[B

    .line 35
    return-void
.end method

.method optionToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/GenericEDNSOption;->data:[B

    invoke-static {v1}, Lorg/xbill/DNS/utils/base16;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method optionToWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/xbill/DNS/GenericEDNSOption;->data:[B

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 40
    return-void
.end method
