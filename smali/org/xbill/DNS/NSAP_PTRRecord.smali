.class public Lorg/xbill/DNS/NSAP_PTRRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "NSAP_PTRRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/xbill/DNS/SingleNameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lorg/xbill/DNS/NSAP_PTRRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/NSAP_PTRRecord;-><init>()V

    return-object v0
.end method
