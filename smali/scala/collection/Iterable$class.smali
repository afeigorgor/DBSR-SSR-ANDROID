.class public abstract Lscala/collection/Iterable$class;
.super Ljava/lang/Object;
.source "Iterable.scala"


# direct methods
.method public static $init$(Lscala/collection/Iterable;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/Iterable;

    .prologue
    .line 20
    return-void
.end method

.method public static companion(Lscala/collection/Iterable;)Lscala/collection/generic/GenericCompanion;
    .locals 1
    .param p0, "$this"    # Lscala/collection/Iterable;

    .prologue
    .line 24
    sget-object v0, Lscala/collection/Iterable$;->MODULE$:Lscala/collection/Iterable$;

    return-object v0
.end method

.method public static seq(Lscala/collection/Iterable;)Lscala/collection/Iterable;
    .locals 0
    .param p0, "$this"    # Lscala/collection/Iterable;

    .prologue
    .line 26
    return-object p0
.end method
