.class public Lorg/xbill/DNS/DNSKEYRecord;
.super Lorg/xbill/DNS/KEYBase;
.source "DNSKEYRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/xbill/DNS/KEYBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSKEYRecord;-><init>()V

    return-object v0
.end method
