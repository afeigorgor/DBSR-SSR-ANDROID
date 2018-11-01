.class public Lorg/xbill/DNS/KXRecord;
.super Lorg/xbill/DNS/U16NameBase;
.source "KXRecord.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/xbill/DNS/U16NameBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdditionalName()Lorg/xbill/DNS/Name;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/xbill/DNS/KXRecord;->getNameField()Lorg/xbill/DNS/Name;

    move-result-object v0

    return-object v0
.end method

.method getObject()Lorg/xbill/DNS/Record;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/xbill/DNS/KXRecord;

    invoke-direct {v0}, Lorg/xbill/DNS/KXRecord;-><init>()V

    return-object v0
.end method
