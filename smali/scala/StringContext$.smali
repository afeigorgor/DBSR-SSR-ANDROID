.class public final Lscala/StringContext$;
.super Ljava/lang/Object;
.source "StringContext.scala"

# interfaces
.implements Lscala/Serializable;


# static fields
.field public static final MODULE$:Lscala/StringContext$;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/StringContext$;

    invoke-direct {v0}, Lscala/StringContext$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/StringContext$;->MODULE$:Lscala/StringContext$;

    return-void
.end method

.method private final loop$1(IILjava/lang/String;ZILjava/lang/StringBuilder;)Ljava/lang/String;
    .locals 7
    .param p1, "i"    # I
    .param p2, "next"    # I
    .param p3, "str$1"    # Ljava/lang/String;
    .param p4, "strict$1"    # Z
    .param p5, "len$1"    # I
    .param p6, "b$1"    # Ljava/lang/StringBuilder;

    .prologue
    .line 207
    :goto_0
    if-ltz p2, :cond_5

    .line 209
    if-le p2, p1, :cond_0

    invoke-virtual {p6, p3, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 210
    :goto_1
    add-int/lit8 v1, p2, 0x1

    .line 211
    .local v1, "idx":I
    if-lt v1, p5, :cond_1

    new-instance v4, Lscala/StringContext$InvalidEscapeException;

    invoke-direct {v4, p3, p2}, Lscala/StringContext$InvalidEscapeException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 209
    .end local v1    # "idx":I
    :cond_0
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 211
    .restart local v1    # "idx":I
    :cond_1
    sget-object v4, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    .line 212
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v4, p3, v1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 221
    const/16 v5, 0x30

    if-gt v5, v4, :cond_4

    const/16 v5, 0x37

    if-gt v4, v5, :cond_4

    .line 222
    if-eqz p4, :cond_2

    new-instance v4, Lscala/StringContext$InvalidEscapeException;

    invoke-direct {v4, p3, p2}, Lscala/StringContext$InvalidEscapeException;-><init>(Ljava/lang/String;I)V

    throw v4

    :cond_2
    sget-object v4, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    .line 223
    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v4, p3, v1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v2

    .line 224
    .local v2, "leadch":C
    add-int/lit8 v3, v2, -0x30

    .line 225
    .local v3, "oct":I
    add-int/lit8 v1, v1, 0x1

    .line 226
    if-ge v1, p5, :cond_3

    const/16 v4, 0x30

    sget-object v5, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v5, p3, v1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v5

    if-gt v4, v5, :cond_3

    sget-object v4, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v4, p3, v1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x37

    if-gt v4, v5, :cond_3

    .line 227
    mul-int/lit8 v4, v3, 0x8

    sget-object v5, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v5, p3, v1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x30

    .line 228
    add-int/lit8 v1, v1, 0x1

    .line 229
    if-ge v1, p5, :cond_3

    const/16 v4, 0x33

    if-gt v2, v4, :cond_3

    const/16 v4, 0x30

    sget-object v5, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v5, p3, v1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v5

    if-gt v4, v5, :cond_3

    sget-object v4, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v5, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v4, p3, v1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x37

    if-gt v4, v5, :cond_3

    .line 230
    mul-int/lit8 v4, v3, 0x8

    sget-object v5, Lscala/collection/immutable/StringOps$;->MODULE$:Lscala/collection/immutable/StringOps$;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v5, p3, v1}, Lscala/collection/immutable/StringOps$;->apply$extension(Ljava/lang/String;I)C

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v4, -0x30

    .line 231
    add-int/lit8 v1, v1, 0x1

    .line 234
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 235
    int-to-char v0, v3

    .line 238
    .end local v2    # "leadch":C
    .end local v3    # "oct":I
    .local v0, "c":C
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 239
    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    const/16 v4, 0x5c

    invoke-virtual {p3, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    move p1, v1

    goto/16 :goto_0

    .line 236
    .end local v0    # "c":C
    :cond_4
    new-instance v4, Lscala/StringContext$InvalidEscapeException;

    invoke-direct {v4, p3, p2}, Lscala/StringContext$InvalidEscapeException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 220
    :sswitch_0
    const/16 v0, 0x5c

    goto :goto_2

    .line 219
    :sswitch_1
    const/16 v0, 0x27

    goto :goto_2

    .line 218
    :sswitch_2
    const/16 v0, 0x22

    goto :goto_2

    .line 217
    :sswitch_3
    const/16 v0, 0xd

    goto :goto_2

    .line 216
    :sswitch_4
    const/16 v0, 0xc

    goto :goto_2

    .line 215
    :sswitch_5
    const/16 v0, 0xa

    goto :goto_2

    .line 214
    :sswitch_6
    const/16 v0, 0x9

    goto :goto_2

    .line 213
    :sswitch_7
    const/16 v0, 0x8

    goto :goto_2

    .line 242
    .end local v1    # "idx":I
    :cond_5
    if-ge p1, p5, :cond_6

    invoke-virtual {p6, p3, p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 243
    :goto_3
    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 206
    return-object v4

    .line 242
    :cond_6
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_3

    .line 212
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x5c -> :sswitch_0
        0x62 -> :sswitch_7
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x72 -> :sswitch_3
        0x74 -> :sswitch_6
    .end sparse-switch
.end method

.method private final replace$1(ILjava/lang/String;ZI)Ljava/lang/String;
    .locals 7
    .param p1, "first"    # I
    .param p2, "str$1"    # Ljava/lang/String;
    .param p3, "strict$1"    # Z
    .param p4, "len$1"    # I

    .prologue
    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v6, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lscala/StringContext$;->loop$1(IILjava/lang/String;ZILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private treatEscapes0(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "strict"    # Z

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 248
    .local v0, "len":I
    const/16 v1, 0x5c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 250
    invoke-direct {p0, v1, p1, p2, v0}, Lscala/StringContext$;->replace$1(ILjava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 200
    .end local p1    # "str":Ljava/lang/String;
    :pswitch_0
    return-object p1

    .line 248
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public treatEscapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lscala/StringContext$;->treatEscapes0(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
