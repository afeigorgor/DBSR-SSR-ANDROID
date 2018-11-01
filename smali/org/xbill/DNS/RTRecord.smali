.class public Lorg/xbill/DNS/RTRecord;
.super Lorg/xbill/DNS/U16NameBase;
.source "RTRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/U16NameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/xbill/DNS/RTRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/RTRecord;-><init>()V

    return-object v0
.end method
