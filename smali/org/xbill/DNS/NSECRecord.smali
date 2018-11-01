.class public Lorg/xbill/DNS/NSECRecord;
.super Lorg/xbill/DNS/Record;
.source "NSECRecord.java"


# instance fields
.field private next:Lorg/xbill/DNS/Name;

.field private types:Lorg/xbill/DNS/TypeBitmap;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/xbill/DNS/NSECRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NSECRecord;-><init>()V

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
    .line 50
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/NSECRecord;->next:Lorg/xbill/DNS/Name;

    .line 51
    new-instance v0, Lorg/xbill/DNS/TypeBitmap;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/TypeBitmap;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/TypeBitmap;

    .line 52
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/xbill/DNS/NSECRecord;->next:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 73
    iget-object v1, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v1}, Lorg/xbill/DNS/TypeBitmap;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 75
    iget-object v1, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v1}, Lorg/xbill/DNS/TypeBitmap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lorg/xbill/DNS/NSECRecord;->next:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 58
    iget-object v0, p0, Lorg/xbill/DNS/NSECRecord;->types:Lorg/xbill/DNS/TypeBitmap;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/TypeBitmap;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 59
    return-void
.end method
