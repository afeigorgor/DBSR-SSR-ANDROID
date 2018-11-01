.class public Lorg/xbill/DNS/MGRecord;
.super Lorg/xbill/DNS/SingleNameBase;
.source "MGRecord.java"


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
    new-instance v0, Lorg/xbill/DNS/MGRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/MGRecord;-><init>()V

    return-object v0
.end method
