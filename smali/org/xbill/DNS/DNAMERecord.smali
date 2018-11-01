.class public Lorg/xbill/DNS/DNAMERecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "DNAMERecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/SingleNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/xbill/DNS/DNAMERecord;

    invoke-direct {v0}, Lorg/xbill/DNS/DNAMERecord;-><init>()V

    return-object v0
.end method

.method public getTarget()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/xbill/DNS/DNAMERecord;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method
