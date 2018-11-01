.class public final Lscala/collection/immutable/StringLike$$anonfun$formatLocal$1;
.super Lscala/runtime/AbstractFunction1;
.source "StringLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/StringLike;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/StringLike;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/StringLike;)V
    .locals 1
    .param p1, "$outer"    # Lscala/collection/immutable/StringLike;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/StringLike",
            "<TRepr;>;)V"
        }
    .end annotation

    .prologue
    .line 335
    if-nez p1, :cond_0

    const/4 v0, 0x0

    throw v0

    :cond_0
    iput-object p1, p0, Lscala/collection/immutable/StringLike$$anonfun$formatLocal$1;->$outer:Lscala/collection/immutable/StringLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 335
    iget-object v0, p0, Lscala/collection/immutable/StringLike$$anonfun$formatLocal$1;->$outer:Lscala/collection/immutable/StringLike;

    invoke-static {v0, p1}, Lscala/collection/immutable/StringLike$class;->scala$collection$immutable$StringLike$$unwrapArg(Lscala/collection/immutable/StringLike;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
