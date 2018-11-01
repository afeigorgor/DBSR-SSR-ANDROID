.class public abstract Lscala/collection/mutable/Map$class;
.super Ljava/lang/Object;
.source "Map.scala"


# direct methods
.method public static $init$(Lscala/collection/mutable/Map;)V
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/Map;

    .prologue
    .line 24
    return-void
.end method

.method public static empty(Lscala/collection/mutable/Map;)Lscala/collection/mutable/Map;
    .locals 1
    .param p0, "$this"    # Lscala/collection/mutable/Map;

    .prologue
    .line 29
    sget-object v0, Lscala/collection/mutable/Map$;->MODULE$:Lscala/collection/mutable/Map$;

    invoke-virtual {v0}, Lscala/collection/mutable/Map$;->empty()Lscala/collection/mutable/Map;

    move-result-object v0

    return-object v0
.end method

.method public static seq(Lscala/collection/mutable/Map;)Lscala/collection/mutable/Map;
    .locals 0
    .param p0, "$this"    # Lscala/collection/mutable/Map;

    .prologue
    .line 31
    return-object p0
.end method
