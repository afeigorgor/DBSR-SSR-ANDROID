.class public Lorg/xbill/DNS/MFRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "MFRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xbill/DNS/SingleNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lorg/xbill/DNS/MFRecord;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/xbill/DNS/MFRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/MFRecord;-><init>()V

    return-object v0
.end method
