.class public final Lorg/xbill/DNS/Type;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Type$TypeMnemonic;
    }
.end annotation


# static fields
.field private static types:Lorg/xbill/DNS/Type$TypeMnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 229
    new-instance v0, Lorg/xbill/DNS/Type$TypeMnemonic;

    invoke-direct {v0}, Lorg/xbill/DNS/Type$TypeMnemonic;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 232
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x1

    const-string v2, "A"

    new-instance v3, Lorg/xbill/DNS/ARecord;

    invoke-direct {v3}, Lorg/xbill/DNS/ARecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 233
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x2

    const-string v2, "NS"

    new-instance v3, Lorg/xbill/DNS/NSRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NSRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 234
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x3

    const-string v2, "MD"

    new-instance v3, Lorg/xbill/DNS/MDRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MDRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 235
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x4

    const-string v2, "MF"

    new-instance v3, Lorg/xbill/DNS/MFRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MFRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 236
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x5

    const-string v2, "CNAME"

    new-instance v3, Lorg/xbill/DNS/CNAMERecord;

    invoke-direct {v3}, Lorg/xbill/DNS/CNAMERecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 237
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x6

    const-string v2, "SOA"

    new-instance v3, Lorg/xbill/DNS/SOARecord;

    invoke-direct {v3}, Lorg/xbill/DNS/SOARecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 238
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/4 v1, 0x7

    const-string v2, "MB"

    new-instance v3, Lorg/xbill/DNS/MBRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MBRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 239
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x8

    const-string v2, "MG"

    new-instance v3, Lorg/xbill/DNS/MGRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MGRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 240
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x9

    const-string v2, "MR"

    new-instance v3, Lorg/xbill/DNS/MRRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MRRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 241
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xa

    const-string v2, "NULL"

    new-instance v3, Lorg/xbill/DNS/NULLRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NULLRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 242
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xb

    const-string v2, "WKS"

    new-instance v3, Lorg/xbill/DNS/WKSRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/WKSRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 243
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xc

    const-string v2, "PTR"

    new-instance v3, Lorg/xbill/DNS/PTRRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/PTRRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 244
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xd

    const-string v2, "HINFO"

    new-instance v3, Lorg/xbill/DNS/HINFORecord;

    invoke-direct {v3}, Lorg/xbill/DNS/HINFORecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 245
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xe

    const-string v2, "MINFO"

    new-instance v3, Lorg/xbill/DNS/MINFORecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MINFORecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 246
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xf

    const-string v2, "MX"

    new-instance v3, Lorg/xbill/DNS/MXRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/MXRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 247
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x10

    const-string v2, "TXT"

    new-instance v3, Lorg/xbill/DNS/TXTRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/TXTRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 248
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x11

    const-string v2, "RP"

    new-instance v3, Lorg/xbill/DNS/RPRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/RPRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 249
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x12

    const-string v2, "AFSDB"

    new-instance v3, Lorg/xbill/DNS/AFSDBRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/AFSDBRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 250
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x13

    const-string v2, "X25"

    new-instance v3, Lorg/xbill/DNS/X25Record;

    invoke-direct {v3}, Lorg/xbill/DNS/X25Record;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 251
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x14

    const-string v2, "ISDN"

    new-instance v3, Lorg/xbill/DNS/ISDNRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/ISDNRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 252
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x15

    const-string v2, "RT"

    new-instance v3, Lorg/xbill/DNS/RTRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/RTRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 253
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x16

    const-string v2, "NSAP"

    new-instance v3, Lorg/xbill/DNS/NSAPRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NSAPRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 254
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x17

    const-string v2, "NSAP-PTR"

    new-instance v3, Lorg/xbill/DNS/NSAP_PTRRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NSAP_PTRRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 255
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x18

    const-string v2, "SIG"

    new-instance v3, Lorg/xbill/DNS/SIGRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/SIGRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 256
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x19

    const-string v2, "KEY"

    new-instance v3, Lorg/xbill/DNS/KEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/KEYRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 257
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1a

    const-string v2, "PX"

    new-instance v3, Lorg/xbill/DNS/PXRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/PXRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 258
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1b

    const-string v2, "GPOS"

    new-instance v3, Lorg/xbill/DNS/GPOSRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/GPOSRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 259
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1c

    const-string v2, "AAAA"

    new-instance v3, Lorg/xbill/DNS/AAAARecord;

    invoke-direct {v3}, Lorg/xbill/DNS/AAAARecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 260
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1d

    const-string v2, "LOC"

    new-instance v3, Lorg/xbill/DNS/LOCRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/LOCRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 261
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1e

    const-string v2, "NXT"

    new-instance v3, Lorg/xbill/DNS/NXTRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NXTRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 262
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x1f

    const-string v2, "EID"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 263
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x20

    const-string v2, "NIMLOC"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 264
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x21

    const-string v2, "SRV"

    new-instance v3, Lorg/xbill/DNS/SRVRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/SRVRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 265
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x22

    const-string v2, "ATMA"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 266
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x23

    const-string v2, "NAPTR"

    new-instance v3, Lorg/xbill/DNS/NAPTRRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NAPTRRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 267
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x24

    const-string v2, "KX"

    new-instance v3, Lorg/xbill/DNS/KXRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/KXRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 268
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x25

    const-string v2, "CERT"

    new-instance v3, Lorg/xbill/DNS/CERTRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/CERTRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 269
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x26

    const-string v2, "A6"

    new-instance v3, Lorg/xbill/DNS/A6Record;

    invoke-direct {v3}, Lorg/xbill/DNS/A6Record;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 270
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x27

    const-string v2, "DNAME"

    new-instance v3, Lorg/xbill/DNS/DNAMERecord;

    invoke-direct {v3}, Lorg/xbill/DNS/DNAMERecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 271
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x29

    const-string v2, "OPT"

    new-instance v3, Lorg/xbill/DNS/OPTRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/OPTRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 272
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2a

    const-string v2, "APL"

    new-instance v3, Lorg/xbill/DNS/APLRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/APLRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 273
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2b

    const-string v2, "DS"

    new-instance v3, Lorg/xbill/DNS/DSRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/DSRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 274
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2c

    const-string v2, "SSHFP"

    new-instance v3, Lorg/xbill/DNS/SSHFPRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/SSHFPRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 275
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2d

    const-string v2, "IPSECKEY"

    new-instance v3, Lorg/xbill/DNS/IPSECKEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/IPSECKEYRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 276
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2e

    const-string v2, "RRSIG"

    new-instance v3, Lorg/xbill/DNS/RRSIGRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/RRSIGRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 277
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x2f

    const-string v2, "NSEC"

    new-instance v3, Lorg/xbill/DNS/NSECRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NSECRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 278
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x30

    const-string v2, "DNSKEY"

    new-instance v3, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSKEYRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 279
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x31

    const-string v2, "DHCID"

    new-instance v3, Lorg/xbill/DNS/DHCIDRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/DHCIDRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 280
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x32

    const-string v2, "NSEC3"

    new-instance v3, Lorg/xbill/DNS/NSEC3Record;

    invoke-direct {v3}, Lorg/xbill/DNS/NSEC3Record;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 281
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x33

    const-string v2, "NSEC3PARAM"

    new-instance v3, Lorg/xbill/DNS/NSEC3PARAMRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/NSEC3PARAMRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 282
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x34

    const-string v2, "TLSA"

    new-instance v3, Lorg/xbill/DNS/TLSARecord;

    invoke-direct {v3}, Lorg/xbill/DNS/TLSARecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 283
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x63

    const-string v2, "SPF"

    new-instance v3, Lorg/xbill/DNS/SPFRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/SPFRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 284
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xf9

    const-string v2, "TKEY"

    new-instance v3, Lorg/xbill/DNS/TKEYRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/TKEYRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 285
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xfa

    const-string v2, "TSIG"

    new-instance v3, Lorg/xbill/DNS/TSIGRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/TSIGRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 286
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xfb

    const-string v2, "IXFR"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 287
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xfc

    const-string v2, "AXFR"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 288
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xfd

    const-string v2, "MAILB"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 289
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xfe

    const-string v2, "MAILA"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 290
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0xff

    const-string v2, "ANY"

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 291
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const/16 v1, 0x100

    const-string v2, "URI"

    new-instance v3, Lorg/xbill/DNS/URIRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/URIRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 292
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    const v1, 0x8001

    const-string v2, "DLV"

    new-instance v3, Lorg/xbill/DNS/DLVRecord;

    invoke-direct {v3}, Lorg/xbill/DNS/DLVRecord;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V

    .line 293
    return-void
.end method

.method public static check(I)V
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 305
    if-ltz p0, :cond_0

    const v0, 0xffff

    if-le p0, v0, :cond_1

    .line 306
    :cond_0
    new-instance v0, Lorg/xbill/DNS/InvalidTypeException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/InvalidTypeException;-><init>(I)V

    throw v0

    .line 307
    :cond_1
    return-void
.end method

.method static getProto(I)Lorg/xbill/DNS/Record;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 346
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Type$TypeMnemonic;->getProto(I)Lorg/xbill/DNS/Record;

    move-result-object v0

    return-object v0
.end method

.method public static isRR(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 352
    sparse-switch p0, :sswitch_data_0

    .line 363
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 361
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 352
    nop

    :sswitch_data_0
    .sparse-switch
        0x29 -> :sswitch_0
        0xf9 -> :sswitch_0
        0xfa -> :sswitch_0
        0xfb -> :sswitch_0
        0xfc -> :sswitch_0
        0xfd -> :sswitch_0
        0xfe -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 317
    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Type$TypeMnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
