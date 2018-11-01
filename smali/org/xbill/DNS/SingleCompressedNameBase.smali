.class abstract Lorg/xbill/DNS/SingleCompressedNameBase;
.super Lorg/xbill/DNS/SingleNameBase;
.source "SingleCompressedNameBase.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/xbill/DNS/SingleNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V
    .locals 1
    .param p1, "out"    # Lorg/xbill/DNS/DNSOutput;
    .param p2, "c"    # Lorg/xbill/DNS/Compression;
    .param p3, "canonical"    # Z

    .prologue
    .line 28
    iget-object v0, p0, Lorg/xbill/DNS/SingleCompressedNameBase;->singleName:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xbill/DNS/Name;->toWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 29
    return-void
.end method
