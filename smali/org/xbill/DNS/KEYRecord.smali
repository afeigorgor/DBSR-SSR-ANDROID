.class public Lorg/xbill/DNS/KEYRecord;
.super Lorg/xbill/DNS/KEYBase;
.source "KEYRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lorg/xbill/DNS/KEYBase;-><init>()V

    return-void
.end method


# virtual methods
.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    return-object v0
.end method
