.class public Lscala/util/Random;
.super Ljava/lang/Object;
.source "Random.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# instance fields
.field private final self:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lscala/util/Random;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 0
    .param p1, "self"    # Ljava/util/Random;

    .prologue
    .line 21
    iput-object p1, p0, Lscala/util/Random;->self:Ljava/util/Random;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextInt(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 66
    invoke-virtual {p0}, Lscala/util/Random;->self()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public final scala$util$Random$$swap$1(IILscala/collection/mutable/ArrayBuffer;)V
    .locals 2
    .param p1, "i1"    # I
    .param p2, "i2"    # I
    .param p3, "buf$1"    # Lscala/collection/mutable/ArrayBuffer;

    .prologue
    .line 111
    invoke-virtual {p3, p1}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v0

    .line 112
    .local v0, "tmp":Ljava/lang/Object;
    invoke-virtual {p3, p2}, Lscala/collection/mutable/ArrayBuffer;->apply(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Lscala/collection/mutable/ArrayBuffer;->update(ILjava/lang/Object;)V

    .line 113
    invoke-virtual {p3, p2, v0}, Lscala/collection/mutable/ArrayBuffer;->update(ILjava/lang/Object;)V

    return-void
.end method

.method public self()Ljava/util/Random;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lscala/util/Random;->self:Ljava/util/Random;

    return-object v0
.end method

.method public shuffle(Lscala/collection/TraversableOnce;Lscala/collection/generic/CanBuildFrom;)Lscala/collection/TraversableOnce;
    .locals 7
    .param p1, "xs"    # Lscala/collection/TraversableOnce;
    .param p2, "bf"    # Lscala/collection/generic/CanBuildFrom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "CC::",
            "Lscala/collection/TraversableOnce",
            "<",
            "Ljava/lang/Object;",
            ">;>(TCC;",
            "Lscala/collection/generic/CanBuildFrom",
            "<TCC;TT;TCC;>;)TCC;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v3, Lscala/collection/mutable/ArrayBuffer;

    invoke-direct {v3}, Lscala/collection/mutable/ArrayBuffer;-><init>()V

    invoke-virtual {v3, p1}, Lscala/collection/mutable/ArrayBuffer;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/ArrayBuffer;

    move-result-object v0

    .line 116
    .local v0, "buf":Lscala/collection/mutable/ArrayBuffer;
    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-virtual {v0}, Lscala/collection/mutable/ArrayBuffer;->length()I

    move-result v3

    sget-object v4, Lscala/collection/immutable/Range$;->MODULE$:Lscala/collection/immutable/Range$;

    new-instance v4, Lscala/collection/immutable/Range$Inclusive;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v4, v3, v5, v6}, Lscala/collection/immutable/Range$Inclusive;-><init>(III)V

    const/4 v3, -0x1

    invoke-virtual {v4, v3}, Lscala/collection/immutable/Range$Inclusive;->by(I)Lscala/collection/immutable/Range;

    move-result-object v3

    invoke-virtual {v3}, Lscala/collection/immutable/Range;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lscala/collection/immutable/Range;->start()I

    move-result v1

    .local v1, "i1":I
    :goto_0
    invoke-virtual {p0, v1}, Lscala/util/Random;->nextInt(I)I

    move-result v2

    .local v2, "k1":I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4, v2, v0}, Lscala/util/Random;->scala$util$Random$$swap$1(IILscala/collection/mutable/ArrayBuffer;)V

    invoke-virtual {v3}, Lscala/collection/immutable/Range;->lastElement()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 121
    .end local v1    # "i1":I
    .end local v2    # "k1":I
    :cond_0
    invoke-interface {p2, p1}, Lscala/collection/generic/CanBuildFrom;->apply(Ljava/lang/Object;)Lscala/collection/mutable/Builder;

    move-result-object v3

    invoke-interface {v3, v0}, Lscala/collection/mutable/Builder;->$plus$plus$eq(Lscala/collection/TraversableOnce;)Lscala/collection/generic/Growable;

    move-result-object v3

    check-cast v3, Lscala/collection/mutable/Builder;

    invoke-interface {v3}, Lscala/collection/mutable/Builder;->result()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscala/collection/TraversableOnce;

    return-object v3

    .line 116
    .restart local v1    # "i1":I
    .restart local v2    # "k1":I
    :cond_1
    invoke-virtual {v3}, Lscala/collection/immutable/Range;->step()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0
.end method
