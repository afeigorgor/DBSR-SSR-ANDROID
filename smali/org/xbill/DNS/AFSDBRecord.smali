.class public Lorg/xbill/DNS/AFSDBRecord;
.super Lorg/xbill/DNS/U16NameBase;
.source "AFSDBRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/xbill/DNS/U16NameBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lorg/xbill/DNS/AFSDBRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/AFSDBRecord;-><init>()V

    return-object v0
.end method
