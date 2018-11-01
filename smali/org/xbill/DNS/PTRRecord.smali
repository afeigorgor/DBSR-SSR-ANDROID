.class public Lorg/xbill/DNS/PTRRecord;
.super Lorg/xbill/DNS/SingleCompressedNameBase;
.source "PTRRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xbill/DNS/SingleCompressedNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/xbill/DNS/PTRRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/PTRRecord;-><init>()V

    return-object v0
.end method
