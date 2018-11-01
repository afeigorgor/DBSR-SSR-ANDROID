.class public Lorg/xbill/DNS/NSRecord;
.super Lorg/xbill/DNS/SingleCompressedNameBase;
.source "NSRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/SingleCompressedNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lorg/xbill/DNS/NSRecord;->getSingleName()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/xbill/DNS/NSRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NSRecord;-><init>()V

    return-object v0
.end method
