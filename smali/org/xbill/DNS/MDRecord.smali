.class public Lorg/xbill/DNS/MDRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "MDRecord.java"


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
    invoke-virtual {p0}, Lorg/xbill/DNS/MDRecord;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/xbill/DNS/MDRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/MDRecord;-><init>()V

    return-object v0
.end method
