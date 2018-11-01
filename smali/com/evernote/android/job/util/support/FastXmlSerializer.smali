.class Lcom/evernote/android/job/util/support/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final ESCAPE_TABLE:[Ljava/lang/String;

.field private static sSpace:Ljava/lang/String;


# instance fields
.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mIndent:Z

.field private mLineStart:Z

.field private mNesting:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string v2, "&quot;"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v2, "&amp;"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    const/16 v1, 0x31

    aput-object v3, v0, v1

    const/16 v1, 0x32

    aput-object v3, v0, v1

    const/16 v1, 0x33

    aput-object v3, v0, v1

    const/16 v1, 0x34

    aput-object v3, v0, v1

    const/16 v1, 0x35

    aput-object v3, v0, v1

    const/16 v1, 0x36

    aput-object v3, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    sput-object v0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 55
    const-string v0, "                                                              "

    sput-object v0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->sSpace:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2000

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    .line 64
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    .line 66
    iput-boolean v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    .line 69
    iput v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    return-void
.end method

.method private append(C)V
    .locals 2
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 74
    .local v0, "pos":I
    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flush()V

    .line 76
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    aput-char p1, v1, v0

    .line 79
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 80
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 122
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 83
    if-le p3, v4, :cond_1

    .line 84
    add-int v0, p2, p3

    .line 85
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_3

    .line 86
    add-int/lit16 v1, p2, 0x2000

    .line 87
    .local v1, "next":I
    if-ge v1, v0, :cond_0

    move v3, v4

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 88
    move p2, v1

    .line 89
    goto :goto_0

    .line 87
    :cond_0
    sub-int v3, v0, p2

    goto :goto_1

    .line 92
    .end local v0    # "end":I
    .end local v1    # "next":I
    :cond_1
    iget v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 93
    .local v2, "pos":I
    add-int v3, v2, p3

    if-le v3, v4, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flush()V

    .line 95
    iget v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 97
    :cond_2
    add-int v3, p2, p3

    iget-object v4, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    invoke-virtual {p1, p2, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 98
    add-int v3, v2, p3

    iput v3, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 99
    .end local v2    # "pos":I
    :cond_3
    return-void
.end method

.method private append([CII)V
    .locals 5
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 102
    if-le p3, v4, :cond_1

    .line 103
    add-int v0, p2, p3

    .line 104
    .local v0, "end":I
    :goto_0
    if-ge p2, v0, :cond_3

    .line 105
    add-int/lit16 v1, p2, 0x2000

    .line 106
    .local v1, "next":I
    if-ge v1, v0, :cond_0

    move v3, v4

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append([CII)V

    .line 107
    move p2, v1

    .line 108
    goto :goto_0

    .line 106
    :cond_0
    sub-int v3, v0, p2

    goto :goto_1

    .line 111
    .end local v0    # "end":I
    .end local v1    # "next":I
    :cond_1
    iget v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 112
    .local v2, "pos":I
    add-int v3, v2, p3

    if-le v3, v4, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flush()V

    .line 114
    iget v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    add-int v3, v2, p3

    iput v3, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 118
    .end local v2    # "pos":I
    :cond_3
    return-void
.end method

.method private appendIndent(I)V
    .locals 2
    .param p1, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    mul-int/lit8 p1, p1, 0x4

    .line 126
    sget-object v0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 127
    sget-object v0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 129
    :cond_0
    sget-object v0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->sSpace:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 130
    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 134
    .local v4, "n":I
    sget-object v7, Lcom/evernote/android/job/util/support/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v7, v7

    int-to-char v5, v7

    .line 135
    .local v5, "ne":C
    sget-object v2, Lcom/evernote/android/job/util/support/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 136
    .local v2, "escapes":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 138
    .local v3, "lastPos":I
    const/4 v6, 0x0

    .local v6, "pos":I
    :goto_0
    if-ge v6, v4, :cond_3

    .line 139
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 140
    .local v0, "c":C
    if-lt v0, v5, :cond_1

    .line 138
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 141
    :cond_1
    aget-object v1, v2, v0

    .line 142
    .local v1, "escape":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 143
    if-ge v3, v6, :cond_2

    sub-int v7, v6, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 144
    :cond_2
    add-int/lit8 v3, v6, 0x1

    .line 145
    invoke-direct {p0, v1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    .end local v0    # "c":C
    .end local v1    # "escape":Ljava/lang/String;
    :cond_3
    if-ge v3, v6, :cond_4

    sub-int v7, v6, v3

    invoke-direct {p0, p1, v3, v7}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;II)V

    .line 148
    :cond_4
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .locals 8
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    sget-object v7, Lcom/evernote/android/job/util/support/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    array-length v7, v7

    int-to-char v5, v7

    .line 152
    .local v5, "ne":C
    sget-object v3, Lcom/evernote/android/job/util/support/FastXmlSerializer;->ESCAPE_TABLE:[Ljava/lang/String;

    .line 153
    .local v3, "escapes":[Ljava/lang/String;
    add-int v1, p2, p3

    .line 154
    .local v1, "end":I
    move v4, p2

    .line 156
    .local v4, "lastPos":I
    move v6, p2

    .local v6, "pos":I
    :goto_0
    if-ge v6, v1, :cond_3

    .line 157
    aget-char v0, p1, v6

    .line 158
    .local v0, "c":C
    if-lt v0, v5, :cond_1

    .line 156
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 159
    :cond_1
    aget-object v2, v3, v0

    .line 160
    .local v2, "escape":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 161
    if-ge v4, v6, :cond_2

    sub-int v7, v6, v4

    invoke-direct {p0, p1, v4, v7}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append([CII)V

    .line 162
    :cond_2
    add-int/lit8 v4, v6, 0x1

    .line 163
    invoke-direct {p0, v2}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_1

    .line 165
    .end local v0    # "c":C
    .end local v2    # "escape":Ljava/lang/String;
    :cond_3
    if-ge v4, v6, :cond_4

    sub-int v7, v6, v4

    invoke-direct {p0, p1, v4, v7}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append([CII)V

    .line 166
    :cond_4
    return-void
.end method

.method private flushBytes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, "position":I
    if-lez v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 234
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 235
    iget-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 170
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    .line 171
    if-eqz p1, :cond_0

    .line 172
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 173
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    .line 175
    :cond_0
    invoke-direct {p0, p2}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 176
    const-string v0, "=\""

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 178
    invoke-direct {p0, p3}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 179
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    .line 181
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flush()V

    .line 201
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 205
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    .line 206
    iget-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 207
    const-string v0, " />\n"

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 220
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    .line 222
    return-object p0

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    if-eqz v0, :cond_1

    .line 210
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->appendIndent(I)V

    .line 212
    :cond_1
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 213
    if-eqz p1, :cond_2

    .line 214
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 215
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    .line 217
    :cond_2
    invoke-direct {p0, p2}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 218
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 241
    iget v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    if-lez v2, :cond_2

    .line 242
    iget-object v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_3

    .line 243
    iget-object v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    iget v3, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    invoke-static {v2, v5, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 244
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 246
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 248
    :cond_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flushBytes()V

    .line 250
    iget-object v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 251
    goto :goto_0

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->flushBytes()V

    .line 256
    iget-object v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 261
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :goto_1
    iput v5, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    .line 263
    :cond_2
    return-void

    .line 258
    :cond_3
    iget-object v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    iget-object v3, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mText:[C

    iget v4, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mPos:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 259
    iget-object v2, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 302
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    .line 304
    return-void

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 315
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 323
    iput-object p1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mOutputStream:Ljava/io/OutputStream;

    .line 330
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 319
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :catch_1
    move-exception v0

    .line 320
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 334
    iput-object p1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mWriter:Ljava/io/Writer;

    .line 335
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 344
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    .line 352
    return-void

    .line 350
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    if-eqz v0, :cond_0

    .line 357
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 359
    :cond_0
    iget-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    if-eqz v0, :cond_1

    .line 360
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->appendIndent(I)V

    .line 362
    :cond_1
    iget v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mNesting:I

    .line 363
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    .line 364
    if-eqz p1, :cond_2

    .line 365
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 366
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(C)V

    .line 368
    :cond_2
    invoke-direct {p0, p2}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    .line 371
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 389
    iget-boolean v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    if-eqz v1, :cond_0

    .line 390
    const-string v1, ">"

    invoke-direct {p0, v1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 391
    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    .line 393
    :cond_0
    invoke-direct {p0, p1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->escapeAndAppendString(Ljava/lang/String;)V

    .line 394
    iget-boolean v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    if-eqz v1, :cond_2

    .line 395
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    .line 397
    :cond_2
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 376
    iget-boolean v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    if-eqz v1, :cond_0

    .line 377
    const-string v1, ">"

    invoke-direct {p0, v1}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->append(Ljava/lang/String;)V

    .line 378
    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mInTag:Z

    .line 380
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/evernote/android/job/util/support/FastXmlSerializer;->escapeAndAppendString([CII)V

    .line 381
    iget-boolean v1, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mIndent:Z

    if-eqz v1, :cond_2

    .line 382
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/evernote/android/job/util/support/FastXmlSerializer;->mLineStart:Z

    .line 384
    :cond_2
    return-object p0
.end method
