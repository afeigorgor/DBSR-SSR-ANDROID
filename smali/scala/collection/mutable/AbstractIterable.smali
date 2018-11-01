.class public abstract Lscala/collection/mutable/AbstractIterable;
.super Lscala/collection/AbstractIterable;
.source "Iterable.scala"

# interfaces
.implements Lscala/collection/mutable/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/AbstractIterable",
        "<TA;>;",
        "Lscala/collection/mutable/Iterable",
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
    .line 41
    invoke-direct {p0}, Lscala/collection/AbstractIterable;-><init>()V

    invoke-static {p0}, Lscala/collection/mutable/Traversable$class;->$init$(Lscala/collection/mutable/Traversable;)V

    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->$init$(Lscala/collection/mutable/Iterable;)V

    return-void
.end method


# virtual methods
.method public companion()Lscala/collection/generic/GenericCompanion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/generic/GenericCompanion",
            "<",
            "Lscala/collection/mutable/Iterable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->companion(Lscala/collection/mutable/Iterable;)Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Iterable;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->seq()Lscala/collection/mutable/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->seq()Lscala/collection/mutable/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic seq()Lscala/collection/TraversableOnce;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->seq()Lscala/collection/mutable/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public seq()Lscala/collection/mutable/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/mutable/Iterable",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lscala/collection/mutable/Iterable$class;->seq(Lscala/collection/mutable/Iterable;)Lscala/collection/mutable/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic thisCollection()Lscala/collection/Traversable;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lscala/collection/mutable/AbstractIterable;->thisCollection()Lscala/collection/Iterable;

    move-result-object v0

    return-object v0
.end method
