.class public Lorg/xbill/DNS/SPFRecord;
.super Lorg/xbill/DNS/TXTBase;
.source "SPFRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/xbill/DNS/TXTBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lorg/xbill/DNS/SPFRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SPFRecord;-><init>()V

    return-object v0
.end method
