.class public abstract Lscala/collection/generic/GenericTraversableTemplate$class;
.super Ljava/lang/Object;
.source "GenericTraversableTemplate.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/GenericTraversableTemplate;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/generic/GenericTraversableTemplate;

    .prologue
    .line 30
    return-void
.end method

.method public static genericBuilder(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/GenericTraversableTemplate;

    .prologue
    .line 70
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->companion()Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/generic/GenericCompanion;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lscala/collection/generic/GenericTraversableTemplate;)Lscala/collection/mutable/Builder;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/GenericTraversableTemplate;

    .prologue
    .line 65
    invoke-interface {p0}, Lscala/collection/generic/GenericTraversableTemplate;->companion()Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/generic/GenericCompanion;->newBuilder()Lscala/collection/mutable/Builder;

    move-result-object v0

    return-object v0
.end method
