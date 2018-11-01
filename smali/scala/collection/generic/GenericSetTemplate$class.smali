.class public abstract Lscala/collection/generic/GenericSetTemplate$class;
.super Ljava/lang/Object;
.source "GenericSetTemplate.scala"


# direct methods
.method public static $init$(Lscala/collection/generic/GenericSetTemplate;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/generic/GenericSetTemplate;

    .prologue
    .line 16
    return-void
.end method

.method public static empty(Lscala/collection/generic/GenericSetTemplate;)Lscala/collection/GenSet;
    .locals 1
    .param p0, "$this"    # Lscala/collection/generic/GenericSetTemplate;

    .prologue
    .line 17
    invoke-interface {p0}, Lscala/collection/generic/GenericSetTemplate;->companion()Lscala/collection/generic/GenericCompanion;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/generic/GenericCompanion;->empty()Lscala/collection/GenTraversable;

    move-result-object v0

    check-cast v0, Lscala/collection/GenSet;

    return-object v0
.end method
