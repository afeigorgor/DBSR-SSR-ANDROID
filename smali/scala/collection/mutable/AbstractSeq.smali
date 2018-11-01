.class public abstract Lscala/collection/mutable/AbstractSeq;
.super Lscala/collection/AbstractSeq;
.source "Seq.scala"

# interfaces
.implements Lscala/collection/mutable/Seq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractSeq",
        "<TA;>;",
        "Lscala/collection/mutable/Seq",
        "<TA;>;"
    }
.end annotation

.annotation runtime Lscala/reflect/ScalaSignature;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lscala/collection/AbstractSeq;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/Traversable$class;->$init$(Lscala/collection/mutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->$init$(Lscala/collection/mutable/Iterable;)V

    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->$init$(Lscala/collection/mutable/Cloneable;)V

    invoke-static {p0}, Lscala/collection/mutable/SeqLike$class;->$init$(Lscala/collection/mutable/SeqLike;)V

    invoke-static {p0}, Lscala/collection/mutable/Seq$class;->$init$(Lscala/collection/mutable/Seq;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/mutable/Cloneable$class;->clone(Lscala/collection/mutable/Cloneable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion",
            "<",
            "Lscala/collection/mutable/Seq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/mutable/Seq$class;->companion(Lscala/collection/mutable/Seq;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDefinedAt(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lscala/collection/mutable/AbstractSeq;->isDefinedAt(I)Z

    move-result v0

    return v0
.end method

.method public synthetic scala$collection$mutable$Cloneable$$super$clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Seq;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->seq()Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/Seq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Seq",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lscala/collection/mutable/Seq$class;->seq(Lscala/collection/mutable/Seq;)Lscala/collection/mutable/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractSeq;->thisCollection()Lscala/collection/Seq;

    move-result-object v0

    return-object v0
.end method
