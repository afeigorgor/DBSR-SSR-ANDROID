.class public abstract Lscala/collection/mutable/Cloneable$class;
.super Ljava/lang/Object;
.source "Cloneable.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/Cloneable;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/Cloneable;

    .prologue
    .line 21
    return-void
.end method

.method public static clone(Lscala/collection/mutable/Cloneable;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/Cloneable;

    .prologue
    .line 22
    invoke-interface {p0}, Lscala/collection/mutable/Cloneable;->scala$collection$mutable$Cloneable$$super$clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
