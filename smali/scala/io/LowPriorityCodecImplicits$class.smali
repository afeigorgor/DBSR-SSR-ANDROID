.class public abstract Lscala/io/LowPriorityCodecImplicits$class;
.super Ljava/lang/Object;
.source "Codec.scala"


# direct methods
.method public static $init$(Lscala/io/Codec$;)V
    .locals 0
    .param p0, "$this"    # Lscala/io/Codec$;

    .prologue
    .line 72
    return-void
.end method

.method public static fallbackSystemCodec(Lscala/io/Codec$;)Lscala/io/Codec;
    .locals 1
    .param p0, "$this"    # Lscala/io/Codec$;

    .prologue
    .line 76
    invoke-virtual {p0}, Lscala/io/Codec$;->defaultCharsetCodec()Lscala/io/Codec;

    move-result-object v0

    return-object v0
.end method
