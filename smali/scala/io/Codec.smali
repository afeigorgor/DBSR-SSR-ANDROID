.class public Lscala/io/Codec;
.super Ljava/lang/Object;
.source "Codec.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private _decodingReplacement:Ljava/lang/String;

.field private _encodingReplacement:[B

.field private _onCodingException:Lscala/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/Function1",
            "<",
            "Ljava/nio/charset/CharacterCodingException;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _onMalformedInput:Ljava/nio/charset/CodingErrorAction;

.field private _onUnmappableCharacter:Ljava/nio/charset/CodingErrorAction;

.field private final charSet:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charSet"    # Ljava/nio/charset/Charset;

    .prologue
    const/4 v0, 0x0

    .line 30
    iput-object p1, p0, Lscala/io/Codec;->charSet:Ljava/nio/charset/Charset;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v0, p0, Lscala/io/Codec;->_onMalformedInput:Ljava/nio/charset/CodingErrorAction;

    .line 37
    iput-object v0, p0, Lscala/io/Codec;->_onUnmappableCharacter:Ljava/nio/charset/CodingErrorAction;

    .line 38
    iput-object v0, p0, Lscala/io/Codec;->_encodingReplacement:[B

    .line 39
    iput-object v0, p0, Lscala/io/Codec;->_decodingReplacement:Ljava/lang/String;

    .line 40
    new-instance v0, Lscala/io/Codec$$anonfun$1;

    invoke-direct {v0, p0}, Lscala/io/Codec$$anonfun$1;-><init>(Lscala/io/Codec;)V

    iput-object v0, p0, Lscala/io/Codec;->_onCodingException:Lscala/Function1;

    return-void
.end method


# virtual methods
.method public charSet()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lscala/io/Codec;->charSet:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public decoder()Ljava/nio/charset/CharsetDecoder;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lscala/io/Codec;->charSet()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 62
    .local v0, "dec":Ljava/nio/charset/CharsetDecoder;
    iget-object v1, p0, Lscala/io/Codec;->_onMalformedInput:Ljava/nio/charset/CodingErrorAction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lscala/io/Codec;->_onMalformedInput:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 63
    :goto_0
    iget-object v1, p0, Lscala/io/Codec;->_onUnmappableCharacter:Ljava/nio/charset/CodingErrorAction;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lscala/io/Codec;->_onUnmappableCharacter:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 64
    :goto_1
    iget-object v1, p0, Lscala/io/Codec;->_decodingReplacement:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lscala/io/Codec;->_decodingReplacement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    .line 65
    :goto_2
    return-object v0

    .line 62
    :cond_0
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_0

    .line 63
    :cond_1
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_1

    .line 64
    :cond_2
    sget-object v1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_2
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lscala/io/Codec;->charSet()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lscala/io/Codec;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wrap(Lscala/Function0;)I
    .locals 2
    .param p1, "body"    # Lscala/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function0",
            "<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-interface {p1}, Lscala/Function0;->apply$mcI$sp()I
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lscala/io/Codec;->_onCodingException:Lscala/Function1;

    invoke-interface {v1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method
