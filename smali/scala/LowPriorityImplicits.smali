.class public abstract Lscala/LowPriorityImplicits;
.super Ljava/lang/Object;
.source "Predef.scala"


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fallbackStringCanBuildFrom()Lscala/collection/generic/CanBuildFrom;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lscala/collection/generic/CanBuildFrom",
            "<",
            "Ljava/lang/String;",
            "TT;",
            "Lscala/collection/immutable/IndexedSeq",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Lscala/LowPriorityImplicits$$anon$4;

    invoke-direct {v0, p0}, Lscala/LowPriorityImplicits$$anon$4;-><init>(Lscala/LowPriorityImplicits;)V

    return-object v0
.end method

.method public floatWrapper(F)F
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 480
    return p1
.end method

.method public genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .param p1, "xs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 485
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 486
    :cond_0
    sget-object v0, Lscala/collection/mutable/WrappedArray$;->MODULE$:Lscala/collection/mutable/WrappedArray$;

    invoke-virtual {v0, p1}, Lscala/collection/mutable/WrappedArray$;->make(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public intWrapper(I)I
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 477
    return p1
.end method

.method public unwrapString(Lscala/collection/immutable/WrappedString;)Ljava/lang/String;
    .locals 1
    .param p1, "ws"    # Lscala/collection/immutable/WrappedString;

    .prologue
    .line 508
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lscala/collection/immutable/WrappedString;->self()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wrapRefArray([Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;
    .locals 1
    .param p1, "xs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lscala/collection/mutable/WrappedArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 492
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 493
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    sget-object v0, Lscala/collection/mutable/WrappedArray$;->MODULE$:Lscala/collection/mutable/WrappedArray$;

    invoke-virtual {v0}, Lscala/collection/mutable/WrappedArray$;->empty()Lscala/collection/mutable/WrappedArray;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_1
    new-instance v0, Lscala/collection/mutable/WrappedArray$ofRef;

    invoke-direct {v0, p1}, Lscala/collection/mutable/WrappedArray$ofRef;-><init>([Ljava/lang/Object;)V

    goto :goto_0
.end method
