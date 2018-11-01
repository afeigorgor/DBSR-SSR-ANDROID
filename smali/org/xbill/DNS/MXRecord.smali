.class public Lorg/xbill/DNS/MXRecord;
.super Lorg/xbill/DNS/U16NameBase;
.source "MXRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/U16NameBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/xbill/DNS/MXRecord;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/xbill/DNS/MXRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/MXRecord;-><init>()V

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 48
    iget v0, p0, Lorg/xbill/DNS/MXRecord;->u16Field:I

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 49
    iget-object v0, p0, Lorg/xbill/DNS/MXRecord;->nameField:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 50
    return-void
.end method
