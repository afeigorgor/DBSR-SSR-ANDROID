.class public final Lscala/io/Codec$$anonfun$1;
.super Lscala/runtime/AbstractFunction1;
.source "Codec.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/io/Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/nio/charset/CharacterCodingException;",
        "Lscala/runtime/Nothing$;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lscala/io/Codec;)V
    .locals 0
    .param p1, "$outer"    # Lscala/io/Codec;

    .prologue
    .line 40
    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "v1"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Ljava/nio/charset/CharacterCodingException;

    .end local p1    # "v1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lscala/io/Codec$$anonfun$1;->apply(Ljava/nio/charset/CharacterCodingException;)Lscala/runtime/Nothing$;

    move-result-object v0

    throw v0
.end method

.method public final apply(Ljava/nio/charset/CharacterCodingException;)Lscala/runtime/Nothing$;
    .locals 0
    .param p1, "e"    # Ljava/nio/charset/CharacterCodingException;

    .prologue
    .line 40
    throw p1
.end method
