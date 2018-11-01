.class public Lorg/xbill/DNS/MRRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "MRRecord.java"


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
    new-instance v0, Lorg/xbill/DNS/MRRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/MRRecord;-><init>()V

    return-object v0
.end method
