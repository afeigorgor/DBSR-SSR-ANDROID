.class abstract Lorg/xbill/DNS/SingleNameBase;
.super Lorg/xbill/DNS/Record;
.source "SingleNameBase.java"


# instance fields
.field protected singleName:Lorg/xbill/DNS/Name;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/xbill/DNS/Record;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSingleName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/xbill/DNS/SingleNameBase;->singleName:Lorg/xbill/DNS/Name;

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
    .line 38
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/DNSInput;)V

    iput-object v0, p0, Lorg/xbill/DNS/SingleNameBase;->singleName:Lorg/xbill/DNS/Name;

    .line 39
    return-void
.end method

.method rrToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/xbill/DNS/SingleNameBase;->singleName:Lorg/xbill/DNS/Name;

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 2
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 58
    iget-object v0, p0, Lorg/xbill/DNS/SingleNameBase;->singleName:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 59
    return-void
.end method
