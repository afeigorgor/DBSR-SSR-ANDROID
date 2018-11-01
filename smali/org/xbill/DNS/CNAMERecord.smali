.class public Lorg/xbill/DNS/CNAMERecord;
.super Lorg/xbill/DNS/SingleCompressedNameBase;
.source "CNAMERecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/SingleCompressedNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/xbill/DNS/CNAMERecord;

    invoke-direct {v0}, Lorg/xbill/DNS/CNAMERecord;-><init>()V

    return-object v0
.end method

.method public getTarget()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/xbill/DNS/CNAMERecord;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method
