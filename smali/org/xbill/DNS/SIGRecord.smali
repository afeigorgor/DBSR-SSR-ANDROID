.class public Lorg/xbill/DNS/SIGRecord;
.super Lorg/xbill/DNS/SIGBase;
.source "SIGRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/xbill/DNS/SIGBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lorg/xbill/DNS/SIGRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/SIGRecord;-><init>()V

    return-object v0
.end method
