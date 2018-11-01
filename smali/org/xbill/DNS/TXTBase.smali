.class abstract Lorg/xbill/DNS/TXTBase;
.super Lorg/xbill/DNS/Record;
.source "TXTBase.java"


# instance fields
.field protected strings:Ljava/util/List;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method rrFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 3
    .param p1, "in"    # Lorg/xbill/DNS/DNSInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/xbill/DNS/TXTBase;->strings:Ljava/util/List;

    .line 55
    :goto_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readCountedString()[B

    move-result-object v0

    .line 57
    .local v0, "b":[B
    iget-object v1, p0, Lorg/xbill/DNS/TXTBase;->strings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    .end local v0    # "b":[B
    :cond_0
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/xbill/DNS/TXTBase;->strings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 84
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    .line 86
    .local v0, "array":[B
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lorg/xbill/DNS/TXTBase;->byteArrayToString([BZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 90
    .end local v0    # "array":[B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 116
    iget-object v2, p0, Lorg/xbill/DNS/TXTBase;->strings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 117
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 119
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeCountedString([B)V

    goto :goto_0

    .line 121
    .end local v0    # "b":[B
    :cond_0
    return-void
.end method
